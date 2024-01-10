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

Get your api keys from [Spotify](https://developer.spotify.com/dashboard/).
> The project requires a minimum SDK version on Android of 18.

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


### Authentication:

Ensure to authenticate first before using any of the methods.
Do not forget to add your REDIRECT URI in your spotify dashboard and ensure they are the same as the one used to authenticate.

> Hint: Your redirect Uri should be [YOUR_CALL_BACK_SCHEME]://[ANYTHING_YOU_WANT].com


```dart
Future authenticate() async {
  final authClient = spotifyApiGateway.authClient;
  final keyPair = authClient.getKeyPair();
  try {
    String redirectUri = 'spotify://spotify.flutter.com';

    final code = await authClient.authorize(
      redirectUri: '[INSERT_YOUR_REDIRECT_URI]',
      clientId: '[INSERT_YOUR_CLIENT_ID]',
      callbackUrlScheme: '[INSERT_YOUR_CALL_BACK_SCHEME]',
      scope: '[INSERT_YOUR_SCOPE_HERE]',
      codeChallenge: keyPair.codeChallenge,
    );

    if (code == null) {
      //Handle failure
      return;
    }

    //retrieve auth and refresh tokens.
    final tokenResponse = await authClient.getToken(
      code: code,
      codeVerifier: keyPair.codeVerifier,
      redirectUri: '[INSERT_YOUR_REDIRECT_URI]',
      clientId: '[INSERT_YOUR_CLIENT_ID]',
      //add any header, you deem required.
      header: {},
    );

    if (tokenResponse.refreshToken != null &&
        tokenResponse.accessToken != null) {
      //TODO:save access and refresh token
    }
  } on DioError catch (e) {
    //TODO:handle dio error
  }
}
```

### Simple Example
To get current users profile.
```dart
  _getCurrentUserProfile() async {
  final spotifyUserService = spotifyApiGateway.userClient;
  try{
    final response = await spotifyUserService.getCurrentUsersProfile();
    print('Users name is ${success.displayName}');
  } on DioError catch(e) {
    print('Failed ${failure.message}');
  }
}
```


## Issues and feedback

Please file issues, bugs, or feature requests in our issue tracker.

Feel free contribute a change to this plugin by opening a pull request.
