import 'package:flutter_bloc_sample_v3/core/network/api_client.dart';

class PostDataProvider {
  final ApiClient apiClient;

  PostDataProvider({required this.apiClient});

  Future<dynamic> getPosts() async {
    return apiClient.get('/posts');
  }

  Future<dynamic> getPostById(int id) async {
    return apiClient.get('/posts/$id');
  }

  Future<dynamic> createPost(Map<String, dynamic> body) async {
    return apiClient.post('/posts/add', body);
  }
}
