import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_state.dart';
import 'package:go_router/go_router.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (BuildContext context, state) {
          return state.maybeWhen(
            loading: () => Center(child: CircularProgressIndicator()),
            loaded: (posts) => ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Card(
                  elevation: 4,
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    onTap: () {
                      context.push('/posts/${post.id}');
                    },
                    title: Text(post.title),
                    subtitle: Text(post.body),
                  ),
                );
              },
            ),
            orElse: () => Center(child: Text('No Records')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          context.push('/posts/create');
        },
      ),
    );
  }
}
