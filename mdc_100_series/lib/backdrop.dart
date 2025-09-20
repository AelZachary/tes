import 'package:flutter/material.dart';
import 'model/product.dart';
import 'colors.dart';

// Backdrop Widget
class Backdrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop({
    required this.currentCategory,
    required this.frontLayer,
    required this.backLayer,
    required this.frontTitle,
    required this.backTitle,
    Key? key,
  }) : super(key: key);

  @override
  _BackdropState createState() => _BackdropState();
}

// ------------------------ _FrontLayer ------------------------
class _FrontLayer extends StatelessWidget {
  const _FrontLayer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: child),
        ],
      ),
    );
  }
}

// ------------------------ _BackdropState ------------------------
class _BackdropState extends State<Backdrop> {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');

  Widget _buildStack() {
    return Stack(
      key: _backdropKey,
      children: <Widget>[
        // Back layer
        widget.backLayer,
        // Front layer wrapped in _FrontLayer
        _FrontLayer(child: widget.frontLayer),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(Icons.menu, color: kShrineBlue),
        title: const Text(
          'SHRINE',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
        backgroundColor: kShrinePurple,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: kShrineBlue,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.tune),
            color: kShrineBlue,
            onPressed: () {},
          ),
        ],
      ),
      body: _buildStack(),
    );
  }
}
