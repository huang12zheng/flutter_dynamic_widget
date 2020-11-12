import '../base.dart';

class OutlinedButtonThemeBase extends BaseWidget {
    OutlinedButtonThemeBase();

    factory OutlinedButtonThemeBase.fromJson(Map<String, dynamic> data) {
        return OutlinedButtonThemeBase();
    }

    @override
    String get description => r"""
Overrides the default [ButtonStyle] of its [OutlinedButton] descendants.

See also:

 * [OutlinedButtonThemeData], which is used to configure this theme.
 * [OutlinedButton.defaultStyleOf], which returns the default [ButtonStyle]
   for outlined buttons.
 * [OutlinedButton.styleFrom], which converts simple values into a
   [ButtonStyle] that's consistent with [OutlinedButton]'s defaults.
 * [ThemeData.outlinedButtonTheme], which can be used to override the default
   [ButtonStyle] for [OutlinedButton]s below the overall [Theme].
""";

    @override
    Map<String, dynamic> toJson() {
        return {};
    }

    @override
    Widget render(BuildContext context) {
        return Container();
    }
}