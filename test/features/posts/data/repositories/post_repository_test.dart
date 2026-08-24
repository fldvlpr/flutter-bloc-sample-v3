import 'package:flutter_bloc_sample_v3/features/posts/data/data_providers.dart/post_data_provider.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostDataProvider extends Mock implements PostDataProvider {}

void main() {
  late MockPostDataProvider mockPostDataProvider;
  late PostRepository postRepository;

  setUp(() {
    mockPostDataProvider = MockPostDataProvider();
    postRepository = PostRepository(postDataProvider: mockPostDataProvider);
  });

  group('getPosts', () {
    test('should call getPosts from PostDataProvider', () async {
      final posts = [
        {'id': 1, 'title': 'title', 'body': 'body'},
      ];
      final postResponse = {
        'posts': [posts],
      };

      when(
        () => mockPostDataProvider.getPosts(),
      ).thenAnswer((_) async => postResponse);

      final result = await postRepository.getPosts();

      expect(result.posts.length, 1);
      expect(result.posts.first.id, 1);
      verify(() => mockPostDataProvider.getPosts()).called(1);
    });
  });

  group('getPostById', () {
    test('should call getPostById from PostDataProvider', () async {
      final post = {'id': 1, 'title': 'title', 'body': 'body'};

      when(
        () => mockPostDataProvider.getPostById(any()),
      ).thenAnswer((_) async => post);

      final result = await postRepository.getPostById(1);

      expect(result.id, 1);
      verify(() => mockPostDataProvider.getPostById(1)).called(1);
    });
  });

  group('createPost', () {
    test('should call createPost from PostDataProvider', () async {
      final post = {'id': 1, 'title': 'title', 'body': 'body'};

      when(
        () => mockPostDataProvider.createPost(any()),
      ).thenAnswer((_) async => post);

      final result = await postRepository.createPost('title', 'body');

      expect(result.id, 1);
      verify(
        () =>
            mockPostDataProvider.createPost({'title': 'title', 'body': 'body'}),
      ).called(1);
    });
  });
}
