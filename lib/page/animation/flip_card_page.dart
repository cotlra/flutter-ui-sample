// reference: https://medium.com/flutter-community/flutter-flip-card-animation-eb25c403f371

import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

import '../../components/flip.dart';

class FlipCardPage extends StatefulWidget {
  const FlipCardPage({super.key, required this.title});

  final String title;

  @override
  State<FlipCardPage> createState() => _FlipCardPageState();
}

class _FlipCardPageState extends State<FlipCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          constraints:
              BoxConstraints.tight(const Size.square(StyleConsts.value208)),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _showFrontSide = !_showFrontSide;
              });
            },
            child: Flip(
              isFront: _showFrontSide,
              front: _frontCard(),
              back: _rearCard(),
              rotateX: false,
            ),
          ),
        ),
      ),
    );
  }

  bool _showFrontSide = true;

  Widget _frontCard() {
    return _customCard(
      faceName: 'Front',
      backgroundColor: Colors.orangeAccent,
    );
  }

  Widget _rearCard() {
    return _customCard(
      faceName: 'Rear',
      backgroundColor: Colors.lightBlueAccent,
    );
  }

  Widget _customCard(
      {required String faceName, required Color backgroundColor}) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(StyleConsts.value16),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          faceName,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
