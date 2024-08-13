import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.pageCount,
  });

  final MainAxisAlignment mainAxisAlignment;
  final double rating;
  final int pageCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '$rating',
          style: Styles.font16Medium,
        ),
        const SizedBox(
          width: 5,
        ),
        Text('($pageCount)',
            style: Styles.font14Normal.copyWith(color: Colors.grey)),
      ],
    );
  }
}
