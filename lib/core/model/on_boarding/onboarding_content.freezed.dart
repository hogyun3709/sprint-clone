// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnBoardingContent {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get hasAdditionalContents => throw _privateConstructorUsedError;
  List<String>? get additionContentsDetail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnBoardingContentCopyWith<OnBoardingContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingContentCopyWith<$Res> {
  factory $OnBoardingContentCopyWith(
          OnBoardingContent value, $Res Function(OnBoardingContent) then) =
      _$OnBoardingContentCopyWithImpl<$Res, OnBoardingContent>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      bool? hasAdditionalContents,
      List<String>? additionContentsDetail});
}

/// @nodoc
class _$OnBoardingContentCopyWithImpl<$Res, $Val extends OnBoardingContent>
    implements $OnBoardingContentCopyWith<$Res> {
  _$OnBoardingContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? hasAdditionalContents = freezed,
    Object? additionContentsDetail = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hasAdditionalContents: freezed == hasAdditionalContents
          ? _value.hasAdditionalContents
          : hasAdditionalContents // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionContentsDetail: freezed == additionContentsDetail
          ? _value.additionContentsDetail
          : additionContentsDetail // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnBoardingContentImplCopyWith<$Res>
    implements $OnBoardingContentCopyWith<$Res> {
  factory _$$OnBoardingContentImplCopyWith(_$OnBoardingContentImpl value,
          $Res Function(_$OnBoardingContentImpl) then) =
      __$$OnBoardingContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      bool? hasAdditionalContents,
      List<String>? additionContentsDetail});
}

/// @nodoc
class __$$OnBoardingContentImplCopyWithImpl<$Res>
    extends _$OnBoardingContentCopyWithImpl<$Res, _$OnBoardingContentImpl>
    implements _$$OnBoardingContentImplCopyWith<$Res> {
  __$$OnBoardingContentImplCopyWithImpl(_$OnBoardingContentImpl _value,
      $Res Function(_$OnBoardingContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? hasAdditionalContents = freezed,
    Object? additionContentsDetail = freezed,
  }) {
    return _then(_$OnBoardingContentImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hasAdditionalContents: freezed == hasAdditionalContents
          ? _value.hasAdditionalContents
          : hasAdditionalContents // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionContentsDetail: freezed == additionContentsDetail
          ? _value._additionContentsDetail
          : additionContentsDetail // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$OnBoardingContentImpl implements _OnBoardingContent {
  const _$OnBoardingContentImpl(
      {this.title,
      this.description,
      this.hasAdditionalContents = false,
      final List<String>? additionContentsDetail})
      : _additionContentsDetail = additionContentsDetail;

  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool? hasAdditionalContents;
  final List<String>? _additionContentsDetail;
  @override
  List<String>? get additionContentsDetail {
    final value = _additionContentsDetail;
    if (value == null) return null;
    if (_additionContentsDetail is EqualUnmodifiableListView)
      return _additionContentsDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OnBoardingContent(title: $title, description: $description, hasAdditionalContents: $hasAdditionalContents, additionContentsDetail: $additionContentsDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hasAdditionalContents, hasAdditionalContents) ||
                other.hasAdditionalContents == hasAdditionalContents) &&
            const DeepCollectionEquality().equals(
                other._additionContentsDetail, _additionContentsDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      hasAdditionalContents,
      const DeepCollectionEquality().hash(_additionContentsDetail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingContentImplCopyWith<_$OnBoardingContentImpl> get copyWith =>
      __$$OnBoardingContentImplCopyWithImpl<_$OnBoardingContentImpl>(
          this, _$identity);
}

abstract class _OnBoardingContent implements OnBoardingContent {
  const factory _OnBoardingContent(
      {final String? title,
      final String? description,
      final bool? hasAdditionalContents,
      final List<String>? additionContentsDetail}) = _$OnBoardingContentImpl;

  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get hasAdditionalContents;
  @override
  List<String>? get additionContentsDetail;
  @override
  @JsonKey(ignore: true)
  _$$OnBoardingContentImplCopyWith<_$OnBoardingContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
