import 'package:flutter/material.dart';

class FYItem extends StatelessWidget {
  final bool active;
  final IconData icon;
  final String text;
  const FYItem(
      {Key? key, required this.active, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: active ? const Color(0xff177DFF) : const Color(0xffF3F3F3)),
        width: 100,
        height: 80,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: active ? Colors.white : Colors.grey[700],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: TextStyle(
                    color: active ? Colors.white : Colors.grey[800],
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}
