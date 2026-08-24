import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Post', () {
    test('should parse json correctly', () {
      final jsonMap = {'id': 1, 'title': 'title', 'body': 'body'};

      final post = Post.fromJson(jsonMap);

      expect(post, isA<Post>());
      expect(post.id, 1);
      expect(post.title, 'title');
      expect(post.body, 'body');
    });
  });
}
