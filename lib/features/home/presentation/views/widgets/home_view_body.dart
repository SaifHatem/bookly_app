import 'package:bookly_app/features/home/presentation/views/widgets/curom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featuered_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CutomAppBar(),
        CustomBoxListView(),
      ],
    );
  }
}
