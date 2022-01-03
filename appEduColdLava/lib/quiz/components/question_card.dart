import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appEduColdLava/constants.dart';
import 'package:appEduColdLava/models/pertanyaan.dart';

import '../question_controller.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: kBlackColor,
                ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
