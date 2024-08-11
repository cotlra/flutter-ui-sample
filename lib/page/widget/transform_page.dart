import 'dart:math';

import 'package:flutter/material.dart';

class TransformPage extends StatefulWidget {
  const TransformPage({super.key, required this.title});

  final String title;

  @override
  State<TransformPage> createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  double rotateX = 0;
  double rotateY = 0;
  double rotateZ = 0;
  double translateX = 0;
  double translateY = 0;
  double translateZ = 0;
  double scaleX = 1;
  double scaleY = 1;
  double scaleZ = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                rotateX = 0;
                rotateY = 0;
                rotateZ = 0;
                translateX = 0;
                translateY = 0;
                translateZ = 0;
                scaleX = 1;
                scaleY = 1;
                scaleZ = 1;
              });
            },
            child: const Text('reset'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 336,
              child: Center(
                child: Transform(
                  transform: Matrix4.identity()
                    ..scale(scaleX, scaleY, scaleZ)
                    ..translate(translateX, translateY, translateZ)
                    ..rotateX(rotateX)
                    ..rotateY(rotateY)
                    ..rotateZ(rotateZ),
                  alignment: Alignment.center,
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    width: 128,
                    height: 128,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _scaleSliders(),
                    _translateSliders(),
                    _rotateSliders(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _scaleSliders() {
    return _expansionSliders(
      title: 'scale',
      children: [
        _scaleParamSlider(
          title: 'scaleX',
          setCurrentValue: (double value) {
            scaleX = value;
          },
          currentValue: scaleX,
        ),
        _scaleParamSlider(
          title: 'scaleY',
          setCurrentValue: (double value) {
            scaleY = value;
          },
          currentValue: scaleY,
        ),
        _scaleParamSlider(
          title: 'scaleZ',
          setCurrentValue: (double value) {
            scaleZ = value;
          },
          currentValue: scaleZ,
        ),
      ],
    );
  }

  Widget _translateSliders() {
    return _expansionSliders(
      title: 'translate',
      children: [
        _translateParamSlider(
          title: 'translateX',
          setCurrentValue: (double value) {
            translateX = value;
          },
          currentValue: translateX,
        ),
        _translateParamSlider(
          title: 'translateY',
          setCurrentValue: (double value) {
            translateY = value;
          },
          currentValue: translateY,
        ),
        _translateParamSlider(
          title: 'translateZ',
          setCurrentValue: (double value) {
            translateZ = value;
          },
          currentValue: translateZ,
        ),
      ],
    );
  }

  Widget _rotateSliders() {
    return _expansionSliders(
      title: 'rotate',
      children: [
        _rotateParamSlider(
          title: 'rotateX',
          currentValue: rotateX,
          setCurrentValue: (double value) {
            rotateX = value;
          },
        ),
        _rotateParamSlider(
          title: 'rotateY',
          currentValue: rotateY,
          setCurrentValue: (double value) {
            rotateY = value;
          },
        ),
        _rotateParamSlider(
          title: 'rotateZ',
          setCurrentValue: (double value) {
            rotateZ = value;
          },
          currentValue: rotateZ,
        ),
      ],
    );
  }

  Widget _expansionSliders({
    required String title,
    required List<Widget> children,
  }) {
    final columnChildren = <Widget>[];
    for (final child in children) {
      columnChildren
        ..add(child)
        ..add(const SizedBox(height: 8));
    }
    columnChildren.removeAt(children.length * 2 - 1);

    return ExpansionTile(
      title: Text(title),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: columnChildren,
          ),
        ),
      ],
    );
  }

  Widget _scaleParamSlider({
    required String title,
    required void Function(double) setCurrentValue,
    required double currentValue,
  }) {
    return _paramSlider(
      min: 0,
      max: 2,
      title: title,
      setCurrentValue: setCurrentValue,
      currentValue: currentValue,
    );
  }

  Widget _rotateParamSlider({
    required String title,
    required void Function(double) setCurrentValue,
    required double currentValue,
  }) {
    return _paramSlider(
      min: -pi,
      max: pi,
      title: title,
      setCurrentValue: setCurrentValue,
      currentValue: currentValue,
    );
  }

  Widget _translateParamSlider({
    required String title,
    required void Function(double) setCurrentValue,
    required double currentValue,
  }) {
    return _paramSlider(
      min: -100,
      max: 100,
      title: title,
      setCurrentValue: setCurrentValue,
      currentValue: currentValue,
    );
  }

  Widget _paramSlider({
    required double min,
    required double max,
    required String title,
    required void Function(double) setCurrentValue,
    required double currentValue,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Slider(
          label: currentValue.toString(),
          min: min,
          max: max,
          value: currentValue,
          onChanged: (double value) {
            setState(() {
              setCurrentValue(value);
            });
          },
        ),
      ],
    );
  }
}
