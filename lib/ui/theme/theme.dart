import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff7a4f81),
      surfaceTint: Color(0xff7a4f81),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfffed6ff),
      onPrimaryContainer: Color(0xff603767),
      secondary: Color(0xff6b596b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff3dbf2),
      onSecondaryContainer: Color(0xff524153),
      tertiary: Color(0xff82524c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdad5),
      onTertiaryContainer: Color(0xff673b35),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff1f1a1f),
      onSurfaceVariant: Color(0xff4d444c),
      outline: Color(0xff7e747d),
      outlineVariant: Color(0xffcfc3cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff342f34),
      inversePrimary: Color(0xffe9b5ee),
      primaryFixed: Color(0xfffed6ff),
      onPrimaryFixed: Color(0xff300939),
      primaryFixedDim: Color(0xffe9b5ee),
      onPrimaryFixedVariant: Color(0xff603767),
      secondaryFixed: Color(0xfff3dbf2),
      onSecondaryFixed: Color(0xff251726),
      secondaryFixedDim: Color(0xffd7bfd5),
      onSecondaryFixedVariant: Color(0xff524153),
      tertiaryFixed: Color(0xffffdad5),
      onTertiaryFixed: Color(0xff33110d),
      tertiaryFixedDim: Color(0xfff5b8af),
      onTertiaryFixedVariant: Color(0xff673b35),
      surfaceDim: Color(0xffe2d7de),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf1f8),
      surfaceContainer: Color(0xfff6ebf2),
      surfaceContainerHigh: Color(0xfff0e5ec),
      surfaceContainerHighest: Color(0xffeadfe7),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4e2656),
      surfaceTint: Color(0xff7a4f81),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8a5d90),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff413142),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff7a677a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff532b26),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff92605a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff141014),
      onSurfaceVariant: Color(0xff3c343b),
      outline: Color(0xff595058),
      outlineVariant: Color(0xff746a73),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff342f34),
      inversePrimary: Color(0xffe9b5ee),
      primaryFixed: Color(0xff8a5d90),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff6f4576),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff7a677a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff614f62),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff92605a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff774943),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcec4cb),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf1f8),
      surfaceContainer: Color(0xfff0e5ec),
      surfaceContainerHigh: Color(0xffe4dae1),
      surfaceContainerHighest: Color(0xffd9cfd6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff431c4b),
      surfaceTint: Color(0xff7a4f81),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff633a6a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff362738),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff554456),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff47211d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff693d38),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff312a31),
      outlineVariant: Color(0xff4f474f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff342f34),
      inversePrimary: Color(0xffe9b5ee),
      primaryFixed: Color(0xff633a6a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4a2352),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff554456),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3d2d3e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff693d38),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4f2723),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc0b6bd),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff9eef5),
      surfaceContainer: Color(0xffeadfe7),
      surfaceContainerHigh: Color(0xffdcd1d8),
      surfaceContainerHighest: Color(0xffcec4cb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe9b5ee),
      surfaceTint: Color(0xffe9b5ee),
      onPrimary: Color(0xff48214f),
      primaryContainer: Color(0xff603767),
      onPrimaryContainer: Color(0xfffed6ff),
      secondary: Color(0xffd7bfd5),
      onSecondary: Color(0xff3b2b3c),
      secondaryContainer: Color(0xff524153),
      onSecondaryContainer: Color(0xfff3dbf2),
      tertiary: Color(0xfff5b8af),
      onTertiary: Color(0xff4c2520),
      tertiaryContainer: Color(0xff673b35),
      onTertiaryContainer: Color(0xffffdad5),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff171217),
      onSurface: Color(0xffeadfe7),
      onSurfaceVariant: Color(0xffcfc3cd),
      outline: Color(0xff988d97),
      outlineVariant: Color(0xff4d444c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeadfe7),
      inversePrimary: Color(0xff7a4f81),
      primaryFixed: Color(0xfffed6ff),
      onPrimaryFixed: Color(0xff300939),
      primaryFixedDim: Color(0xffe9b5ee),
      onPrimaryFixedVariant: Color(0xff603767),
      secondaryFixed: Color(0xfff3dbf2),
      onSecondaryFixed: Color(0xff251726),
      secondaryFixedDim: Color(0xffd7bfd5),
      onSecondaryFixedVariant: Color(0xff524153),
      tertiaryFixed: Color(0xffffdad5),
      onTertiaryFixed: Color(0xff33110d),
      tertiaryFixedDim: Color(0xfff5b8af),
      onTertiaryFixedVariant: Color(0xff673b35),
      surfaceDim: Color(0xff171217),
      surfaceBright: Color(0xff3d373d),
      surfaceContainerLowest: Color(0xff110d11),
      surfaceContainerLow: Color(0xff1f1a1f),
      surfaceContainer: Color(0xff231e23),
      surfaceContainerHigh: Color(0xff2e282d),
      surfaceContainerHighest: Color(0xff393338),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffccdff),
      surfaceTint: Color(0xffe9b5ee),
      onPrimary: Color(0xff3b1544),
      primaryContainer: Color(0xffb080b6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffedd5ec),
      onSecondary: Color(0xff2f2131),
      secondaryContainer: Color(0xff9f8a9f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd2cc),
      onTertiary: Color(0xff3f1b17),
      tertiaryContainer: Color(0xffba837c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff171217),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe6d9e3),
      outline: Color(0xffbaaeb8),
      outlineVariant: Color(0xff988d96),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeadfe7),
      inversePrimary: Color(0xff613869),
      primaryFixed: Color(0xfffed6ff),
      onPrimaryFixed: Color(0xff24002d),
      primaryFixedDim: Color(0xffe9b5ee),
      onPrimaryFixedVariant: Color(0xff4e2656),
      secondaryFixed: Color(0xfff3dbf2),
      onSecondaryFixed: Color(0xff190c1c),
      secondaryFixedDim: Color(0xffd7bfd5),
      onSecondaryFixedVariant: Color(0xff413142),
      tertiaryFixed: Color(0xffffdad5),
      onTertiaryFixed: Color(0xff250705),
      tertiaryFixedDim: Color(0xfff5b8af),
      onTertiaryFixedVariant: Color(0xff532b26),
      surfaceDim: Color(0xff171217),
      surfaceBright: Color(0xff494248),
      surfaceContainerLowest: Color(0xff0a060a),
      surfaceContainerLow: Color(0xff211c21),
      surfaceContainer: Color(0xff2c262b),
      surfaceContainerHigh: Color(0xff373136),
      surfaceContainerHighest: Color(0xff423c41),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffeafd),
      surfaceTint: Color(0xffe9b5ee),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffe5b1ea),
      onPrimaryContainer: Color(0xff1a0022),
      secondary: Color(0xffffeafd),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd3bcd2),
      onSecondaryContainer: Color(0xff130715),
      tertiary: Color(0xffffece9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff1b4ac),
      onTertiaryContainer: Color(0xff1e0302),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff171217),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfffaecf6),
      outlineVariant: Color(0xffcbbfc9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeadfe7),
      inversePrimary: Color(0xff613869),
      primaryFixed: Color(0xfffed6ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffe9b5ee),
      onPrimaryFixedVariant: Color(0xff24002d),
      secondaryFixed: Color(0xfff3dbf2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd7bfd5),
      onSecondaryFixedVariant: Color(0xff190c1c),
      tertiaryFixed: Color(0xffffdad5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff5b8af),
      onTertiaryFixedVariant: Color(0xff250705),
      surfaceDim: Color(0xff171217),
      surfaceBright: Color(0xff554e54),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff231e23),
      surfaceContainer: Color(0xff342f34),
      surfaceContainerHigh: Color(0xff403a3f),
      surfaceContainerHighest: Color(0xff4b454a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

// Colors
const screenBackground = Color(0xFF111111);
const searchBarBackground = Color(0xFF1E1E1E);
const primaryButton = Color(0xFFD9D9D9);
const posterBorder = Color(0xFFB5A9A9);
const buttonGrey = Color(0xFF504F4F);

var roboto =GoogleFonts.roboto();
var largeTitle = roboto.copyWith(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
var heading1 = roboto.copyWith(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
var heading2 = roboto.copyWith(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
var body1Regular = roboto.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);
var body1Bold = roboto.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);
var body2Regular = roboto.copyWith(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);
var body2Bold = roboto.copyWith(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);
var caption = roboto.copyWith(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);
var body3Regular = roboto.copyWith(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);
var body3Bold = roboto.copyWith(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);
var verySmallText = roboto.copyWith(
fontSize: 10,
fontWeight: FontWeight.w400,
  color: Colors.white,
);