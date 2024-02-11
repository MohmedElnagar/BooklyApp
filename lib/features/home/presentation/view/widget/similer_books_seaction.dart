import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilerBooksSeaction extends StatelessWidget {
  const SimilerBooksSeaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("you can also like ",
            style: Style.textstyle14.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 16,
        ),
        const SimilerBooksListView(),
      ],
    );
  }
}
