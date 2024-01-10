import 'package:spotify_flutter/spotify_flutter.dart';

abstract class PlayListService {
  Future<Playlist> getPlaylist(String id);

  Future<bool> changePlaylistDetails({
    required String id,
    String? name,
    String? description,
    bool? public,
    bool? collaborative,
  });

  Future<Playlist> getPlaylistItems({required String id});

  Future<Playlist> addItemsToPlaylist(String id);

  Future<Playlist> updatePlaylistItems(String id);

  Future<Playlist> removePlaylistItems(String id);

  Future<Playlist> getCurrentUsersPlaylist(String id);

  Future<Playlist> getUsersPlaylist(String id);

  Future<Playlist> createPlaylist(String id);

  Future<Playlist> getFeaturedPlaylist(String id);

  Future<Playlist> getCategoriesPlaylist(String id);

  Future<Playlist> getPlaylistCoverImage(String id);

  Future<Playlist> addCustomPlaylistCoverImage(String id);
}
