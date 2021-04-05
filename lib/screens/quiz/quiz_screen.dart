import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding / 2),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
