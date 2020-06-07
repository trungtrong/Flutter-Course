import 'package:flutter/material.dart';
/**
* 5 - 12. Understanding the Widget Lifecycle
*/
class TransactionInput extends StatefulWidget {
  final Function addNewTx;

  TransactionInput(this.addNewTx) {
    print('Constructor TransactionInput Widget');
  }

  @override
  _TransactionInputState createState() {
    print('createState TransactionInput Widget');

    return _TransactionInputState();
  }
}

class _TransactionInputState extends State<TransactionInput> {
  final titleController = TextEditingController();
	final amountController = TextEditingController();

  _TransactionInputState() {
    print('Contructor NewTransaction State');
  }

  /**
   * LifeCycle Hook
   */
  @override
  void initState() {
    // TODO: implement initState before super.initState() or after, is not different
    // call API
    print('initState');
    super.initState();
    /**
     * Whilst it won't make a visual (or performance-related) difference, it is actually now recommended to call super.initState() (etc.) FIRST
     * 
     */
  }
  /**
   * LifeCycle Hook
   */
  @override
  void didUpdateWidget(TransactionInput oldWidget) {
    /**
     * - oldWidget is the previous widget that was attached to this state
     * - didUpdateWidget() gets called when the widget that is attached 
     *    to the state changes
     * 
     * - 
     */
    
    // TODO: implement didUpdateWidget
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  /**
   * LifeCycle Hook
   */
  @override
  void dispose() {
    /**
     * - gets called when widget is removed in the tree
     * Use to clean up Listeners or life connections to avoid emory leaks
     */

    // TODO: implement dispose
    print('dispose'); 
    super.dispose();
  }

  /**
   * Result:
   *  1 - Constructor TransactionInput Widget
   *  2 - createState TransactionInput Widget
   *  3 - Contructor NewTransaction State
   *  4 - initState
   */

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    // widget to get External State from StatefullWidget
    widget.addNewTx(
      enteredTitle,
      enteredAmount
    );

    // close Modal
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Title'
            ),
            controller: titleController,

            onSubmitted: (_) => submitData(),

            // onChanged: (value) {
            // 	titleInput = value;
            // },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount'
            ),

            controller: amountController,
            keyboardType: TextInputType.number,
            // on iOS:
            // keyboardType: TextInputType.numberWithOptions(decimal: true).
            
            onSubmitted: (_) => submitData(),
            // onChanged: (value) {
            // 	amountInput = value;
            // },
          ),

          FlatButton(
            child: Text("Add Transaction"),
            onPressed: submitData
          )
        ],
      ),
    );
  }
}