import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../common/base_frame.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({super.key, required this.title});
  final String title;

  @override
  State<StreamBuilderPage> createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  final _format = DateFormat('yyyy/MM/dd hh:mm:ss');
  late Stream<String> _stream;

  @override
  void initState() {
    _stream = clock();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        StreamBuilder<String>(
          stream: _stream,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            return Text(
              snapshot.data ?? 'Error',
              style: Theme.of(context).textTheme.displaySmall,
            );
          },
        ),
      ],
    );
  }

  Stream<String> clock() async* {
    while (true) {
      final now = DateTime.now();
      yield _format.format(now);
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }
  }
}
