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

This package can help you interact with the following sections under the [Spotify Api](https://developer.spotify.com/documentation/web-api/reference/#/)
- Artists
- Users
- Albums
- Genre
- Playlist


## Getting started

1. Get your api keys from [Spotify](https://developer.spotify.com/dashboard/).
> The project requires a minimum SDK version on Android of 18.

2. Add this to your Manifest File on Android.

>    <activity
        android:name="com.linusu.flutter_web_auth_2.CallbackActivity"
        android:exported="true">
        <intent-filter android:label="flutter_web_auth_2">
            <action android:name="android.intent.action.VIEW" />
            <category android:name="android.intent.category.DEFAULT" />
            <category android:name="android.intent.category.BROWSABLE" />
            <data android:scheme="YOUR_CALLBACK_URL_SCHEME_HERE" />
        </intent-filter>
    </activity>

3. For android: set you're compileSdkVersion constraints to 34.
> FLUTTER_PROJECT/android/app/build.gradle -> compileSdkVersion 34

## Usage


### Authentication:

Ensure to authenticate first before using any of the methods.
Do not forget to add your REDIRECT URI in your spotify dashboard and ensure they are the same as the one used to authenticate.

> Hint: Your redirect Uri should be [YOUR_CALL_BACK_SCHEME]://[ANYTHING_YOU_WANT].com


```dart
 _authenticate() async {
  final response = await SpotifyApi.instance.authService.authorize(
    redirectUri: '[INSERT_YOUR_REDERICT_URI]',
    clientId: '[INSERT_YOUR_CLIENT_ID]',
    callbackUrlScheme: '[INSERT_YOUR_CALL_BACK_SCHEME]',
    //Optional: A space-separated list of scopes.To see a valid list of scopes check the spotify docs. Example below:
    scope: 'user-read',
    secretKey: '[INSERT_YOUR_SECRET_KEY]',
  );
  response.when(success: (success) {
    //TODO: HANDLE SUCCESS
  }, failure: (failure) {
    //TODO: HANDLE FAILURE.
  });
}
```

### Simple Example
To get current users profile.
```dart
  _getCurrentUserProfile() async {
    final spotifyUserService = SpotifyApi.instance.userService;
    final response = await spotifyUserService.getCurrentUsersProfile();
    response.when(success: (success) {
      print('Users name is ${success.displayName}');
    }, failure: (failure) {
      print('Failed ${failure.message}');
    });
  }
```


## Issues and feedback

Please file issues, bugs, or feature requests in our issue tracker.

Feel free contribute a change to this plugin by opening a pull request.
