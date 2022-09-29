import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SosMedLogin extends StatelessWidget {
  const SosMedLogin({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: size.height * 0.14,
          width: size.width * 0.14,
          padding: const EdgeInsets.all(14),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 228, 228, 233),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("images/google-icon.svg"),
        ),
        Container(
          height: size.height * 0.14,
          width: size.width * 0.14,
          padding: const EdgeInsets.all(18),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 228, 228, 233),
            shape: BoxShape.circle,
          ),
          child: FittedBox(
            child: SvgPicture.asset("images/facebook-2.svg"),
          ),
        ),
        Container(
          height: size.height * 0.14,
          width: size.width * 0.14,
          padding: const EdgeInsets.all(14),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 228, 228, 233),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("images/twitter.svg"),
        ),
      ],
    );
  }
}
