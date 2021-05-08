import 'package:flutter/material.dart';

class PublicPage extends StatefulWidget {
  PublicPage({Key key}) : super(key: key);

  @override
  _PublicPageState createState() => _PublicPageState();
}

class _PublicPageState extends State<PublicPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("公众号"),
    );
  }
}