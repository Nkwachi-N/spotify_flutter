<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

This is a library that helps with interfacing with the Spotify Api.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

Get your api keys from [Spotify](https://developer.spotify.com/dashboard/).
The project requires a minimum SDK version on Android of 18

Add this to your Manifest File on Android.

<activity
android:name="com.linusu.flutter_web_auth.CallbackActivity"
android:exported="true">

            <intent-filter android:label="flutter_web_auth">

                <action android:name="android.intent.action.VIEW" />

                <category android:name="android.intent.category.DEFAULT" />
                <category android:name="android.intent.category.BROWSABLE" />

                <data android:scheme="[INSERT_YOUR_CALLBACK_SCHEME]" />


            </intent-filter>
        </activity>
## Usage


Authentication:

```dart
 _authenticate(BuildContext context) async {
  final clientId = dotenv.env['CLIENT_ID'];
  final secretKey = dotenv.env['SECRET_KEY'];
  final response = await SpotifyApi.instance.authService.authorize(
    redirectUri: 'spotify.flutter://spotify.flutter.com',
    clientId: clientId!,
    callbackUrlScheme: 'spotify',
    //Optional: A space-separated list of scopes.[]
    scope: 'user-read',
    secretKey: secretKey!,
  );
  response.when(success: (success) {
    _showSnackBar(context, 'Authenticated');
  }, failure: (failure) {
    _showSnackBar(context, 'Failed');
  });
}
```


TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
