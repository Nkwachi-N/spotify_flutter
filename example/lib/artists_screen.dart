import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_client.dart';

class ArtistScreen extends StatefulWidget {
  const ArtistScreen({Key? key}) : super(key: key);

  @override
  State<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen> {
  final spotifyArtistService = spotifyApiGateway.artistClient;

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
    try {
      final response =
          await spotifyArtistService.getArtist(id: '0TnOYISbd1XYRBk9myaseg');
      _showSnackBar('Artist name is ${response.name}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getSeveralArtists() async {
    try {
      final response = await spotifyArtistService.getSeveralArtists(
        ids:
            '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6',
      );
      _showSnackBar('Artists length is ${response.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getArtistsAlbums() async {
    try {
      final response = await spotifyArtistService.getArtistAlbums(
          id: '0TnOYISbd1XYRBk9myaseg');
      _showSnackBar('Artists length is ${response.items?.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getArtistsTopTracks() async {
    try {
      final response = await spotifyArtistService.getArtistTopTracks(
        id: '0TnOYISbd1XYRBk9myaseg',
        market: 'ES',
      );
      _showSnackBar('Artist top tracks length is ${response.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getArtistsRelatedArtists() async {
    try {
      final response = await spotifyArtistService
          .getArtistsRelatedArtists('0TnOYISbd1XYRBk9myaseg');
      _showSnackBar('Artist length is ${response.length}');
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
