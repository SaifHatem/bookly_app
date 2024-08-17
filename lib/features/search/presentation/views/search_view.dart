import 'package:flutter/material.dart';

import 'widgets/search_view_body.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SearchViewBody(),
    ));
  }
}
