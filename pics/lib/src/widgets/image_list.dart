import 'package:flutter/material.dart';
import '../models/image_model.dart';
import 'image-view.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueGrey)),
            child: ImageView(images[index]));
      },
    );
  }
}
