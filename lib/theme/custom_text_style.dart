import 'package:flutter/material.dart';
import '../core/app_export.dart';



class CustomTextStyles {
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallInter => theme.textTheme.headlineSmall!.inter;
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.54),
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
}

extension CustomTextStyle on TextStyle {
  TextStyle get inika {
    return copyWith(
      fontFamily: 'Inika',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}