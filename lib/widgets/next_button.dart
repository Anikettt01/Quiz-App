import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  const RectangularButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.grey.shade300;
            }
            return Colors.indigo;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: onPressed != null ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
