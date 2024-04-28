import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key, required this.title});

  final String title;

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Container(
              width: StyleConsts.value128,
              height: StyleConsts.value80,
              padding: StyleConsts.padding16,
              margin: StyleConsts.padding32,
              alignment: Alignment.bottomRight,
              transform: Matrix4.rotationZ(0.2),
              decoration: BoxDecoration(
                  borderRadius: StyleConsts.borderRadiusCircle8,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: StyleConsts.value4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor,
                      spreadRadius: StyleConsts.value4,
                      blurRadius: StyleConsts.value4,
                      offset:
                          const Offset(StyleConsts.value8, StyleConsts.value8),
                    )
                  ]),
              child: const Text('テキスト'),
            ),
            StyleConsts.sizedBoxH32,
            Container(
              width: StyleConsts.value128,
              height: StyleConsts.value128,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
            ),
            StyleConsts.sizedBoxH32,
            Container(
              width: double.infinity,
              height: StyleConsts.value80,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ],
        )),
      ),
    );
  }
}
