import 'package:freezed_annotation/freezed_annotation.dart';
part 'playlist.freezed.dart';
part 'playlist.g.dart';

@freezed
class Playlist with _$Playlist {

  const factory Playlist({String? url,int? width,int? height}) = _Playlist;

  factory Playlist.fromJson(Map<String, Object?> json)
  => _$PlaylistFromJson(json);

}
