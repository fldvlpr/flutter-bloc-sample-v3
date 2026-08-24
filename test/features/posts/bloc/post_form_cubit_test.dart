import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_form/post_form_cubit.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_form/post_form_state.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostRepository extends Mock implements PostRepository {}

void main() {
  late PostFormCubit postFormCubit;
  late MockPostRepository mockPostRepository;

  setUp(() {
    mockPostRepository = MockPostRepository();
    postFormCubit = PostFormCubit(postRepository: mockPostRepository);
  });

  group('post form cubit', () {
    final post = Post(id: 1, title: 'title', body: 'body');
    blocTest<PostFormCubit, PostFormState>(
      'should emit [loading, loaded] state when create post success',
      build: () {
        when(
          () => mockPostRepository.createPost('title', 'body'),
        ).thenAnswer((_) async => post);

        return postFormCubit;
      },
      act: (bloc) => bloc.createPost('title', 'body'),
      expect: () => [
        const PostFormState.loading(),
        PostFormState.success(post),
      ],
      verify: (_) => [
        verify(() => mockPostRepository.createPost('title', 'body')).called(1),
      ],
    );

    blocTest<PostFormCubit, PostFormState>(
      'should emit [loading, failure] state when create post failure',
      build: () {
        when(
          () => mockPostRepository.createPost('title', 'body'),
        ).thenThrow(Exception('error'));

        return postFormCubit;
      },
      act: (bloc) => bloc.createPost('title', 'body'),
      expect: () => [
        const PostFormState.loading(),
        const PostFormState.failure('Exception: error'),
      ],
      verify: (_) => [
        verify(() => mockPostRepository.createPost('title', 'body')).called(1),
      ],
    );
  });
}
