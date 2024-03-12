import 'package:flutter/material.dart';
import 'package:moviles/core/utils/size_utils.dart';
import 'package:moviles/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeDeeporangeA400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepOrangeA400.withOpacity(0.96),
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}

extension on TextStyle {
  TextStyle get keaniaOne {
    return copyWith(
      fontFamily: 'Keania One',
    );
  }
}
