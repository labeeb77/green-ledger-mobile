import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Where the theme choice is kept (secure storage in the app).
abstract interface class ThemeStore {
  Future<String?> readTheme();

  Future<void> writeTheme(String mode);
}

/// The theme switch in More (ux-design section 9): follow the phone, light or dark.
class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit(this._store) : super(ThemeMode.system);

  final ThemeStore _store;

  Future<void> load() async {
    final saved = ThemeMode.values.asNameMap()[await _store.readTheme()];
    if (saved != null && !isClosed) emit(saved);
  }

  Future<void> choose(ThemeMode mode) async {
    emit(mode);
    await _store.writeTheme(mode.name);
  }
}
