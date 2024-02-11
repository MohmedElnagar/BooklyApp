import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/core/widget/custom_loading_ind.dart';
import 'package:bookly_app/features/home/presentation/manger/newset_books_cubit/newsetbooks_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:flutter/material.dart';

class BestSellerListViewBuilder extends StatelessWidget {
  const BestSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetbooksCubit, NewsetbooksState>(
      builder: (context, state) {
        if (state is NewsetbooksSucsses) {
          return ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: BestSellerListView(
                      bookModel: state.books[index],
                    ));
              });
        } else if (state is NewsetbooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingInd();
        }
      },
    );
  }
}
