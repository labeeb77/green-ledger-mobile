import 'package:flutter/material.dart';

/// Colour tokens from ux-design section 6, the same palette as the admin panel
/// (`frontend/src/index.css`). Status colours always go with a word and an icon.
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.brand,
    required this.brandStrong,
    required this.surface,
    required this.card,
    required this.text,
    required this.muted,
    required this.border,
    required this.due,
    required this.dueBackground,
    required this.paid,
    required this.paidBackground,
    required this.pending,
    required this.pendingBackground,
    required this.cancelled,
  });

  static const light = AppColors(
    brand: Color(0xFF2F7D55), // brand-600
    brandStrong: Color(0xFF1F5138), // brand-800
    surface: Color(0xFFF8FAFC), // slate-50
    card: Color(0xFFFFFFFF),
    text: Color(0xFF0F172A), // slate-900
    muted: Color(0xFF64748B), // slate-500
    border: Color(0xFFE2E8F0), // slate-200
    due: Color(0xFFB91C1C), // red-700
    dueBackground: Color(0xFFFEF2F2), // red-50
    paid: Color(0xFF15803D), // green-700
    paidBackground: Color(0xFFF0FDF4), // green-50
    pending: Color(0xFF92400E), // amber-800
    pendingBackground: Color(0xFFFFFBEB), // amber-50
    cancelled: Color(0xFF64748B),
  );

  static const dark = AppColors(
    brand: Color(0xFF9BD59F), // accent
    brandStrong: Color(0xFFE3F1E8), // brand-100
    surface: Color(0xFF0F2A1C), // brand-950
    card: Color(0xFF173D2A), // brand-900
    text: Color(0xFFF1F5F9), // slate-100
    muted: Color(0xFF94A3B8), // slate-400
    border: Color(0xFF1F5138), // brand-800
    due: Color(0xFFFCA5A5), // red-300
    dueBackground: Color(0xFF450A0A), // red-950
    paid: Color(0xFF86EFAC), // green-300
    paidBackground: Color(0xFF052E16), // green-950
    pending: Color(0xFFFCD34D), // amber-300
    pendingBackground: Color(0xFF451A03), // amber-950
    cancelled: Color(0xFF94A3B8),
  );

  final Color brand;
  final Color brandStrong;
  final Color surface;
  final Color card;
  final Color text;
  final Color muted;
  final Color border;
  final Color due;
  final Color dueBackground;
  final Color paid;
  final Color paidBackground;
  final Color pending;
  final Color pendingBackground;
  final Color cancelled;

  @override
  AppColors copyWith() => this;

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) => t < 0.5 || other is! AppColors ? this : other;
}

extension AppColorsX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
