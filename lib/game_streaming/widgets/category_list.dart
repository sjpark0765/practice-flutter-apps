import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    Key? key,
    required List<String> categories,
  })  : _categories = categories,
        super(key: key);
  final List<String> _categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        child: ListView.builder(
            itemCount: _categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xff0c1731),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        _categories[index],
                        style: Theme.of(context).textTheme.titleMedium,
                      ))),
                  const SizedBox(width: 10)
                ],
              );
            }));
  }
}
