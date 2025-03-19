import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:picdit/edit_pic_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  getImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditImgPage(file: pickedFile.path),
        ),
      );
    }
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Picdit photo editor',style: TextStyle(fontSize: 23),),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings))
              ],
            ),
          ),
          const SizedBox(height: 200),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    getImageFromGallery();
                  },
                  child: Column(
                    children: const <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Add new',
                        style: TextStyle(color: Colors.white,fontSize: 23),
                      ),
                    ],
                  ),
                ),
          
              )
            ],
          
          ),
        ],
      ),
    );
  }
}
