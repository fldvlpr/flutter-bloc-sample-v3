import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/core/di/injection.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_detail/post_detail_cubit.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_form/post_form_cubit.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_event.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/repositories/post_repository.dart';
import 'package:flutter_bloc_sample_v3/features/posts/presentation/pages/post_detail_screen.dart';
import 'package:flutter_bloc_sample_v3/features/posts/presentation/pages/post_form_screen.dart';
import 'package:flutter_bloc_sample_v3/features/posts/presentation/pages/post_list_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/posts',
  routes: [
    GoRoute(
      path: '/posts',
      name: 'posts',
      builder: (context, state) {
        return BlocProvider(
          create: (context) =>
              PostBloc(postRepository: getIt<PostRepository>())
                ..add(FetchPostsEvent()),
          child: const PostListScreen(),
        );
      },
    ),

    GoRoute(
      path: '/posts/create',
      name: 'create-post',
      builder: (context, state) {
        return BlocProvider(
          create: (context) =>
              PostFormCubit(postRepository: getIt<PostRepository>()),
          child: const PostFormScreen(),
        );
      },
    ),

    GoRoute(
      path: '/posts/:id',
      name: 'post-detail',
      builder: (context, state) {
        final idString = state.pathParameters['id']!;

        return BlocProvider(
          create: (context) =>
              PostDetailCubit(postRepository: getIt<PostRepository>())
                ..fetchPostById(int.parse(idString)),
          child: PostDetailScreen(),
        );

        // return ;
      },
    ),
  ],
);
