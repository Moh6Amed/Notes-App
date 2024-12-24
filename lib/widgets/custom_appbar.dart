import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
    required this.pageTitle,
    required this.iconText,
    required this.icon,
  });
  final String pageTitle;
  final String iconText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              pageTitle,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text(
                iconText,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              icon: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                backgroundColor: Colors.grey,
                elevation: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
