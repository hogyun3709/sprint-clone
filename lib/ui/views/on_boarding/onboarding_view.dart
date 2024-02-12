import 'package:flutter/material.dart';
import 'package:sprint_clone/ui/common/components/cui_button.dart';
import 'package:sprint_clone/ui/common/ui_helpers.dart';
import 'package:sprint_clone/ui/views/on_boarding/components/onboarding_section.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        onDispose: (viewModel) => viewModel.disposeAll(),
        viewModelBuilder: () => OnboardingViewModel(),
        builder: (context, viewModel, child) => Stack(
              children: [
                SizedBox(
                    height: screenHeight(context),
                    child: PageView.builder(
                        onPageChanged: (value) =>
                            {viewModel.updateCurrentPage(value)},
                        itemCount: viewModel.onBoardingContents.length,
                        controller: viewModel.pageController,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              width: screenWidth(context),
                              child: OnBoardingSection(
                                data: viewModel.onBoardingContents[index],
                                numOfItemToShow: 3,
                                titleStyle: const TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                                descriptionStyle: const TextStyle(fontSize: 16),
                              ));
                        })),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 28, horizontal: 20),
                      child: CuiButton(
                        onTap: () {
                          viewModel.pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        title: viewModel.getContentButtonTitle(),
                        backgroundColor: const Color(0xFFd3605b),
                      ),
                    )
                  ],
                )
              ],
            ));
  }
}
