import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../widgets/book_details_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'You can also like',
            textAlign: TextAlign.start,
            style: Styles.font14Normal.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
