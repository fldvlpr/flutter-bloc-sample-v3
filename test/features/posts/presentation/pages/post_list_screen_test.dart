import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/posts/post_state.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v3/features/posts/presentation/pages/post_list_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostBloc extends Mock implements PostBloc {}

void main() {
  late MockPostBloc mockPostBloc;

  setUp(() {
    mockPostBloc = MockPostBloc();

    when(() => mockPostBloc.state).thenReturn(PostState.initial());
    when(() => mockPostBloc.stream).thenAnswer((_) => Stream.empty());
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<PostBloc>.value(
        value: mockPostBloc,
        child: const PostListScreen(),
      ),
    );
  }

  testWidgets('should display listview when loaded state', (tester) async {
    final post = Post(id: 1, title: 'title', body: 'body');

    when(() => mockPostBloc.state).thenReturn(PostState.loaded([post]));

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.text('title'), findsOneWidget);
    expect(find.text('body'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
  });

  testWidgets('should display no records when failure state', (tester) async {
    when(() => mockPostBloc.state).thenReturn(const PostState.failure('error'));

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.text('No Records'), findsOneWidget);
  });
}
