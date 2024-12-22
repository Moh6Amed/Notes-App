import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
      ),
      body: ListView(),
    );
  }
}