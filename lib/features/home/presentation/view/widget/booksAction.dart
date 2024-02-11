import 'package:bookly_app/core/widget/cutom_buttom.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButtom(
            text: "Free",
            backgroundColor: Colors.white,
            textcolor: Colors.black,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomButtom(
            fontSize: 16,
            text: "Preview",
            backgroundColor: Color(0xffEF8262),
            textcolor: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16)),
          ),
        )
      ],
    );
  }
}
