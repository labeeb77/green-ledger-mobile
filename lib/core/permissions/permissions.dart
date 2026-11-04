/// Effective permission levels from `GET /auth/me` (role template + owner overrides,
/// backend `auth/permissions/permission-matrix.ts`). The server enforces them; the app
/// uses them only to decide what to show.
enum PermissionLevel { allow, approval, view, own }

class Permissions {
  const Permissions(this._levels);

  static const none = Permissions({});

  final Map<String, PermissionLevel> _levels;

  PermissionLevel? levelOf(String key) => _levels[key];

  /// Any level allows reading.
  bool canRead(String key) => _levels.containsKey(key);

  /// Every level but `view` allows writing (`approval` = the entry waits for approval,
  /// `own` = only the user's own records), as `levelGrants` on the server.
  bool canWrite(String key) {
    final level = _levels[key];
    return level != null && level != PermissionLevel.view;
  }

  /// Prices and amounts are hidden from the godown, who has no `sales` access.
  bool get canSeePrices => canRead('sales');
}
