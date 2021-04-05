import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/constants.dart';
import 'package:quiz_app_flutter/controllers/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff3f4768),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          print(controller.animation.value);
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  //60s is from 0 to 1
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${(controller.animation.value * 60).round()}'),
                      WebsafeSvg.asset('assets/icons/clock.svg'),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
