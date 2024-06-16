import 'package:flutter/material.dart';

class RefreshIndicatorPage extends StatefulWidget {
  const RefreshIndicatorPage({super.key, required this.title});

  final String title;

  @override
  State<RefreshIndicatorPage> createState() => _RefreshIndicatorPageState();
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {
  late Future<String> _future;
  late List<String>? _data;
  int _value = 0;
  @override
  void initState() {
    _future = Future<String>.delayed(
      const Duration(seconds: 1),
      () {
        _data = List.generate(12, (index) => 'Item $index');
        return 'Data Loaded';
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: RefreshIndicator(
            onRefresh: () async {
              await Future.delayed(const Duration(seconds: 1));
              setState(() {
                _value += 12;
                _data = List.generate(12, (index) => 'Item ${index + _value}');
              });
            },
            child: FutureBuilder(
              future: _future,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: _data!
                        .map((e) => ListTile(
                              title: Text(e),
                            ))
                        .toList(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text('Failed…'),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )),
      ),
    );
  }
}
