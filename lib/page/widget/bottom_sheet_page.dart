import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({super.key, required this.title});

  final String title;

  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ElevatedButton(
          child: const Text('Show BottomSheet'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return BottomSheet(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('This is BottomSheet.'),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
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
        ),
      ],
    );
  }
}
