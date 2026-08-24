import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_event.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_state.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/models/post_response.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';

class MockPostRepository extends Mock implements PostRepository {}

void main() {
  late PostBloc postBloc;
  late MockPostRepository mockPostRepository;

  setUp(() {
    mockPostRepository = MockPostRepository();
    postBloc = PostBloc(postRepository: mockPostRepository);
  });

  group('PostBloc', () {
    final post = Post(id: 1, title: 'title', body: 'body');

    blocTest<PostBloc, PostState>(
      'should emit [loading, loaded] state when fetch data success',
      build: () {
        when(
          () => mockPostRepository.getPosts(),
        ).thenAnswer((_) async => PostResponse(posts: [post]));

        return postBloc;
      },
      act: (bloc) => bloc.add(FetchPostsEvent()),
      expect: () => [
        PostState.loading(),
        PostState.loaded([post]),
      ],
      verify: (_) => [verify(() => mockPostRepository.getPosts()).called(1)],
    );

    blocTest<PostBloc, PostState>(
      'should emit [loading, failure] state when fetch data failure',
      build: () {
        when(() => mockPostRepository.getPosts()).thenThrow(Exception('error'));

        return postBloc;
      },
      act: (bloc) => bloc.add(FetchPostsEvent()),
      expect: () => [
        PostState.loading(),
        PostState.failure('Exception: error'),
      ],
      verify: (_) => [verify(() => mockPostRepository.getPosts()).called(1)],
    );
  });
}
