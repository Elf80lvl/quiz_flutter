import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/constants.dart';
import 'package:quiz_app_flutter/controllers/question_controller.dart';
import 'package:quiz_app_flutter/models/Questions.dart';
import 'package:quiz_app_flutter/screens/quiz/components/progress_bar.dart';
import 'package:quiz_app_flutter/screens/quiz/components/question_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());

    return Stack(
      children: [
        // WebsafeSvg.asset(
        //   'assets/icons/bg.svg',
        //   fit: BoxFit.fill,
        // ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text.rich(
                  TextSpan(
                    text: 'Question 1',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: '/10',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
