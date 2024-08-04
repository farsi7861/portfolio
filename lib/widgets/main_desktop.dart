import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: h / 1.2,
        constraints: const BoxConstraints(minHeight: 350),
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hi,\nI'm Salman Farsi\nA Flutter Developer",
                  style: TextStyle(
                      height: 1.5, fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: CustomColor.yellowPrimary,
                  ),
                  child: const Center(
                    child: Text(
                      "Get in touch",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Image.asset('dash.png', width: w * 0.5),
          ],
        ));
  }
}
