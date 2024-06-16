import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class MaterialBannerPage extends StatefulWidget {
  const MaterialBannerPage({super.key, required this.title});

  final String title;

  @override
  State<MaterialBannerPage> createState() => _MaterialBannerPageState();
}

class _MaterialBannerPageState extends State<MaterialBannerPage> {
  ScaffoldMessengerState? _scaffoldMessenger;

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ElevatedButton(
          child: const Text('Show MaterialBanner'),
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                content: const Text('This is MaterialBanner.'),
                actions: [
                  TextButton(
                    child: const Text('Close'),
                    onPressed: () {
                      _scaffoldMessenger?.hideCurrentMaterialBanner();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scaffoldMessenger = ScaffoldMessenger.of(context);
  }
}
