import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';

/// Spacing on a 4 dp grid (ux-design section 6).
abstract final class Space {
  static const xs = 4.0;
  static const sm = 8.0;
  static const md = 12.0;
  static const lg = 16.0; // screen padding
  static const xl = 24.0;
  static const xxl = 32.0;
}

/// Touch sizes: targets ≥ 48 dp, main buttons 56 dp, numpad keys 64 dp.
abstract final class Touch {
  static const target = 48.0;
  static const mainButton = 56.0;
  static const numpadKey = 64.0;
}

/// System text size is followed up to 130% (ux-design section 6).
const maxTextScale = 1.3;

abstract final class AppTheme {
  static ThemeData light() => _build(AppColors.light, Brightness.light);
  static ThemeData dark() => _build(AppColors.dark, Brightness.dark);

  static ThemeData _build(AppColors c, Brightness brightness) {
    final scheme = ColorScheme.fromSeed(seedColor: AppColors.light.brand, brightness: brightness).copyWith(
      primary: c.brand,
      onPrimary: brightness == Brightness.light ? Colors.white : AppColors.dark.surface,
      surface: c.surface,
      onSurface: c.text,
      onSurfaceVariant: c.muted,
      surfaceContainerLowest: c.card,
      surfaceContainerLow: c.card,
      surfaceContainer: c.card,
      outline: c.border,
      outlineVariant: c.border,
      error: c.due,
    );
    final text = _textTheme(c);
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: c.surface,
      fontFamily: 'IBMPlexSans',
      fontFamilyFallback: const ['NotoSansMalayalam'],
      textTheme: text,
      extensions: [c],
      appBarTheme: AppBarTheme(
        backgroundColor: c.surface,
        foregroundColor: c.text,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: text.titleLarge,
      ),
      cardTheme: CardThemeData(
        color: c.card,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: c.border),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(Touch.mainButton),
          textStyle: text.labelLarge,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(Touch.target, Touch.target),
          textStyle: text.labelLarge,
          side: BorderSide(color: c.border),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(minimumSize: const Size(Touch.target, Touch.target), textStyle: text.labelLarge),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: c.card,
        contentPadding: const EdgeInsets.symmetric(horizontal: Space.lg, vertical: Space.lg),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: c.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: c.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: c.brand, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: c.due),
        ),
        labelStyle: text.bodyMedium?.copyWith(color: c.muted),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: c.card,
        indicatorColor: c.brand.withValues(alpha: 0.16),
        labelTextStyle: WidgetStatePropertyAll(text.labelMedium),
        height: 68,
      ),
      snackBarTheme: const SnackBarThemeData(behavior: SnackBarBehavior.floating),
      dividerTheme: DividerThemeData(color: c.border, space: 1),
    );
  }

  /// Body 16 sp, labels ≥ 14 sp, screen titles 20 sp, amounts 20–28 sp bold.
  static TextTheme _textTheme(AppColors c) => TextTheme(
    headlineSmall: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: c.text, height: 1.2),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: c.text),
    titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: c.text),
    titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: c.text),
    bodyLarge: TextStyle(fontSize: 16, color: c.text, height: 1.4),
    bodyMedium: TextStyle(fontSize: 16, color: c.text, height: 1.4),
    bodySmall: TextStyle(fontSize: 14, color: c.muted, height: 1.4),
    labelLarge: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.4),
    labelMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(fontSize: 12, color: c.muted),
  );
}
