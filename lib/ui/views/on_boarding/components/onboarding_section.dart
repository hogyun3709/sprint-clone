import 'package:flutter/material.dart';
import 'package:sprint_clone/core/model/on_boarding/onboarding_content.dart';
import 'package:sprint_clone/ui/common/ui_helpers.dart';

class OnBoardingSection extends StatelessWidget {
  OnBoardingSection(
      {super.key,
      required this.data,
      this.titleStyle,
      this.titlePadding,
      this.descriptionStyle,
      this.descriptionPadding,
      this.numOfItemToShow = 2})
      : assert(numOfItemToShow == 2 || numOfItemToShow == 3,
            'numOfItemToShow must be 2 or 3.\n Otherwise, you need to mange buildItems width and heigth');

  OnBoardingContent data;
  TextStyle? titleStyle;
  Padding? titlePadding;
  TextStyle? descriptionStyle;
  Padding? descriptionPadding;
  int numOfItemToShow;

  Widget buildItems(
      BuildContext context, List<String?> items, int numOfItemToShow) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items.map((item) {
        return Container(
          width: screenWidth(context) * (1 / numOfItemToShow) * 0.9,
          height: screenWidth(context) * (1 / numOfItemToShow) * 0.9,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              item ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Text(
            data.title ?? "",
            style: titleStyle,
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpace(4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: Text(
            data.description ?? "",
            style: descriptionStyle,
            textAlign: TextAlign.center,
          ),
        ),
        if (data.hasAdditionalContents == true) ...[
          verticalSpace(12),
          SizedBox(
            height: screenHeight(context) * 0.2,
            child: PageView.builder(
              padEnds: false,
              itemCount:
                  ((data.additionContentsDetail?.length ?? 0) / numOfItemToShow)
                      .ceil(),
              itemBuilder: (context, pageIndex) {
                final startIndex = pageIndex * numOfItemToShow;
                final endIndex = startIndex + (numOfItemToShow - 1);
                final items = <String?>[];
                for (int i = startIndex; i <= endIndex; i++) {
                  if (i < (data.additionContentsDetail?.length ?? 0)) {
                    items.add(data.additionContentsDetail?[i]);
                  } else {
                    items.add(null);
                  }
                }
                return buildItems(context, items, numOfItemToShow);
              },
            ),
          ),
        ]
      ],
    );
  }
}
