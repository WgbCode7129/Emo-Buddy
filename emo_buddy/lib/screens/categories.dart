import 'package:emo_buddy/models/category.dart';
import 'package:emo_buddy/screens/mood_tracker.dart';
import 'package:emo_buddy/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:emo_buddy/dummyData/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    switch (category.id) {
      case 'c1':
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => const DonutChart(),
          ),
        );
        break;

      case 'c2':
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => const DonutChart(),
          ),
        );
        break;

      case 'c3':
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => const DonutChart(),
          ),
        );
        break;

      case 'c4':
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => const DonutChart(),
          ),
        );
        break;

      case 'c5':
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => const DonutChart(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emo Buddy'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGrindItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}
