import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button_widget.dart';

class CustomButtonsActions extends StatelessWidget {
  const CustomButtonsActions({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomActionButton(
            onPressed: () {},
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            backgroundColor: Colors.white,
            textColor: Text(
              'Free',
              style: Styles.font18Semibold.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        Expanded(
          child: CustomActionButton(
            onPressed: () async {
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            // onPressed: () async {
            //   Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
            //   log('Attempting to launch URL: $uri');
            //   if (await canLaunchUrl(uri)) {
            //     await launchUrl(uri);
            //     log('URL launched successfully');
            //   } else {
            //     log('Cannot launch URL: $uri');
            //   }
            // },

            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            backgroundColor: const Color(0xffef8262),
            textColor: const Text(
              'Free preview',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
