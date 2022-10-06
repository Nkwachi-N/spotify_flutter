import 'package:flutter/material.dart';
import 'package:spotify_flutter/spotify_flutter.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final spotifyUserService = SpotifyApi.instance.userService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Endpoints'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(onPressed: _getCurrentUserProfile, child: Text('Get Current Users Profile')),
                ElevatedButton(onPressed: null, child: Text('Get Users Top Artists')),
                ElevatedButton(onPressed: null, child: Text('Get Users Top Tracks')),
                ElevatedButton(onPressed: null, child: Text('Get Users Profile')),
                ElevatedButton(onPressed: null, child: Text('Follow Playlist')),
                ElevatedButton(onPressed: null, child: Text('UnFollow Playlist')),
                ElevatedButton(onPressed: null, child: Text('Get Followed Artists')),
                ElevatedButton(onPressed: null, child: Text('Follow Artist')),
                ElevatedButton(onPressed: null, child: Text('Follow User')),
                ElevatedButton(onPressed: null, child: Text('UnFollow Artist')),
                ElevatedButton(onPressed: null, child: Text('UnFollow User')),
                ElevatedButton(onPressed: null, child: Text('Check if User Follows Artist')),
                ElevatedButton(onPressed: null, child: Text('Check if User Follows User')),
                ElevatedButton(onPressed: null, child: Text('Check if User Follows Playlist')),
              ],
            ),
          ),
        ),
      ),
    );
  }



  _getCurrentUserProfile() async {
    final response = await spotifyUserService.getCurrentUsersProfile();
    response.when(success: (success) {
      _showSnackBar('Users name is ${success.displayName}');
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
