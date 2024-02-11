import 'package:bookly_app/features/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:flutter/material.dart';

class SaerchResultListView extends StatelessWidget {
  const SaerchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            // child: BestSellerListView(),
          );
        });
  }
}
