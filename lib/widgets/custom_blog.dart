import 'package:assignment/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomBlog extends StatelessWidget {
  const CustomBlog({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14,),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "lib/assets/images/pfp.jpeg",
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 9,),
              const Text("Jyoti Prasad", style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                fontFamily: "lib/assets/fonts/interregular.ttf",
              ),)
            ],
          ),
          const SizedBox(height: 4,),
          Stack(
            children: [
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xffBBBBBB), width: 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "lib/assets/images/coverPhoto.png",
                    height: 176,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 9,
                  left: 238,
                  bottom: 138,
                  width: 200,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: const Text(
                      "Participants: 12",
                      style: TextStyle(fontSize: 13, fontFamily: "lib/assets/fonts/interregular.ttf",),
                    ),
                  )),
            ],
          ),
          const SizedBox(height: 9,),
          const Text(
            "3 Day Figma design Learn Challenge",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: "lib/assets/fonts/interregular.ttf",
                color: Color(0xff2B2B2B)),
          ),
          const SizedBox(height: 7,),
          const Text(
            "Heyhey.net - Free Download for Games & ApAnd Free Download for Games ...",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontFamily: "lib/assets/fonts/interregular.ttf",
                color: Color(0xff6C6C6C)),
          ),
          const SizedBox(height: 15,),
          const CustomButton(),
          const SizedBox(height: 23,),
          //const Divider(height: 1, color: Color(0xffDFDFDF),)
        ],
      ),
    );
  }
}
