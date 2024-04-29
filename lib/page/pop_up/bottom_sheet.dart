import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({super.key, required this.title});

  final String title;

  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
            child: ElevatedButton(
          child: const Text('Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return BottomSheet(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: StyleConsts.padding32,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Bottom Sheet'),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('閉じる'),
                          ),
                        ],
                      ),
                    );
                  },
                  onClosing: () {},
                );
              },
            );
          },
        )),
      ),
    );
  }
}
