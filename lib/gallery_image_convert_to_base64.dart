import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GalleryImageConvertToBase64 extends StatefulWidget {
  const GalleryImageConvertToBase64({super.key});

  @override
  State<GalleryImageConvertToBase64> createState() =>
      _GalleryImageConvertToBase64State();
}

File? _image;
String? _base64Images;

class _GalleryImageConvertToBase64State
    extends State<GalleryImageConvertToBase64> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convert Image to base 64'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.teal),
            child: _image != null
                ? Image.file(_image!)
                : Center(child: CircularProgressIndicator()),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Base64Image'),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.teal),
            child: _base64Images != null
                ? Image.memory(base64Decode(_base64Images!))
                : Center(child: CircularProgressIndicator()),
          ),
          ElevatedButton(onPressed: _pickImage, child: Text('Pick image'))
        ],
      ),
    );
  }

  void _pickImage() async {
    final picker = ImagePicker();
    // Picked image from gellery
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      final fileImage = File(pickedImage.path);

      // Convert image to base64
      final bytes = await pickedImage.readAsBytes();
      final base64Image = base64Encode(bytes);
      _base64Images = base64Image;

      // File image
      _image = fileImage;
      setState(() {});
    }
  }
}
