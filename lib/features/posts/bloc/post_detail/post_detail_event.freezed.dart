// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostDetailEvent {

 int get id;
/// Create a copy of PostDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostDetailEventCopyWith<PostDetailEvent> get copyWith => _$PostDetailEventCopyWithImpl<PostDetailEvent>(this as PostDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDetailEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostDetailEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $PostDetailEventCopyWith<$Res>  {
  factory $PostDetailEventCopyWith(PostDetailEvent value, $Res Function(PostDetailEvent) _then) = _$PostDetailEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$PostDetailEventCopyWithImpl<$Res>
    implements $PostDetailEventCopyWith<$Res> {
  _$PostDetailEventCopyWithImpl(this._self, this._then);

  final PostDetailEvent _self;
  final $Res Function(PostDetailEvent) _then;

/// Create a copy of PostDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PostDetailEvent].
extension PostDetailEventPatterns on PostDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchPostByEvent value)?  fetchPostById,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchPostByEvent() when fetchPostById != null:
return fetchPostById(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchPostByEvent value)  fetchPostById,}){
final _that = this;
switch (_that) {
case FetchPostByEvent():
return fetchPostById(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchPostByEvent value)?  fetchPostById,}){
final _that = this;
switch (_that) {
case FetchPostByEvent() when fetchPostById != null:
return fetchPostById(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  fetchPostById,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchPostByEvent() when fetchPostById != null:
return fetchPostById(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  fetchPostById,}) {final _that = this;
switch (_that) {
case FetchPostByEvent():
return fetchPostById(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  fetchPostById,}) {final _that = this;
switch (_that) {
case FetchPostByEvent() when fetchPostById != null:
return fetchPostById(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class FetchPostByEvent implements PostDetailEvent {
  const FetchPostByEvent(this.id);
  

@override final  int id;

/// Create a copy of PostDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchPostByEventCopyWith<FetchPostByEvent> get copyWith => _$FetchPostByEventCopyWithImpl<FetchPostByEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchPostByEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostDetailEvent.fetchPostById(id: $id)';
}


}

/// @nodoc
abstract mixin class $FetchPostByEventCopyWith<$Res> implements $PostDetailEventCopyWith<$Res> {
  factory $FetchPostByEventCopyWith(FetchPostByEvent value, $Res Function(FetchPostByEvent) _then) = _$FetchPostByEventCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class _$FetchPostByEventCopyWithImpl<$Res>
    implements $FetchPostByEventCopyWith<$Res> {
  _$FetchPostByEventCopyWithImpl(this._self, this._then);

  final FetchPostByEvent _self;
  final $Res Function(FetchPostByEvent) _then;

/// Create a copy of PostDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(FetchPostByEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
