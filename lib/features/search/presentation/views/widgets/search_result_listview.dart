import 'package:flutter/material.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //   //! To remove paddin inside litsview that created by deafoult
      padding: const EdgeInsets.all(0),
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (cotext, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          // child: BestSellerItem(),
          child: Text('Hello'),
        );
      },
    );
  }
}
