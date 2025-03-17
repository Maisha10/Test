import 'package:finney/assets/theme/app_color.dart';
import 'package:finney/assets/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class BudgetNotification {
  static void checkBudget(String category, double remainingBudget) {
    if (remainingBudget < 0) {
      showNotification('Budget Exceeded', 'You have exceeded your budget for $category');
    }
  }

  static void showNotification(String title, String body) {
    // Use flutter_local_notifications package to show notifications
    // Example:
    // FlutterLocalNotificationsPlugin().show(0, title, body, NotificationDetails());
  }
}