import 'package:flutter/material.dart';
import 'package:notesapp/contstants.dart';

class CustomTextFieled extends StatelessWidget {
  CustomTextFieled({super.key, required this.hintName, this.maxLines = 1});
  final String hintName;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintName,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
