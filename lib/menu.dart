import 'package:flutter/material.dart';
import 'package:test_dr/page_model.dart';

class Menu extends StatelessWidget {
  final List<PageModel> pages;
  final Function(PageModel page) onPageSelected;

  const Menu({super.key, required this.pages, required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => ListTile(
        onTap: () {
          onPageSelected(pages[index]);
        },
        title: Text(pages[index].title, style: Theme.of(context).textTheme.bodySmall),
      ),
      itemCount: pages.length,
    );
  }
}
