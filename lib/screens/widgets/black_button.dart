import 'package:entry_task/res/app_colors.dart';
import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  const BlackButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              color: AppColors.colorBlack,
              borderRadius: BorderRadius.circular(12.0)),
          child: Center(
            child: Text(
              name,
              style: const TextStyle(
                  color: AppColors.colorWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
