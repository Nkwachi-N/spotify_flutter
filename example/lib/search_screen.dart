import 'package:flutter/material.dart';
import 'package:spotify_flutter/spotify_flutter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: _genericSearch,
              child: const Text('Generic Search'),
            ),
            ElevatedButton(
              onPressed: _getTrackByGenre,
              child: const Text('Get Track by Genre'),
            ),
            ElevatedButton(
              onPressed: _getTrackByArtist,
              child: const Text('Get Track by Artist'),
            ),
          ],
        ),
      ),
    );
  }

  _genericSearch() async {
    final response = await SpotifyApi.instance
        .genericSearch(query: 'Wizkid', type: 'artist');
    response.when(success: (success) {
      _showSnackBar('Artists length is ${success.artists?.items?.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getTrackByGenre() async {
    final response = await SpotifyApi.instance
        .getTracksByGenre(genre: 'afrobeat',);
    response.when(success: (success) {
      _showSnackBar('Track length is ${success.tracks?.items.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getTrackByArtist() async {
    final response = await SpotifyApi.instance
        .getTracksByGenre(genre: 'afrobeat',);
    response.when(success: (success) {
      _showSnackBar('Artist length is ${success.tracks?.items?.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

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
