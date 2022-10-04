import 'package:example/albums_screen.dart';
import 'package:example/artists_screen.dart';
import 'package:example/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/generated/l10n.dart';
import 'package:spotify_flutter/spotify_flutter.dart';
import 'api_keys.dart';

void main() {
  runApp(const HelpMe());
}

class HelpMe extends StatelessWidget {
  const HelpMe({Key? key}) : super(key: key);

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

class Pacman {}

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
            onPressed: () => _getUserInfo(context),
            child: const Text('Get User '),
          ),
          ElevatedButton(
            onPressed: () => _getUserTopArtists(context),
            child: const Text('Get user top artists'),
          ),
          ElevatedButton(
            onPressed: () => _toAlbumsScreen(context),
            child: const Text('Test Albums Endpoints'),
          ),
          ElevatedButton(
            onPressed: () => _toSearchScreen(context),
            child: const Text('Test Search Endpoints'),
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

  _getUserInfo(BuildContext context) async {
    final response = await SpotifyApi.instance.getCurrentUsersProfile();
    response.when(success: (success) {
      _showSnackBar(context, 'Name is ${success.displayName}');
    }, failure: (failure) {
      _showSnackBar(context, 'Failed');
    });
  }

  _getUserTopArtists(BuildContext context) async {
    final response = await SpotifyApi.instance.getUserTopArtists();
    response.when(success: (success) {
      _showSnackBar(context, 'Items length is ${success.items?.length}');
    }, failure: (failure) {
      _showSnackBar(context, 'Failed');
    });
  }

  _getAvailableGenre(BuildContext context) async {
    final response = await SpotifyApi.instance.getAvailableGenreSeeds();
    response.when(success: (success) {
      _showSnackBar(context, 'Items length is ${success.genres.length}');
    }, failure: (failure) {
      _showSnackBar(context, 'Failed');
    });
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

  _toSearchScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SearchScreen(),
      ),
    );
  }
}

void _authenticate(BuildContext context) async {
  final response = await SpotifyApi.instance.authenticate(
      redirectUri: 'clash://clash.flutter.com',
      clientId: kClientId,
      callbackUrlScheme: 'clash',
      scope: 'user-read-private user-read-email user-library-read user-library-modify',
      secretKey: kSecretKey);
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
