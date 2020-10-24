import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageView extends StatelessWidget {
  final ImageModel image;
  ImageView(this.image);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 15.0,
          ),
          child: Image.network(image.url),
        ),
        Text(image.title)
      ],
    );
  }
}
