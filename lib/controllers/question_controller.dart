import 'package:flutter/animation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app_flutter/models/Questions.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  //progress bar animation
  AnimationController _animationController;
  Animation _animation;

  //access animation from outside
  Animation get animation => this._animation;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
          id: question['id'],
          question: question['question'],
          options: question['options'],
          answer: question['answer_index'],
        ),
      )
      .toList();

  List<Question> get questions => this._questions;

  @override
  void onInit() {
    //animation duration is 60. Need to fill the progress bar within 60 secs
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    //starts animation
    _animationController.forward();
    super.onInit();
  }
}
