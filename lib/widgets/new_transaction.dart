import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void _submitData() {
    final title = titleController.text;
    final amount = double.parse(amountController.text);

    if (title.isEmpty || amount < 0) {
      return;
    }
    widget.addNewTransaction(
      title,
      amount,
    );
    Navigator.of(context).pop();
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
                  onSubmitted: (_dummy) => _submitData(),
                ),
                TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    onSubmitted: (_dummy) => _submitData()),
                Container(
                  height: 70,
                  child: Row(
                    children: <Widget>[
                      Text('No Date Chosen'),
                      FlatButton(
                        textColor: Theme.of(context).primaryColor,
                        child: Text(
                          'Pick Date',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                    child: Text('Add Transaction'),
                    color: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).textTheme.button.color,
                    onPressed: _submitData)
              ]),
        ));
  }
}
