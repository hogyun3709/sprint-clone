import 'package:flutter/material.dart';

class CuiSpinner extends StatelessWidget {
  final Color? color;
  final double size;

  const CuiSpinner({
    Key? key,
    this.color,
    this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(
            color ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
