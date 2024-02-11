import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/custom_text_feild.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/saerchresultlistview.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFeild(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search Result",
            style: Style.textstyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SaerchResultListView(),
          )
        ],
      ),
    );
  }
}
