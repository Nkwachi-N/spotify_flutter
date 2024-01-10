import 'package:dio/dio.dart';
import 'package:example/api_client.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final spotifyUserService = spotifyApiGateway.userClient;

  final playlistIds = '3cEYpjA9oz9GiPac4AsH4n';
  final userId = 'smedjan';
  final artistIds =
      '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Endpoints'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: _getCurrentUserProfile,
                    child: const Text('Get Current Users Profile')),
                ElevatedButton(
                    onPressed: _getUserTopArtists,
                    child: const Text('Get Users Top Artists')),
                ElevatedButton(
                    onPressed: _getUserTopTracks,
                    child: const Text('Get Users Top Tracks')),
                ElevatedButton(
                    onPressed: _getUserProfile,
                    child: const Text('Get Users Profile')),
                ElevatedButton(
                    onPressed: _followPlaylist,
                    child: const Text('Follow Playlist')),
                ElevatedButton(
                    onPressed: _unFollowPlaylist,
                    child: const Text('UnFollow Playlist')),
                ElevatedButton(
                    onPressed: _getFollowedArtists,
                    child: const Text('Get Followed Artists')),
                ElevatedButton(
                    onPressed: _followArtist,
                    child: const Text('Follow Artist')),
                ElevatedButton(
                    onPressed: _followUser, child: const Text('Follow User')),
                ElevatedButton(
                    onPressed: _unFollowArtist,
                    child: const Text('UnFollow Artist')),
                ElevatedButton(
                    onPressed: _unFollowUser,
                    child: const Text('UnFollow User')),
                ElevatedButton(
                  onPressed: _checkIfUserFollowsArtists,
                  child: const Text('Check if User Follows Artist'),
                ),
                ElevatedButton(
                  onPressed: _checkIfUserFollowsUser,
                  child: const Text('Check if User Follows User'),
                ),
                ElevatedButton(
                  onPressed: _checkIfUserFollowsPlaylist,
                  child: const Text('Check if User Follows Playlist'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _checkIfUserFollowsUser() async {
    try {
      final response =
          await spotifyUserService.checkIfUserFollowsUsers(ids: 'smedjan');
      _showSnackBar('User follows users is ${response.toString()}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getFollowedArtists() async {
    try {
      final response = await spotifyUserService.getFollowedArtists();
      _showSnackBar('User follows artists length is ${response.items?.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _checkIfUserFollowsPlaylist() async {
    try {
      final response = await spotifyUserService.checkIfUserFollowsPlaylist(
        playlistId: playlistIds,
        userIds: userId,
      );
      _showSnackBar('User follows playlist is ${response.toString()}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _checkIfUserFollowsArtists() async {
    try {
      final response =
          await spotifyUserService.checkIfUserFollowsArtists(ids: artistIds);
      _showSnackBar('User follows artist is ${response.toString()}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getCurrentUserProfile() async {
    try {
      final response = await spotifyUserService.getCurrentUsersProfile();
      _showSnackBar('Users name is ${response.displayName}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getUserTopArtists() async {
    try {
      final response = await spotifyUserService.getUserTopArtists();
      _showSnackBar('Users Top Artists length is ${response.items?.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getUserProfile() async {
    try {
      final response = await spotifyUserService.getUserProfile(userId);
      _showSnackBar('User Profile name is ${response.displayName}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _getUserTopTracks() async {
    try {
      final response = await spotifyUserService.getUserTopTracks();
      _showSnackBar('Users Top Tracks length is ${response.items.length}');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _followArtist() async {
    try {
      final response = await spotifyUserService.followArtists(
        ids: artistIds,
      );
      _showSnackBar('Followed artists result  is $response');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _followUser() async {
    try {
      final response = await spotifyUserService.followUsers(
        ids: userId,
      );
      _showSnackBar('Followed Users result  is $response');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _followPlaylist() async {
    try {
      final response = await spotifyUserService.followPlaylist(
        id: playlistIds,
      );
      _showSnackBar('Followed Playlist  is $response');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _unFollowArtist() async {
    try {
      final response = await spotifyUserService.unfollowArtists(
          ids:
              '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6');
      _showSnackBar('UnFollowed artists result  is $response');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _unFollowPlaylist() async {
    try {
      final response = await spotifyUserService.unFollowPlaylist(playlistIds);
      _showSnackBar('UnFollowed playlist is $response');
    } on DioError catch (e) {
      _showSnackBar(e.message);
    }
  }

  _unFollowUser() async {
    try {
      final response = await spotifyUserService.unfollowUsers(ids: userId);
      _showSnackBar('UnFollowed users result  is $response');
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
