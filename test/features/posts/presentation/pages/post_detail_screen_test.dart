import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_detail/post_detail_cubit.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_detail/post_detail_state.dart';
import 'package:flutter_bloc_sample_v3/features/posts/data/models/post.dart';
import 'package:flutter_bloc_sample_v3/features/posts/presentation/pages/post_detail_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostDetailCubit extends Mock implements PostDetailCubit {}

void main() {
  late MockPostDetailCubit mockPostDetailCubit;

  setUp(() {
    mockPostDetailCubit = MockPostDetailCubit();

    when(() => mockPostDetailCubit.state).thenReturn(PostDetailState.initial());
    when(() => mockPostDetailCubit.stream).thenAnswer((_) => Stream.empty());
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<PostDetailCubit>.value(
        value: mockPostDetailCubit,
        child: const PostDetailScreen(),
      ),
    );
  }

  testWidgets('should display post details when state is loaded', (
    tester,
  ) async {
    // 3. Stub the state to simulate the Cubit successfully fetching the post by ID
    final post = Post(id: 1, title: 'Test Title', body: 'Test Body');
    when(
      () => mockPostDetailCubit.state,
    ).thenReturn(PostDetailState.loaded(post));

    // 4. Pump the widget
    await tester.pumpWidget(createWidgetUnderTest());

    // 5. Verify the UI renders the post details
    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('Test Body'), findsOneWidget);
  });
}
