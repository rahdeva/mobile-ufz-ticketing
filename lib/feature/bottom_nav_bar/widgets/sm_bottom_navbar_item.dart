import '/resources/resources.dart';
import 'package:flutter/material.dart';

class SMBottomNavBarItem extends StatelessWidget {
  const SMBottomNavBarItem({
    super.key, 
    required this.imageDeactive,
    required this.imageActive,
    required this.label,
    required this.index,
    required this.onTap,
    this.currentIndex = 0,
    this.notifCounter = 0,
  });

  final ValueChanged<int> onTap;
  final Image imageDeactive;
  final Image imageActive;
  final int currentIndex;
  final int notifCounter;
  final int index;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 56,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {
              onTap(index);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 3),
                SizedBox(
                  height: 24,
                  child: Container(
                    alignment: Alignment.center,
                    child: currentIndex == index
                        ? imageActive
                        : imageDeactive
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  label,
                  style: TextStyle(
                    color: (
                      currentIndex == index
                        ? AppColors.blue
                        : AppColors.gray500
                    ),
                    fontSize: 12,
                    fontWeight: currentIndex == index
                        ? FontWeight.w700
                        : FontWeight.w500
                  )
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
