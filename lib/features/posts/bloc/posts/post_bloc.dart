import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_event.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({required this.postRepository}) : super(PostState.initial()) {
    on<FetchPostsEvent>(_fetchPosts);
  }

  final PostRepository postRepository;

  Future<void> _fetchPosts(
    FetchPostsEvent event,
    Emitter<PostState> emit,
  ) async {
    try {
      emit(PostState.loading());

      final posts = await postRepository.getPosts();

      emit(PostState.loaded(posts.posts));
    } catch (e) {
      emit(PostState.failure(e.toString()));
    }
  }
}
