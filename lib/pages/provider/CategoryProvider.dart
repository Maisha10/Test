import 'package:finney/assets/theme/app_color.dart';
import 'package:finney/assets/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final double budget;

  Category({required this.name, required this.budget});
}

class CategoryProvider with ChangeNotifier {
  List<Category> _categories = [
    Category(name: 'Food', budget: 500),
    Category(name: 'Transport', budget: 300),
    Category(name: 'Entertainment', budget: 200),
  ];

  List<Category> get categories => _categories;

  void addCategory(Category category) {
    _categories.add(category);
    notifyListeners();
  }

  double getTotalSpentByCategory(String categoryName) {
    return _expenses
        .where((expense) => expense.category == categoryName)
        .fold(0, (sum, expense) => sum + expense.amount);
  }
}