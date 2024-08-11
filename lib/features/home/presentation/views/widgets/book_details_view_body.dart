import 'package:bookly_app/features/home/presentation/views/widgets/custom_bool_details_view_app_bar.dart';
import 'package:flutter/material.dart';

import '../sections/book_details_section.dart';
import '../sections/similar_books_sectio.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomBookDetailsViewAppBar(),
              ),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
