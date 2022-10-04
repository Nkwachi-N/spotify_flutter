import 'package:flutter/material.dart';
import 'package:spotify_flutter/spotify_flutter.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: _getAlbum,
              child: const Text('Get Album'),
            ),
            ElevatedButton(
              onPressed: _getSeveralAlbums,
              child: const Text('Get Several Albums'),
            ),
            ElevatedButton(
              onPressed: _getAlbumTracks,
              child: const Text('Get Album Tracks'),
            ),
            ElevatedButton(
              onPressed: _checkSavedAlbums,
              child: const Text('Check Saved Albums'),
            ),
            ElevatedButton(
              onPressed: _saveAlbums,
              child: const Text('Save Albums'),
            ),
            ElevatedButton(
              onPressed: _removeAlbums,
              child: const Text('Remove Albums'),
            ),
            ElevatedButton(
              onPressed: _getSavedAlbums,
              child: const Text('Get Saved Albums'),
            ),
            ElevatedButton(
              onPressed: _getNewReleases,
              child: const Text('Get New Releases'),
            ),
          ],
        ),
      ),
    );
  }

  _getAlbum() async {
    final response =
        await SpotifyApi.instance.getAlbum(id: '4aawyAB9vmqN3uQ7FjRGTy');
    response.when(success: (success) {
      _showSnackBar('Album name is ${success.name}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getAlbumTracks() async {
    final response =
        await SpotifyApi.instance.getAlbumTracks(id: '4aawyAB9vmqN3uQ7FjRGTy');
    response.when(success: (success) {
      _showSnackBar('Album tracks length is ${success.items.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getSeveralAlbums() async {
    final response = await SpotifyApi.instance.getSeveralAlbums(
        ids:
            '382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc');
    response.when(success: (success) {
      _showSnackBar('Albums length is ${success.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _checkSavedAlbums() async {
    final response =
        await SpotifyApi.instance.checkSavedAlbums('382ObEPsp2rxGrnsizN5TX');
    response.when(success: (success) {
      _showSnackBar('Artists length is ${success.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _saveAlbums() async {
    final response =
        await SpotifyApi.instance.saveAlbum('4aawyAB9vmqN3uQ7FjRGTy');
    response.when(success: (success) {
      _showSnackBar('Saved album is $success');
    }, failure: (failure) {
      _showSnackBar('Failed ${NetworkExceptions.getErrorMessage(failure)}');
    });
  }

  _removeAlbums() async {
    final response =
        await SpotifyApi.instance.removeAlbums('4aawyAB9vmqN3uQ7FjRGTy');
    response.when(success: (success) {
      _showSnackBar('Removed album is $success');
    }, failure: (failure) {
      _showSnackBar('Failed ${NetworkExceptions.getErrorMessage(failure)}');
    });
  }

  _getNewReleases() async {
    final response = await SpotifyApi.instance.getNewReleases();
    response.when(success: (success) {
      _showSnackBar('Items length is ${success.items?.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getSavedAlbums() async {
    final response = await SpotifyApi.instance.getSavedAlbums();
    response.when(success: (success) {
      _showSnackBar('Artists length is ${success.items?.length}');
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
