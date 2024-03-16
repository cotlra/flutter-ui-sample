import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({super.key, required this.title});
  final String title;

  @override
  State<StreamBuilderPage> createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  late Stream<String> _stream;

  @override
  void initState() {
    _stream = clock();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StreamBuilder<String>(
          stream: _stream,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            String? message = 'エラー; ;';
            if(snapshot.hasData){
              message = snapshot.data;
            }
            return Text(message ?? '',style: Theme.of(context).textTheme.displaySmall,);
          },

        ),
      ),
    );
  }

  Stream<String> clock()async*{
    while(true){
      var now = DateTime.now();
      DateFormat format = DateFormat('yyyy/MM/dd hh:mm:ss');
      yield  format.format(now);
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }
  }

}
