import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button_widget.dart';

class CustomButtonsActions extends StatelessWidget {
  const CustomButtonsActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomActionButton(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            backgroundColor: Colors.white,
            textColor: Text(
              '19.99 €',
              style: Styles.font18Semibold.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        const Expanded(
          child: CustomActionButton(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            backgroundColor: Color(0xffef8262),
            textColor: Text(
              'Free preview \$',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
