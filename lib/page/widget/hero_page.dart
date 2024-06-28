import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key, required this.title});

  final String title;

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        const Hero(
          tag: 'FlutterLogo',
          child: FlutterLogo(
            size: 40,
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/HeroChild');
          },
          child: const Text('Go to child page'),
        ),
      ],
    );
  }
}

class HeroChildPage extends StatefulWidget {
  const HeroChildPage({super.key, required this.title});

  final String title;

  @override
  State<HeroChildPage> createState() => _HeroChildPageState();
}

class _HeroChildPageState extends State<HeroChildPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        Hero(
          tag: 'FlutterLogo',
          child: FlutterLogo(
            size: 320,
          ),
        ),
      ],
    );
  }
}
