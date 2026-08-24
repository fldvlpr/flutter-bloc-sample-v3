import 'package:flutter_bloc_sample_v3/features/posts/data/data_providers.dart/post_data_provider.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/models/post_response.dart';

class PostRepository {
  final PostDataProvider postDataProvider;

  PostRepository({required this.postDataProvider});

  Future<PostResponse> getPosts() async {
    final result = await postDataProvider.getPosts();

    return PostResponse.fromJson(result);
  }

  Future<Post> getPostById(int id) async {
    final result = await postDataProvider.getPostById(id);

    return Post.fromJson(result);
  }

  Future<Post> createPost(String title, String body) async {
    final result = await postDataProvider.createPost({
      'title': title,
      'body': body,
    });

    return Post.fromJson(result);
  }
}
