import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_detail/post_detail_cubit.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_detail/post_detail_state.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Detail')),
      body: BlocBuilder<PostDetailCubit, PostDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => Center(child: CircularProgressIndicator()),
            loaded: (post) => Column(
              children: [
                Text(post.title),
                SizedBox(height: 8),
                Text(
                  post.body,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            orElse: () => Center(child: Text('No Records')),
          );
        },
      ),
    );
  }
}
