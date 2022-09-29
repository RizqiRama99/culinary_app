import 'package:flutter/material.dart';

class FormErrorWidget extends StatelessWidget {
  const FormErrorWidget({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => errorText(error: errors[index]),
      ),
    );
  }

  Row errorText({required String error}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Icon(
            Icons.error_outline,
            color: Colors.green.shade300,
            size: 18,
          ),
        ),
        const SizedBox(width: 10),
        Text(error),
      ],
    );
  }
}
