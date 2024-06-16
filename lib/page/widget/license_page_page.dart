import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class LicensePagePage extends StatefulWidget {
  const LicensePagePage({super.key, required this.title});

  final String title;

  @override
  State<LicensePagePage> createState() => _LicensePagePageState();
}

class _LicensePagePageState extends State<LicensePagePage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ElevatedButton(
          child: const Text('Show LicensePage'),
          onPressed: () {
            showLicensePage(context: context);
          },
        ),
      ],
    );
  }
}
