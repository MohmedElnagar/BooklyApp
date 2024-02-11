import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/core/widget/custom_loading_ind.dart';
import 'package:bookly_app/features/home/presentation/manger/similer_books_cubit/similerbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerbooksCubit, SimilerbooksState>(
      builder: (context, state) {
        if (state is SimilerbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return CustomItem(
                  urlImage: state.books[index].volumeInfo.imageLinks!.thumbnail,
                );
              },
            ),
          );
        } else if (state is SimilerbooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingInd();
        }
      },
    );
  }
}
