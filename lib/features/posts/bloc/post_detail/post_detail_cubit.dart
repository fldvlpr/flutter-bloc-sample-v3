import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_detail/post_detail_state.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';

class PostDetailCubit extends Cubit<PostDetailState> {
  PostDetailCubit({required this.postRepository})
    : super(PostDetailState.initial());

  final PostRepository postRepository;

  Future<void> fetchPostById(int id) async {
    emit(PostDetailState.loading());

    try {
      final post = await postRepository.getPostById(id);

      emit(PostDetailState.loaded(post));
    } catch (e) {
      emit(PostDetailState.failure(e.toString()));
    }
  }
}
