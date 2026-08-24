import 'package:flutter_bloc_sample_v3/core/network/api_client.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/data_providers.dart/post_data_provider.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerLazySingleton<http.Client>(() => http.Client());

  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      client: getIt<http.Client>(),
      baseUrl: 'https://dummyjson.com',
    ),
  );

  getIt.registerLazySingleton<PostDataProvider>(
    () => PostDataProvider(apiClient: getIt<ApiClient>()),
  );

  getIt.registerLazySingleton(
    () => PostRepository(postDataProvider: getIt<PostDataProvider>()),
  );
}
