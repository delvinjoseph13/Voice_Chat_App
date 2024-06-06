import 'package:allen/pallete.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  const FeatureBox({super.key, required this.Headertext, required this.color,required this.descriptiontext});
  final String Headertext;
  final String descriptiontext;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0).copyWith(left: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Headertext,
                style: const TextStyle(
                    fontFamily: 'Cera Pro',
                    fontWeight: FontWeight.bold,
                    color: Pallete.blackColor,
                    fontSize: 18),
              ),
            ),
            const SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.only(right: 22),
              child: Text(
                descriptiontext,
                style: const TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.blackColor,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
