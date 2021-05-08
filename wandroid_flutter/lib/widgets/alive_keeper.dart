import 'package:flutter/material.dart';

class Aliveer extends StatefulWidget {
  final Widget child;

  const Aliveer({Key key, @required this.child}) : super(key: key);

  @override
  _AliveerState createState() => _AliveerState();
}

class _AliveerState extends State<Aliveer>
    with AutomaticKeepAliveClientMixin<Aliveer> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
