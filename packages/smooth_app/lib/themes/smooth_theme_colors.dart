import 'package:flutter/material.dart';

class SmoothColorsThemeExtension
    extends ThemeExtension<SmoothColorsThemeExtension> {
  SmoothColorsThemeExtension({
    required this.primaryUltraBlack,
    required this.primaryBlack,
    required this.primaryDark,
    required this.primarySemiDark,
    required this.primaryTone,
    required this.primaryNormal,
    required this.primaryMedium,
    required this.primaryLight,
    required this.secondaryNormal,
    required this.secondaryLight,
    required this.error,
    required this.warning,
    required this.success,
    required this.green,
    required this.orange,
    required this.red,
    required this.greyDark,
    required this.greyNormal,
    required this.greyMedium,
    required this.greyLight,
    required this.cellOdd,
    required this.cellEven,
  });

  SmoothColorsThemeExtension.defaultValues(bool lightTheme)
      : primaryUltraBlack = const Color(0xFF201A17),
        primaryBlack = const Color(0xFF341100),
        primaryDark = const Color(0xFF483527),
        primarySemiDark = const Color(0xFF52443D),
        primaryTone = const Color(0xFF81756C),
        primaryNormal = const Color(0xFFA08D84),
        primaryMedium = const Color(0xFFEDE0DB),
        primaryLight = const Color(0xFFF6F3F0),
        secondaryNormal = const Color(0xFFF2994A),
        secondaryLight = const Color(0xFFEE8858),
        success = const Color(0xFF219653),
        warning = const Color(0xFFFB8229),
        error = const Color(0xFFEB5757),
        green = const Color(0xFF219653),
        orange = const Color(0xFFFB8229),
        red = const Color(0xFFEB5757),
        greyDark = const Color(0xFF666666),
        greyNormal = const Color(0xFF6C6C6C),
        greyMedium = const Color(0xFF8F8F8F),
        greyLight = const Color(0xFFE0E0E0),
        cellOdd =
            lightTheme ? const Color(0xFFFAF8F6) : const Color(0xFF2D251E),
        cellEven =
            lightTheme ? const Color(0xFFFFFFFF) : const Color(0xFF201A17);

  // Ristreto
  final Color primaryUltraBlack;

  // Chocolate
  final Color primaryBlack;

  // Cortado
  final Color primaryDark;

  // Mocha
  final Color primarySemiDark;

  // Darker Macchiato (from old palette)
  final Color primaryTone;

  // Macchiato
  final Color primaryNormal;

  // Cappuccino
  final Color primaryMedium;

  // Latte
  final Color primaryLight;
  final Color secondaryNormal;
  final Color secondaryLight;

  final Color error;
  final Color warning;
  final Color success;

  final Color green;
  final Color orange;
  final Color red;

  final Color greyDark;
  final Color greyNormal;
  final Color greyMedium;
  final Color greyLight;

  final Color cellOdd;
  final Color cellEven;

  @override
  ThemeExtension<SmoothColorsThemeExtension> copyWith({
    Color? primaryUltraBlack,
    Color? primaryBlack,
    Color? primaryDark,
    Color? primarySemiDark,
    Color? primaryTone,
    Color? primaryNormal,
    Color? primaryMedium,
    Color? primaryLight,
    Color? secondaryNormal,
    Color? secondaryLight,
    Color? error,
    Color? warning,
    Color? success,
    Color? green,
    Color? orange,
    Color? red,
    Color? greyDark,
    Color? greyNormal,
    Color? greyMedium,
    Color? greyLight,
    Color? cellOdd,
    Color? cellEven,
  }) {
    return SmoothColorsThemeExtension(
      primaryUltraBlack: primaryUltraBlack ?? this.primaryUltraBlack,
      primaryBlack: primaryBlack ?? this.primaryBlack,
      primaryDark: primaryDark ?? this.primaryDark,
      primarySemiDark: primarySemiDark ?? this.primarySemiDark,
      primaryTone: primaryTone ?? this.primaryTone,
      primaryNormal: primaryNormal ?? this.primaryNormal,
      primaryMedium: primaryMedium ?? this.primaryMedium,
      primaryLight: primaryLight ?? this.primaryLight,
      secondaryNormal: secondaryNormal ?? this.secondaryNormal,
      secondaryLight: secondaryLight ?? this.secondaryLight,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      success: success ?? this.success,
      green: green ?? this.green,
      orange: orange ?? this.orange,
      red: red ?? this.red,
      greyDark: greyDark ?? this.greyDark,
      greyNormal: greyDark ?? this.greyDark,
      greyMedium: greyMedium ?? this.greyMedium,
      greyLight: greyLight ?? this.greyLight,
      cellOdd: cellOdd ?? this.cellOdd,
      cellEven: cellEven ?? this.cellEven,
    );
  }

  @override
  ThemeExtension<SmoothColorsThemeExtension> lerp(
    covariant ThemeExtension<SmoothColorsThemeExtension>? other,
    double t,
  ) {
    if (other is! SmoothColorsThemeExtension) {
      return this;
    }

    return SmoothColorsThemeExtension(
      primaryUltraBlack: Color.lerp(
        primaryUltraBlack,
        other.primaryUltraBlack,
        t,
      )!,
      primaryBlack: Color.lerp(
        primaryBlack,
        other.primaryBlack,
        t,
      )!,
      primaryDark: Color.lerp(
        primaryDark,
        other.primaryDark,
        t,
      )!,
      primarySemiDark: Color.lerp(
        primarySemiDark,
        other.primarySemiDark,
        t,
      )!,
      primaryTone: Color.lerp(
        primaryTone,
        other.primaryTone,
        t,
      )!,
      primaryNormal: Color.lerp(
        primaryNormal,
        other.primaryNormal,
        t,
      )!,
      primaryMedium: Color.lerp(
        primaryMedium,
        other.primaryMedium,
        t,
      )!,
      primaryLight: Color.lerp(
        primaryLight,
        other.primaryLight,
        t,
      )!,
      secondaryNormal: Color.lerp(
        secondaryNormal,
        other.secondaryNormal,
        t,
      )!,
      secondaryLight: Color.lerp(
        secondaryLight,
        other.secondaryLight,
        t,
      )!,
      error: Color.lerp(
        error,
        other.error,
        t,
      )!,
      warning: Color.lerp(
        warning,
        other.warning,
        t,
      )!,
      success: Color.lerp(
        success,
        other.success,
        t,
      )!,
      green: Color.lerp(
        green,
        other.green,
        t,
      )!,
      orange: Color.lerp(
        orange,
        other.orange,
        t,
      )!,
      red: Color.lerp(
        red,
        other.red,
        t,
      )!,
      greyDark: Color.lerp(
        greyDark,
        other.greyDark,
        t,
      )!,
      greyNormal: Color.lerp(
        greyNormal,
        other.greyNormal,
        t,
      )!,
      greyMedium: Color.lerp(
        greyMedium,
        other.greyMedium,
        t,
      )!,
      greyLight: Color.lerp(
        greyLight,
        other.greyLight,
        t,
      )!,
      cellOdd: Color.lerp(
        cellOdd,
        other.cellOdd,
        t,
      )!,
      cellEven: Color.lerp(
        cellEven,
        other.cellEven,
        t,
      )!,
    );
  }
}
