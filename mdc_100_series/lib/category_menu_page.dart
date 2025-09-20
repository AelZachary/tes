import 'package:flutter/material.dart';
import 'colors.dart';
import 'model/product.dart';

class CategoryMenuPage extends StatelessWidget {
  final Category currentCategory;
  final ValueChanged<Category> onCategoryTap;

  const CategoryMenuPage({
    Key? key,
    required this.currentCategory,
    required this.onCategoryTap,
  }) : super(key: key);

  Widget _buildCategory(Category category, BuildContext context) {
    final categoryString =
        category.toString().replaceAll('Category.', '').toUpperCase();
    final ThemeData theme = Theme.of(context);

    if (category == currentCategory) {
      return Column(
        children: <Widget>[
          const SizedBox(height: 16.0),
          Text(
            categoryString,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 14.0),
          Container(
            width: 70.0,
            height: 2.0,
            color: kShrinePink, // garis bawah merah
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        categoryString,
        style: theme.textTheme.bodyLarge!.copyWith(
          color: Colors.black.withAlpha(153),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = Category.values;

    return Container(
      color: kShrinePinkLight,
      padding: const EdgeInsets.only(top: 40.0),
      child: ListView(
        children: categories
            .map((c) => GestureDetector(
                  onTap: () => onCategoryTap(c),
                  child: _buildCategory(c, context),
                ))
            .toList(),
      ),
    );
  }
}
