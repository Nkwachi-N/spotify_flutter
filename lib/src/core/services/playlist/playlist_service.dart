import 'package:spotify_flutter/spotify_flutter.dart';

import '../../api/api_result.dart';

abstract class PlayListService {
  Future<ApiResult<Playlist>> getPlaylist(String id);

  Future<ApiResult<bool>> changePlaylistDetails({
    required String id,
    String? name,
    String? description,
    bool? public,
    bool? collaborative,
  });

  Future<ApiResult<Playlist>> getPlaylistItems({required String id});

  Future<ApiResult<Playlist>> addItemsToPlaylist(String id);

  Future<ApiResult<Playlist>> updatePlaylistItems(String id);

  Future<ApiResult<Playlist>> removePlaylistItems(String id);

  Future<ApiResult<Playlist>> getCurrentUsersPlaylist(String id);

  Future<ApiResult<Playlist>> getUsersPlaylist(String id);

  Future<ApiResult<Playlist>> createPlaylist(String id);

  Future<ApiResult<Playlist>> getFeaturedPlaylist(String id);

  Future<ApiResult<Playlist>> getCategoriesPlaylist(String id);

  Future<ApiResult<Playlist>> getPlaylistCoverImage(String id);

  Future<ApiResult<Playlist>> addCustomPlaylistCoverImage(String id);
}
