
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class AppImageWidget extends StatelessWidget {
  AppImageWidget({
    Key key,
    @required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  final String imageUrl;
  final BoxFit fit;
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: CachedNetworkImage(
        fit: this.fit,
        alignment: Alignment.center,
        imageUrl: this.imageUrl,
        placeholder: (context, url) => Container(
          width: 15,
          height: 15,
          alignment: Alignment.center,
          child: CircularProgressIndicator(
          ),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
