import 'package:flutter/material.dart';
import 'package:sprint_clone/core/model/on_boarding/onboarding_content.dart';
import 'package:sprint_clone/core/services/shared_preference_service/shared_preference_service.dart';
import 'package:stacked/stacked.dart';

class OnboardingViewModel extends BaseViewModel {
  final PageController pageController = PageController();
  int currerntPage = 0;
  bool get isLastPage =>
      pageController.hasClients &&
      currerntPage == onBoardingContents.length - 1;
  bool userOnboardingStatus = false;
  List<OnBoardingContent> onBoardingContents = const [
    OnBoardingContent(
        title: "대-충 기록해도 \n찰-떡 같이 관리해주는 \n꽤나 괜찮은 식단 메이트",
        description: "드셨던 것을 아-무-렇-게-나 작성해주시면, 한땀한땀 계산해드려요-"),
    OnBoardingContent(
        title: "아-무-렇-게-나 \n입력해주세요",
        description: "글, 아까 찍은 사진, 영수증, 목소리 등등 가장 편한 방식으로 알려주세요",
        hasAdditionalContents: true,
        additionContentsDetail: [
          "\u{270F}\n글",
          "\u{1F4F7}\n사진",
          "\u{1F3A4}\n목소리",
          "\u{1F4F0}\n영수증",
          "\u{1F3EB}\n학교/회사\n식단표",
          "\u{1F170}\n초성"
        ]),
    OnBoardingContent(
        title: "아-무-렇-게-나 \n그조차도 편리하게",
        description:
            "지금까지 스프린트가 처리한 천만개 넘는 식단 데이터와 11만개가 넘는 음식 데이터를 활용한 정-밀한 추천"),
    OnBoardingContent(title: "찰-떡같이 처리해 드릴게요\n건강한 마음에만 신경쓰세요")
  ];

  void init() async {
    userOnboardingStatus =
        await SharedPreferenceService.getUserOnBoardingStatus();
    notifyListeners();
  }

  void updateCurrentPage(int value) {
    currerntPage = value;
    notifyListeners();
  }

  String getContentButtonTitle() {
    if (isLastPage) {
      return "#가보자고";
    } else {
      return "다음";
    }
  }

  void moveNextStep() {
    if (isLastPage) {
      _userHasCompletedOnboardingProcess();
    } else {
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  void _userHasCompletedOnboardingProcess() {
    SharedPreferenceService.setUserOnBoardingStatus(true);
    userOnboardingStatus = true;
    notifyListeners();
  }

  void disposeAll() {
    pageController.dispose();
    super.dispose();
  }
}
