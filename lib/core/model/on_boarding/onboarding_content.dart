import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_content.freezed.dart';

@freezed
class OnBoardingContent with _$OnBoardingContent {
  const factory OnBoardingContent({
    String? title,
    String? description,
    @Default(false)bool? hasAdditionalContents,
    List<String>? additionContentsDetail,
  }) = _OnBoardingContent;
}
