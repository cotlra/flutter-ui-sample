import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({super.key, required this.title});

  final String title;

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  bool switchValue = false;
  bool? checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const ListTile(
              title: Text('List Tile'),
              subtitle: Text('サブタイトル'),
              leading: Icon(
                Icons.account_circle_outlined,
              ),
              trailing: Icon(Icons.favorite),
            ),
            const CupertinoListTile(
              title: Text('Cupertino List Tile'),
              subtitle: Text('サブタイトル'),
              leading: Icon(
                Icons.account_circle_outlined,
              ),
              trailing: Icon(Icons.favorite),
            ),
            SwitchListTile(
                title: const Text('Switch List Tile'),
                value: switchValue,
                onChanged: (newValue) {
                  setState(() {
                    switchValue = newValue;
                  });
                }),
            CheckboxListTile(
                title: const Text('Checkbox List Tile'),
                value: checkBoxValue,
                onChanged: (newValue) {
                  setState(() {
                    checkBoxValue = newValue;
                  });
                }),
            const ExpansionTile(
              title: Text("Expansion Tile"),
              children: [
                ListTile(
                  title: Text('項目1'),
                ),
                ListTile(
                  title: Text('項目1'),
                ),
                ListTile(
                  title: Text('項目1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
