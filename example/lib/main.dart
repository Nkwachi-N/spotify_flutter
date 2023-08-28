import 'package:dio/dio.dart';
import 'package:example/albums_screen.dart';
import 'package:example/api_client.dart';
import 'package:example/artists_screen.dart';
import 'package:example/storage/storage_service.dart';
import 'package:example/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:spotify_flutter/generated/l10n.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      localizationsDelegates: [
        S.delegate,
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final authClient = spotifyApiGateway.authClient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _authenticate(context),
            child: const Text('Authorize'),
          ),
          ElevatedButton(
            onPressed: () => _toUserScreen(context),
            child: const Text('Test User Endpoints '),
          ),
          ElevatedButton(
            onPressed: () => _toAlbumsScreen(context),
            child: const Text('Test Albums Endpoints'),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => toArtistScreen(context),
              child: const Text('Test Artists Endpoints'),
            ),
          ),
        ],
      ),
    );
  }

  toArtistScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ArtistScreen(),
      ),
    );
  }

  _toAlbumsScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AlbumsScreen(),
      ),
    );
  }

  _toUserScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UsersScreen(),
      ),
    );
  }

  void _authenticate(BuildContext context) async {
    final clientId = dotenv.env['CLIENT_ID'];
    final secretKey = dotenv.env['SECRET_KEY'];

    if (clientId == null || secretKey == null) return;

    final keyPair = authClient.getKeyPair();

    try {
      String redirectUri = 'spotify://spotify.flutter.com';
      final code = await authClient.authorize(
        redirectUri: redirectUri,
        clientId: clientId,
        callbackUrlScheme: 'spotify',
        scope:
            'user-read-private user-read-email user-library-read user-library-modify user-top-read user-follow-modify playlist-modify-public playlist-modify-private user-follow-read',
        secretKey: secretKey,
        codeChallenge: keyPair.codeChallenge,
      );
      if (code == null) return;
      final tokenResponse = await authClient.getToken(
        code: code,
        codeVerifier: keyPair.codeVerifier,
        redirectUri: redirectUri,
        clientId: clientId,
        secretKey: secretKey,
      );

      final storageService = StorageService();
      if (tokenResponse.refreshToken != null &&
          tokenResponse.accessToken != null) {
        storageService.saveToken(
          accessToken: tokenResponse.accessToken!,
          refreshToken: tokenResponse.refreshToken!,
        );
        if (context.mounted == false) return;
        _showSnackBar(context, 'Authenticated');
      }
    } on DioError catch (e) {
      _showSnackBar(context, 'Failed');
    }
  }
}

void _showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
      ),
    ),
  );
}

//TODO: add to docs that Minimum android version is 18 to correlate with flutter_secure_storage
