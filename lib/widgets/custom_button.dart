import 'package:flutter/material.dart';
import 'package:notesapp/contstants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: const Center(
            child: Text(
          'Save',
          style: TextStyle(fontSize: 20, color: Colors.black),
        )),
      ),
    );
  }
}
