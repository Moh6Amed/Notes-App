import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 200,
        padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text(
                'Flutter tips',
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 6),
                child: Text(
                  'Build your career with mohamed',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withAlpha(160)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                iconSize: 32,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Text(
                'December 22,2024',
                style: TextStyle(color: Colors.black.withAlpha(160)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
