import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({super.key, required this.title});

  final String title;

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  late Future<String> _future;

  @override
  void initState() {
    _future = Future<String>.delayed(
      const Duration(seconds: 2),
      () => 'This is data.',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: FutureBuilder<String>(
            future: _future,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Text(
                  'Loaded！\nData：${snapshot.data!}',
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall,
                );
              } else if (snapshot.hasError) {
                return Text(
                  textAlign: TextAlign.center,
                  'Failed…\nMessage：${snapshot.error}',
                  style: textTheme.headlineSmall,
                );
              } else {
                return Text(
                  'Loading',
                  style: textTheme.headlineSmall,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
