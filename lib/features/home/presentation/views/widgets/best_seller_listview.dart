import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/Newest%20Books%20Cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    //! Befor using Slivers we put (Expanded) but after putting it we have to remove it
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            //   //! To remove paddin inside litsview that created by deafoult
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), //! Your childern dont scroll
            itemCount: state.books.length,
            itemBuilder: (cotext, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: BestSellerItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
