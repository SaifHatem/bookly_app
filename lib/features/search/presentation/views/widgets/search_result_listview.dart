import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/serach_result_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({
    super.key,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            //   //! To remove paddin inside litsview that created by deafoult
            padding: const EdgeInsets.all(0),
            physics: const BouncingScrollPhysics(),
            itemCount: state.bookModel.length,
            itemBuilder: (cotext, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                // child: BestSellerItem(),
                child: SerachResultItem(bookModel: state.bookModel[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
// class SearchResultDone extends StatelessWidget {
//   const SearchResultDone({super.key, required this.bookModel});

  
//   Widget build(BuildContext context) {
//     return BestSellerItem(bookModel: bookModel);
//   }
// }
