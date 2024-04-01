import 'package:assignment/widgets/custom_blog.dart';
import 'package:flutter/material.dart';

class FindChallenges extends StatelessWidget {
  const FindChallenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 19,
        ),
        title: const Text(
          "Find Challenges",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: "lib/assets/fonts/interregular.ttf",
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const Column(
              children: [
                CustomBlog(),
                Divider(
                  height: 1,
                  color: Color(0xffDFDFDF),
                )
              ],
            );
          }),
    );
  }
}
