// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostFormEvent {

 String get title; String get body;
/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostFormEventCopyWith<PostFormEvent> get copyWith => _$PostFormEventCopyWithImpl<PostFormEvent>(this as PostFormEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,title,body);

@override
String toString() {
  return 'PostFormEvent(title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class $PostFormEventCopyWith<$Res>  {
  factory $PostFormEventCopyWith(PostFormEvent value, $Res Function(PostFormEvent) _then) = _$PostFormEventCopyWithImpl;
@useResult
$Res call({
 String title, String body
});




}
/// @nodoc
class _$PostFormEventCopyWithImpl<$Res>
    implements $PostFormEventCopyWith<$Res> {
  _$PostFormEventCopyWithImpl(this._self, this._then);

  final PostFormEvent _self;
  final $Res Function(PostFormEvent) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? body = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostFormEvent].
extension PostFormEventPatterns on PostFormEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreatePostEvent value)?  createPost,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreatePostEvent value)  createPost,}){
final _that = this;
switch (_that) {
case CreatePostEvent():
return createPost(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreatePostEvent value)?  createPost,}){
final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title,  String body)?  createPost,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that.title,_that.body);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title,  String body)  createPost,}) {final _that = this;
switch (_that) {
case CreatePostEvent():
return createPost(_that.title,_that.body);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title,  String body)?  createPost,}) {final _that = this;
switch (_that) {
case CreatePostEvent() when createPost != null:
return createPost(_that.title,_that.body);case _:
  return null;

}
}

}

/// @nodoc


class CreatePostEvent implements PostFormEvent {
  const CreatePostEvent(this.title, this.body);
  

@override final  String title;
@override final  String body;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostEventCopyWith<CreatePostEvent> get copyWith => _$CreatePostEventCopyWithImpl<CreatePostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,title,body);

@override
String toString() {
  return 'PostFormEvent.createPost(title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class $CreatePostEventCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $CreatePostEventCopyWith(CreatePostEvent value, $Res Function(CreatePostEvent) _then) = _$CreatePostEventCopyWithImpl;
@override @useResult
$Res call({
 String title, String body
});




}
/// @nodoc
class _$CreatePostEventCopyWithImpl<$Res>
    implements $CreatePostEventCopyWith<$Res> {
  _$CreatePostEventCopyWithImpl(this._self, this._then);

  final CreatePostEvent _self;
  final $Res Function(CreatePostEvent) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,}) {
  return _then(CreatePostEvent(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
