import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: bulidOutlindInputBorder(),
        enabledBorder: bulidOutlindInputBorder(),
        hintText: "search",
        suffixIcon:
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
    );
  }

  OutlineInputBorder bulidOutlindInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
