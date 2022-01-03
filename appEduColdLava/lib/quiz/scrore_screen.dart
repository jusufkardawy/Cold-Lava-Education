import 'package:appEduColdLava/main_screen.dart';
import 'package:appEduColdLava/quiz/question_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appEduColdLava/constants.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const Spacer(flex: 2),
              Text(
                "Score",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: kSecondaryColor,
                    ),
              ),
              const Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: kSecondaryColor,
                    ),
              ),
              const Spacer(flex: 2),
              CupertinoButton(
                color: Colors.blue,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("Kembali")
                  ],
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                      MainScreen()), (Route<dynamic> route) => false);
                },
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
