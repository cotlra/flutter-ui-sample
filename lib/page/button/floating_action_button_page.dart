import 'package:flutter/material.dart';

import '../../const/style_const.dart';

class FloatingActionButtonPage extends StatefulWidget {
  const FloatingActionButtonPage({super.key, required this.title});

  final String title;

  @override
  State<FloatingActionButtonPage> createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  bool _isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _isDisabled ? null : () {},
        heroTag: "hero1",
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SwitchListTile(
                title: const Text('非活性'),
                value: _isDisabled,
                onChanged: (newValue) {
                  setState(() {
                    _isDisabled = newValue;
                  });
                }),
            const Divider(),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FloatingActionButton.small(
                          onPressed: _isDisabled ? null : () {},
                          heroTag: "hero2",
                          child: const Icon(Icons.add),
                        ),
                        StyleConsts.sizedBoxW16,
                        FloatingActionButton(
                          onPressed: _isDisabled ? null : () {},
                          heroTag: "hero3",
                          child: const Icon(Icons.add),
                        ),
                        StyleConsts.sizedBoxW16,
                        FloatingActionButton.large(
                          onPressed: _isDisabled ? null : () {},
                          heroTag: "hero4",
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    StyleConsts.sizedBoxH16,
                    FloatingActionButton.extended(
                      onPressed: _isDisabled ? null : () {},
                      heroTag: "hero5",
                      label: const Text('add'),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
