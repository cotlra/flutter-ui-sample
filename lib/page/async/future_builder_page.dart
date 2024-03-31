import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

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
      () => 'Data Loaded',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: _future,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Text(
                '読み込み完了！\nデータ：${snapshot.data!}',
                style: Theme.of(context).textTheme.displaySmall,
              );
            } else if (snapshot.hasError) {
              return Text(
                '読み込み失敗…\nデータ：${snapshot.error}',
                style: Theme.of(context).textTheme.displaySmall,
              );
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '読み込み中',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  StyleConsts.sizedBoxH16,
                  const CircularProgressIndicator()
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
