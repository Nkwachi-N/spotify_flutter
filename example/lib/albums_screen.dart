import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_client.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  final spotifyAlbumService = spotifyApiGateway.albumClient;

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
    try {
      final response =
          await spotifyAlbumService.getAlbum(id: '4aawyAB9vmqN3uQ7FjRGTy');
      _showSnackBar('Album name is ${response.name}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getAlbumTracks() async {
    try {
      final response = await spotifyAlbumService.getAlbumTracks(
          id: '4aawyAB9vmqN3uQ7FjRGTy');
      _showSnackBar('Album tracks length is ${response.items.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getSeveralAlbums() async {
    try {
      final response = await spotifyAlbumService.getSeveralAlbums(
          ids:
              '382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc');
      _showSnackBar('Albums length is ${response.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _checkSavedAlbums() async {
    try {
      final response =
          await spotifyAlbumService.checkSavedAlbums('382ObEPsp2rxGrnsizN5TX');
      _showSnackBar('albums length is ${response.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _saveAlbums() async {
    try {
      final response =
          await spotifyAlbumService.saveAlbum('4aawyAB9vmqN3uQ7FjRGTy');
      _showSnackBar('Saved album is $response');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _removeAlbums() async {
    try {
      final response =
          await spotifyAlbumService.removeAlbums('4aawyAB9vmqN3uQ7FjRGTy');
      _showSnackBar('Removed album is $response');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getNewReleases() async {
    try {
      final response = await spotifyAlbumService.getNewReleases();
      _showSnackBar('Items length is ${response.items?.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getSavedAlbums() async {
    try {
      final response = await spotifyAlbumService.getSavedAlbums();
      _showSnackBar('albums length is ${response.items?.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
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
