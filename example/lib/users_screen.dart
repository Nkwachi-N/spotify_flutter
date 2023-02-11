import 'package:flutter/material.dart';
import 'package:spotify_flutter/spotify_flutter.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final spotifyUserService = SpotifyApi.instance.userService;

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
                    onPressed: _followPlaylist, child: const Text('Follow Playlist')),
                ElevatedButton(
                    onPressed: _unFollowPlaylist,
                    child: const Text('UnFollow Playlist')),
                ElevatedButton(
                    onPressed: _getFollowedArtists, child: const Text('Get Followed Artists')),
                ElevatedButton(
                    onPressed: _followArtist, child: const Text('Follow Artist')),
                ElevatedButton(
                    onPressed: _followUser, child: const Text('Follow User')),
                ElevatedButton(
                    onPressed: _unFollowArtist, child: const Text('UnFollow Artist')),
                ElevatedButton(
                    onPressed: _unFollowUser, child: const Text('UnFollow User')),
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
    final response =
        await spotifyUserService.checkIfUserFollowsUsers(ids: 'smedjan');
    response.when(success: (success) {
      _showSnackBar('User follows users is ${success.toString()}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getFollowedArtists() async {
    final response =
        await spotifyUserService.getFollowedArtists();
    response.when(success: (success) {
      _showSnackBar('User follows artists length is ${success.items?.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _checkIfUserFollowsPlaylist() async {
    final response = await spotifyUserService.checkIfUserFollowsPlaylist(
        playlistId: playlistIds, userIds: userId);
    response.when(success: (success) {
      _showSnackBar('User follows playlist is ${success.toString()}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _checkIfUserFollowsArtists() async {
    final response =
        await spotifyUserService.checkIfUserFollowsArtists(ids: artistIds);
    response.when(success: (success) {
      _showSnackBar('User follows artist is ${success.toString()}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getCurrentUserProfile() async {
    final response = await spotifyUserService.getCurrentUsersProfile();
    response.when(success: (success) {
      _showSnackBar('Users name is ${success.displayName}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getUserTopArtists() async {
    final response = await spotifyUserService.getUserTopArtists();
    response.when(success: (success) {
      _showSnackBar('Users Top Artists length is ${success.items?.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getUserProfile() async {
    final response = await spotifyUserService.getUserProfile(userId);
    response.when(success: (success) {
      _showSnackBar('User Profile name is ${success.displayName}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _getUserTopTracks() async {
    final response = await spotifyUserService.getUserTopTracks();
    response.when(success: (success) {
      _showSnackBar('Users Top Tracks length is ${success.items.length}');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _followArtist() async {
    final response = await spotifyUserService.followArtists(
      ids: artistIds,
    );
    response.when(success: (success) {
      _showSnackBar('Followed artists result  is $success');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _followUser() async {
    final response = await spotifyUserService.followUsers(
      ids: userId,
    );
    response.when(success: (success) {
      _showSnackBar('Followed Users result  is $success');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _followPlaylist() async {
    final response = await spotifyUserService.followPlaylist(
      id: playlistIds,
    );
    response.when(success: (success) {
      _showSnackBar('Followed Playlist  is $success');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _unFollowArtist() async {
    final response = await spotifyUserService.unfollowArtists(
        ids:
            '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6');
    response.when(success: (success) {
      _showSnackBar('UnFollowed artists result  is $success');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _unFollowPlaylist() async {
    final response = await spotifyUserService.unFollowPlaylist(playlistIds);
    response.when(success: (success) {
      _showSnackBar('UnFollowed playlist is $success');
    }, failure: (failure) {
      _showSnackBar('Failed');
    });
  }

  _unFollowUser() async {
    final response = await spotifyUserService.unfollowUsers(ids: userId);
    response.when(success: (success) {
      _showSnackBar('UnFollowed users result  is $success');
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
