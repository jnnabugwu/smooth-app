import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_app/generic_lib/design_constants.dart';
import 'package:smooth_app/helpers/color_extension.dart';
import 'package:smooth_app/pages/product/nutrition_page/widgets/nutrition_container_helper.dart';
import 'package:smooth_app/themes/smooth_theme.dart';
import 'package:smooth_app/themes/smooth_theme_colors.dart';
import 'package:smooth_app/themes/theme_provider.dart';
import 'package:smooth_app/widgets/smooth_dropdown.dart';

class NutritionServingSwitch extends StatelessWidget {
  const NutritionServingSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final SmoothColorsThemeExtension extension =
        context.extension<SmoothColorsThemeExtension>();
    final AppLocalizations appLocalizations = AppLocalizations.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.lightTheme()
            ? extension.primaryMedium
            : extension.primaryUltraBlack.lighten(0.01),
        borderRadius: const BorderRadius.vertical(top: ROUNDED_RADIUS),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: VERY_LARGE_SPACE,
          end: LARGE_SPACE,
          top: SMALL_SPACE,
          bottom: SMALL_SPACE,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Text(
                appLocalizations.nutrition_page_serving_type_label,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.5,
                ),
              ),
            ),
            Consumer<NutritionContainerHelper>(
              builder: (
                BuildContext context,
                NutritionContainerHelper nutritionContainer,
                _,
              ) {
                return SmoothDropdownButton<PerSize>(
                    value: nutritionContainer.perSize,
                    items: <SmoothDropdownItem<PerSize>>[
                      SmoothDropdownItem<PerSize>(
                        value: PerSize.oneHundredGrams,
                        label: appLocalizations.nutrition_page_per_100g,
                      ),
                      SmoothDropdownItem<PerSize>(
                        value: PerSize.serving,
                        label: appLocalizations.nutrition_page_per_serving,
                      ),
                    ],
                    onChanged: (final PerSize? value) {
                      if (value == null) {
                        return;
                      }

                      nutritionContainer.perSize = value;
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}