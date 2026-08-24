import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_form/post_form_state.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';

class PostFormCubit extends Cubit<PostFormState> {
  PostFormCubit({required this.postRepository})
    : super(PostFormState.initial());

  final PostRepository postRepository;

  Future<void> createPost(String title, String body) async {
    emit(PostFormState.loading());

    try {
      final post = await postRepository.createPost(title, body);

      emit(PostFormState.success(post));
    } catch (e) {
      emit(PostFormState.failure(e.toString()));
    }
  }
}
