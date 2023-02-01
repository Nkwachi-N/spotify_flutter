import 'package:example/albums_screen.dart';
import 'package:example/artists_screen.dart';
import 'package:example/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:spotify_flutter/generated/l10n.dart';
import 'package:spotify_flutter/spotify_flutter.dart';

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
}

void _authenticate(BuildContext context) async {
  final clientId = dotenv.env['CLIENT_ID'];
  final secretKey = dotenv.env['SECRET_KEY'];
  final response = await SpotifyApi.instance.authService.authorize(
    redirectUri: 'spotify://spotify.flutter.com',
    clientId: clientId!,
    callbackUrlScheme: 'spotify',
    scope:
        'user-read-private user-read-email user-library-read user-library-modify user-top-read user-follow-modify playlist-modify-public playlist-modify-private user-follow-read',
    secretKey: secretKey!,
  );
  response.when(success: (success) {
    _showSnackBar(context, 'Authenticated');
  }, failure: (failure) {
    _showSnackBar(context, 'Failed');
  });
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
