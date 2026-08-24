import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_form_state.freezed.dart';

@freezed
abstract class PostFormState with _$PostFormState {
  const factory PostFormState.initial() = _Initial;
  const factory PostFormState.loading() = _Loading;
  const factory PostFormState.success(Post post) = _Success;
  const factory PostFormState.failure(String message) = _Failure;
}
