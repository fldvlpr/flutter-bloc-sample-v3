import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_form/post_form_cubit.dart';
import 'package:flutter_bloc_sample_v3/features/posts/bloc/post_form/post_form_state.dart';
import 'package:flutter_bloc_sample_v3/features/posts/presentation/pages/post_form_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockPostFormCubit extends Mock implements PostFormCubit {}

class MockGoRouter extends Mock implements GoRouter {}

void main() {
  late MockPostFormCubit mockPostFormCubit;
  late MockGoRouter mockGoRouter;

  setUp(() {
    mockPostFormCubit = MockPostFormCubit();
    mockGoRouter = MockGoRouter();

    when(
      () => mockPostFormCubit.state,
    ).thenReturn(const PostFormState.initial());
    when(
      () => mockPostFormCubit.stream,
    ).thenAnswer((_) => const Stream.empty());
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: InheritedGoRouter(
        goRouter: mockGoRouter,
        child: BlocProvider<PostFormCubit>.value(
          value: mockPostFormCubit,
          child: const PostFormScreen(),
        ),
      ),
    );
  }

  testWidgets('show errors when form is not valid', (tester) async {
    await tester.pumpWidget(createWidgetUnderTest());

    await tester.tap(find.text('Save'));
    await tester.pump();

    expect(find.text('Please enter title text'), findsOneWidget);
    expect(find.text('Please enter body text'), findsOneWidget);
  });

  testWidgets('calls createPost and pops when form is valid', (tester) async {
    when(
      () => mockPostFormCubit.createPost('My Title', 'My Body'),
    ).thenAnswer((_) async {});

    await tester.pumpWidget(createWidgetUnderTest());

    await tester.enterText(find.byType(TextFormField).first, 'My Title');
    await tester.enterText(find.byType(TextFormField).last, 'My Body');

    await tester.tap(find.text('Save'));
    await tester.pump();

    verify(() => mockPostFormCubit.createPost('My Title', 'My Body')).called(1);
    verify(() => mockGoRouter.pop()).called(1);
  });
}
