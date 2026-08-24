import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_detail/post_detail_cubit.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_detail/post_detail_state.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostRepository extends Mock implements PostRepository {}

void main() {
  late PostDetailCubit postDetailCubit;
  late MockPostRepository mockPostRepository;

  setUp(() {
    mockPostRepository = MockPostRepository();
    postDetailCubit = PostDetailCubit(postRepository: mockPostRepository);
  });

  group('post detail cubit', () {
    final post = Post(id: 1, title: 'title', body: 'body');
    blocTest<PostDetailCubit, PostDetailState>(
      'should emit [loading, loaded] state when fetch data success',
      build: () {
        when(
          () => mockPostRepository.getPostById(1),
        ).thenAnswer((_) async => post);

        return postDetailCubit;
      },
      act: (bloc) => bloc.fetchPostById(1),
      expect: () => [PostDetailState.loading(), PostDetailState.loaded(post)],
      verify: (_) => [
        verify(() => mockPostRepository.getPostById(1)).called(1),
      ],
    );

    blocTest<PostDetailCubit, PostDetailState>(
      'should emit [loading, failure] state when fetch data failure',
      build: () {
        when(
          () => mockPostRepository.getPostById(1),
        ).thenThrow(Exception('error'));

        return postDetailCubit;
      },
      act: (bloc) => bloc.fetchPostById(1),
      expect: () => [
        PostDetailState.loading(),
        PostDetailState.failure('Exception: error'),
      ],
      verify: (_) => [
        verify(() => mockPostRepository.getPostById(1)).called(1),
      ],
    );
  });
}
