import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_bool_details_view_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomBookDetailsViewAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: const CustomBookImage(),
        ),
      ],
    );
  }
}
