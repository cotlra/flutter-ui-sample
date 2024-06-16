import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key, required this.title});

  final String title;

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const NavigatorChildPage(
                              title: 'Navigator Child（push）');
                        },
                      ),
                    );
                  },
                  child: const Text('push')),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // main.dartにrouteの設定が必要
                  // {
                  //  '/': (context) => const MyHomePage(title: '…'),
                  //  '/navigatorChild': (context) => const NavigatorChildPage(title: '…'),
                  // }
                  Navigator.of(context).pushNamed('/navigatorChild');
                },
                child: const Text('pushNamed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigatorChildPage extends StatefulWidget {
  const NavigatorChildPage({super.key, required this.title});

  final String title;

  @override
  State<NavigatorChildPage> createState() => _NavigatorChildPageState();
}

class _NavigatorChildPageState extends State<NavigatorChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('pop'),
        ),
      ),
    );
  }
}
