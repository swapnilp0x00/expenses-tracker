import 'package:expense_tracker/models/transaction.dart';
import 'package:expense_tracker/widgets/new_transaction.dart';
import 'package:expense_tracker/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  

 
  @override
  Widget build(BuildContext context) {
    return Column(
      // children: <Widget>[NewTransaction(_addNewTransaction), TransactionList(_userTransaction)],
    );
  }
}
