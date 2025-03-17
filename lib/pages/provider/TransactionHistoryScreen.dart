import 'package:finney/assets/theme/app_color.dart';
import 'package:finney/assets/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final transactions = context.watch<TransactionHistory>().transactions;

    return Scaffold(
      appBar: AppBar(title: Text('Transaction History')),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return ListTile(
            title: Text(transaction.description),
            subtitle: Text('${transaction.amount} - ${transaction.category}'),
            trailing: Text(transaction.date.toString()),
          );
        },
      ),
    );
  }
}