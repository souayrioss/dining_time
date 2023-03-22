import 'package:flutter/material.dart';
class PanierPage extends StatefulWidget {
  const PanierPage({Key? key}) : super(key: key);

  @override
  State<PanierPage> createState() => _PanierPageState();
}

class _PanierPageState extends State<PanierPage> {
  List<String> _items = [];

  void _addItem() {
    setState(() {
      _items.add('New Item');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Pannier App'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_items[index]),
                );
              },
            ),
          ),
          /* RaisedButton(
            child: Text('Add Item'),
            onPressed: _addItem,
          ),*/
        ],
      ),
    );
  }
}
