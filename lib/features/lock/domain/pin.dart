import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

/// The app PIN (ux-design section 9) is 4 digits, kept on this phone only.
const pinLength = 4;

/// Wrong PINs before the app signs out and the full password is needed.
const maxPinAttempts = 5;

/// Time in the background after which the PIN is asked again.
const lockAfter = Duration(minutes: 5);

/// The PIN as stored: a salted hash, never the digits, for one signed-in user.
class StoredPin {
  const StoredPin({required this.userId, required this.salt, required this.hash, this.biometrics = false});

  final String userId;
  final String salt;
  final String hash;

  /// The user chose fingerprint / Face ID as well.
  final bool biometrics;

  StoredPin withBiometrics({required bool on}) => StoredPin(userId: userId, salt: salt, hash: hash, biometrics: on);
}

/// SHA-256 over salt + PIN, repeated, so a copied store isn't read at a glance. (Four
/// digits can't resist a determined attacker; the Keystore/Keychain is the real guard.)
String hashPin(String pin, String salt, {int rounds = 10000}) {
  var digest = sha256.convert(utf8.encode('$salt:$pin')).bytes;
  for (var i = 1; i < rounds; i++) {
    digest = sha256.convert([...digest, ...utf8.encode(salt)]).bytes;
  }
  return base64Encode(digest);
}

String newSalt([Random? random]) {
  final r = random ?? Random.secure();
  return base64Encode(List<int>.generate(16, (_) => r.nextInt(256)));
}

/// Secure storage for the PIN and the count of wrong tries (kept across restarts).
abstract interface class PinStore {
  Future<StoredPin?> read();

  Future<void> write(StoredPin pin);

  Future<int> failedAttempts();

  Future<void> setFailedAttempts(int count);

  /// Forgets the PIN and the count (sign-out, too many wrong PINs).
  Future<void> clear();
}

/// Fingerprint / Face ID.
abstract interface class Biometrics {
  Future<bool> available();

  Future<bool> authenticate();
}
