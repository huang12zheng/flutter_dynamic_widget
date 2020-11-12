import '../base.dart';

class OutlinedButtonThemeDataBase extends BaseWidget {
    OutlinedButtonThemeDataBase();

    factory OutlinedButtonThemeDataBase.fromJson(Map<String, dynamic> data) {
        return OutlinedButtonThemeDataBase();
    }

    @override
    String get description => r"""
A [ButtonStyle] that overrides the default appearance of
[OutlinedButton]s when it's used with [OutlinedButtonTheme] or with the
overall [Theme]'s [ThemeData.outlinedButtonTheme].

The [style]'s properties override [OutlinedButton]'s default style,
i.e.  the [ButtonStyle] returned by [OutlinedButton.defaultStyleOf]. Only
the style's non-null property values or resolved non-null
[MaterialStateProperty] values are used.

See also:

 * [OutlinedButtonTheme], the theme which is configured with this class.
 * [OutlinedButton.defaultStyleOf], which returns the default [ButtonStyle]
   for outlined buttons.
 * [OutlinedButton.styleFrom], which converts simple values into a
   [ButtonStyle] that's consistent with [OutlinedButton]'s defaults.
 * [MaterialStateProperty.resolve], "resolve" a material state property
   to a simple value based on a set of [MaterialState]s.
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