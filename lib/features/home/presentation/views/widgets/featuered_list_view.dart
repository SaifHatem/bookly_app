import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomBoxListView extends StatelessWidget {
  const CustomBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
