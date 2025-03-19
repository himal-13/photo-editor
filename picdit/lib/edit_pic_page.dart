import 'dart:io';

import 'package:flutter/material.dart';

class EditImgPage extends StatefulWidget {
  final file; 
  const EditImgPage({super.key, this.file});

  @override
  State<EditImgPage> createState() => _EditImgPageState();
}

class _EditImgPageState extends State<EditImgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Column(children: [
      Image.file(File(widget.file)),
    ],),
    );
  }
}
