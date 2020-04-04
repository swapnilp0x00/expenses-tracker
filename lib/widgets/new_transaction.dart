import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  void submitData() {
    final title = titleController.text;
    final amount = double.parse(amountController.text);

    if (title.isEmpty || amount < 0) {
      return;
    }
    addNewTransaction(
      title,
      amount,
    );
    print(titleController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,
                  onSubmitted: (_dummy) => submitData(),
                ),
                TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    onSubmitted: (_dummy) => submitData()
                    ),
                FlatButton(
                    child: Text('Add Transaction'),
                    color: Colors.purple,
                    onPressed: submitData)
              ]),
        ));
  }
}
