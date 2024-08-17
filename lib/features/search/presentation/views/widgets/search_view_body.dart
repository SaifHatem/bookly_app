import 'package:bookly_app/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomSearchTextField(
            onSubmitted: (value) async {
              var result = BlocProvider.of<SearchCubit>(context)
                  .fetchSearchResult(category: value);
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Search Result',
          style: Styles.font18Semibold,
        ),
        const SizedBox(
          height: 20,
        ),
        const Expanded(
          child: SearchResultListview(),
        )
      ],
    );
  }
}
