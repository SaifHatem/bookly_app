import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';

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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomSearchTextField(),
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
