import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => Dialog(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F4FD),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 363,
                          width: 309,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              const Text(
                                "Keep putting effort, Proud of you",
                                style: TextStyle(
                                    fontFamily: "lib/assets/fonts/interregular.ttf",
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              ),
                              const SizedBox(height: 18,),
                              Image.asset(
                                "lib/assets/images/dialogbox.png",
                                height: 102,
                                width: 85,
                              ),
                              const SizedBox(height: 20,),
                              SizedBox(
                                height: 94,
                                child: TextField(
                                  maxLines: 4,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(5),
                                    hintText:
                                        "Share your feeling on group to encourage other participants ",
                                    hintStyle: TextStyle(
                                        color: const Color(0xffB0B0B0)
                                            .withOpacity(0.9),
                                        fontSize: 12,
                                        fontFamily: "lib/assets/fonts/interregular.ttf",
                                        fontWeight: FontWeight.w400),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xffD8D8D8), width: 1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xffD8D8D8), width: 1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                alignment: Alignment.center,
                                height: 39,
                                //padding: const EdgeInsets.symmetric(horizontal: 112, vertical: 3),
                                decoration: BoxDecoration(
                                    color: const Color(0xff3290FF),
                                    borderRadius: BorderRadius.circular(25)),
                                child: const Text(
                                  "Post",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: "lib/assets/fonts/interregular.ttf",
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                                height: 31,
                                width: 31,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: const FaIcon(FontAwesomeIcons.xmark, color: Colors.black,),
                              ),
                            )
                            )
                      ],
                    ),
                  ),
                ));
      },
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 112, vertical: 3),
        decoration: BoxDecoration(
            color: const Color(0xff9B75EF),
            borderRadius: BorderRadius.circular(12)),
        child: const Text(
          "Show Challenge",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "lib/assets/fonts/interregular.ttf",
              fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
