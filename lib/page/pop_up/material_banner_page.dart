import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text('Material Banner'),
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  content: const Text('Material Banner'),
                  actions: [
                    TextButton(
                      child: const Text('Close'),
                      onPressed: () =>
                          _scaffoldMessenger?.hideCurrentMaterialBanner(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scaffoldMessenger = ScaffoldMessenger.of(context);
  }
}
