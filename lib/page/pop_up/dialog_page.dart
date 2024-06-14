import 'package:flutter/material.dart';

import '../../const/style_const.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key, required this.title});

  final String title;

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('About Dialog'),
              onPressed: () {
                showAboutDialog(context: context);
              },
            ),
            ElevatedButton(
              child: const Text('License Page'),
              onPressed: () {
                showLicensePage(context: context);
              },
            ),
            ElevatedButton(
              child: const Text('Alert Dialog'),
              onPressed: () async {
                String? result = await showDialog<String>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('タイトル'),
                        content: const Text('これはAlert Dialogです。'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context, 'Cancel');
                              },
                              child: const Text('Cancel')),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context, 'OK');
                              },
                              child: const Text('OK')),
                        ],
                      );
                    });
              },
            ),
            ElevatedButton(
              child: const Text('Simple Dialog'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const SimpleDialog(
                        title: Text('タイトル'),
                        children: [
                          Padding(
                            padding: StyleConsts.paddingX32,
                            child: Text('これはSimple Dialogです。'),
                          ),
                          StyleConsts.sizedBoxH16,
                        ],
                      );
                    });
              },
            ),
            ElevatedButton(
              child: const Text('Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Dialog(
                      child: Padding(
                        padding: StyleConsts.padding32,
                        child: Text('これはDialogです。'),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}

// class CustomSearchDelegate extends SearchDelegate {
//   CustomSearchDelegate() : super(searchFieldLabel: '検索');
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = ''; // 検索クエリをクリアする
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // TODO: implement buildResults
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     throw UnimplementedError();
//   }
//
// }
