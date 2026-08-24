import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_state.freezed.dart';

@freezed
abstract class PostDetailState with _$PostDetailState {
  const factory PostDetailState.initial() = _Initial;
  const factory PostDetailState.loading() = _Loading;
  const factory PostDetailState.loaded(Post post) = _Loaded;
  const factory PostDetailState.failure(String message) = _Error;
}
