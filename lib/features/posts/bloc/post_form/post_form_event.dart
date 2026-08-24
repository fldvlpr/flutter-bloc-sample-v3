import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_form_event.freezed.dart';

@freezed
abstract class PostFormEvent with _$PostFormEvent {
  const factory PostFormEvent.createPost(String title, String body) =
      CreatePostEvent;
}
