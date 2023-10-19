import 'package:flutter/material.dart';

class StyledElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;
  final int progressSize = 18;

  const StyledElevatedButton({
    Key? key,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled) && isLoading) {
              return primaryColor.withOpacity(0.85);
            }
            return primaryColor;
          }),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text("123456")
      ),
    );
  }
}
