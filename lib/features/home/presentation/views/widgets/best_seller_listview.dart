import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    //! Befor using Slivers we put (Expanded) but after putting it we have to remove it
    return ListView.builder(
      //   //! To remove paddin inside litsview that created by deafoult
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics:
          const NeverScrollableScrollPhysics(), //! Your childern dont scroll
      itemCount: 20,
      itemBuilder: (cotext, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: BestSellerItem(),
        );
      },
    );
  }
}
