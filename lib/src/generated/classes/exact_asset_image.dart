import '../base.dart';

class ExactAssetImageBase extends BaseWidget {
    ExactAssetImageBase();

    factory ExactAssetImageBase.fromJson(Map<String, dynamic> data) {
        return ExactAssetImageBase();
    }

    @override
    String get description => r"""
Fetches an image from an [AssetBundle], associating it with the given scale.

This implementation requires an explicit final [assetName] and [scale] on
construction, and ignores the device pixel ratio and size in the
configuration passed into [resolve]. For a resolution-aware variant that
uses the configuration to pick an appropriate image based on the device
pixel ratio and size, see [AssetImage].

## Fetching assets

When fetching an image provided by the app itself, use the [assetName]
argument to name the asset to choose. For instance, consider a directory
`icons` with an image `heart.png`. First, the `pubspec.yaml` of the project
should specify its assets in the `flutter` section:

```yaml
flutter:
  assets:
    - icons/heart.png
```

Then, to fetch the image and associate it with scale `1.5`, use:

```dart
AssetImage('icons/heart.png', scale: 1.5)
```

## Assets in packages

To fetch an asset from a package, the [package] argument must be provided.
For instance, suppose the structure above is inside a package called
`my_icons`. Then to fetch the image, use:

```dart
AssetImage('icons/heart.png', scale: 1.5, package: 'my_icons')
```

Assets used by the package itself should also be fetched using the [package]
argument as above.

If the desired asset is specified in the `pubspec.yaml` of the package, it
is bundled automatically with the app. In particular, assets used by the
package itself must be specified in its `pubspec.yaml`.

A package can also choose to have assets in its 'lib/' folder that are not
specified in its `pubspec.yaml`. In this case for those images to be
bundled, the app has to specify which ones to include. For instance a
package named `fancy_backgrounds` could have:

```
lib/backgrounds/background1.png
lib/backgrounds/background2.png
lib/backgrounds/background3.png
```

To include, say the first image, the `pubspec.yaml` of the app should specify
it in the `assets` section:

```yaml
  assets:
    - packages/fancy_backgrounds/backgrounds/background1.png
```

The `lib/` is implied, so it should not be included in the asset path.

See also:

 * [Image.asset] for a shorthand of an [Image] widget backed by
   [ExactAssetImage] when using a scale.
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