import 'package:flutter/material.dart';
import 'package:spotify_flutter/spotify_flutter.dart';

class ArtistScreen extends StatefulWidget {
  const ArtistScreen({Key? key}) : super(key: key);

  @override
  State<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artist'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: _getArtist, child: const Text('Get Artist')),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: _getSeveralArtists,
              child: const Text('Get Several Artists'),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: _getArtistsAlbums,
              child: const Text('Get Artists Albums'),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: _getArtistsTopTracks,
              child: const Text('Get Artists Top Tracks'),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: _getArtistsRelatedArtists,
              child: const Text('Get Artists Related Artists'),
            ),
          ],
        ),
      ),
    );
  }

  _getArtist() async {
    final response =
        await SpotifyApi.instance.getArtist('0TnOYISbd1XYRBk9myaseg');
    response.when(success: (success) {
      _showSnackBar('Artist name is ${success.name}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getSeveralArtists() async {
    final response = await SpotifyApi.instance.getSeveralArtists(
        '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6');
    response.when(success: (success) {
      _showSnackBar('Artists length is ${success.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getArtistsAlbums() async {
    final response = await SpotifyApi.instance.getArtistAlbums(id: '0TnOYISbd1XYRBk9myaseg');
    response.when(success: (success) {
      _showSnackBar('Artists length is ${success.items.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getArtistsTopTracks() async {
    final response = await SpotifyApi.instance.getArtistTopTracks(id: '0TnOYISbd1XYRBk9myaseg',market: 'ES');
    response.when(success: (success) {
      _showSnackBar('Artists length is ${success.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getArtistsRelatedArtists() async {
    final response = await SpotifyApi.instance.getArtistRelatedArtists('0TnOYISbd1XYRBk9myaseg');
    response.when(success: (success) {
      _showSnackBar('Artists length is ${success.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  //

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
      ),
    );
  }
}
