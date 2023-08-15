import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImportPhotoPage extends StatefulWidget {
  const ImportPhotoPage({super.key, required this.title});
  final String title;

  @override
  State<ImportPhotoPage> createState() => _ImportPhotoState();
}

class _ImportPhotoState extends State<ImportPhotoPage> {
  @override
  Widget build(BuildContext context) {
    File image_final;
    String _uploadedFileURL;
    bool inProcess;
    final ImagePicker picker = ImagePicker();
    Future getImage(ImageSource source) async {
      final XFile? image = await picker.pickImage(source: source);
      setState(() {
        image_final = File(image!.path);
      });
    }

    void onImageButtonPressed(ImageSource source) async {
      try {
        Column(
          children: <Widget>[
            Image.asset(await getImage(source)),
          ],
        );
      } catch (e) {
        print(e);
      }
    }

    //
    // Future<String> uploadFile(File image) async {
    //   String downloadURL;
    //   String postId = DateTime.now().toString();
    //   Reference ref = FirebaseStorage.instance
    //       .ref()
    //       .child("images")
    //       .child("post_$postId.jpg");
    //   await ref.putFile(image);
    //   downloadURL = await ref.getDownloadURL();
    //   return downloadURL;
    // }

    // selectImageFromGallery() async {
    //   final picker = ImagePicker();
    //   setState(() {
    //     inProcess = true;
    //   });
    //   final imageFile = await picker.getImage(source: ImageSource.gallery);
    //   if (imageFile != null) {
    //     _image = File(imageFile.path);
    //     // String url = await uploadFile(_image);
    //   }
    //   setState(() {
    //     inProcess = false;
    //   });
    // }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 194, 232),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 201, 194, 232),
        iconTheme: const IconThemeData(color: Colors.black),
        title: Image.asset(
          "assets/images/importPhoto.png",
          height: 70,
          width: 255,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Choose how to upload a photo to app',
              style: TextStyle(
                fontSize: 20,
                height: 3,
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () =>
                            onImageButtonPressed(ImageSource.camera),
                        icon: const Icon(Icons.camera_alt, size: 100),
                        color: const Color.fromARGB(255, 116, 82, 255),
                        iconSize: 100,
                      ),
                      IconButton(
                        onPressed: () {
                          onImageButtonPressed(ImageSource.gallery);
                        },
                        icon: const Icon(Icons.photo_library,
                            color: Color.fromARGB(255, 116, 82, 255),
                            size: 100),
                        iconSize: 100,
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      '• Camera •',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Text(
                      '• Gallery • ',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),

            // ElevatedButton(
            //   onPressed: _getFromCamera,
            //   child: const Text(' Take Photo '),
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: const Color.fromARGB(255, 216, 214, 224),
            //       foregroundColor: const Color.fromARGB(255, 116, 82, 255),
            //       textStyle: const TextStyle(
            //           fontSize: 16, fontWeight: FontWeight.w400),
            //       side: const BorderSide(
            //           color: Color.fromARGB(255, 116, 82, 255),
            //           width: 2.0,
            //           style: BorderStyle.solid,
            //           strokeAlign: BorderSide.strokeAlignCenter),
            //       padding: const EdgeInsets.fromLTRB(20, 15, 20, 15)),
            // ),
            // ElevatedButton(
            //   onPressed: _getFromGallery,
            //   child: const Text('Select Photo'),
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: const Color.fromARGB(255, 216, 214, 224),
            //       foregroundColor: const Color.fromARGB(255, 116, 82, 255),
            //       textStyle: const TextStyle(
            //           fontSize: 16, fontWeight: FontWeight.w400),
            //       side: const BorderSide(
            //           color: Color.fromARGB(255, 116, 82, 255),
            //           width: 2.0,
            //           style: BorderStyle.solid,
            //           strokeAlign: BorderSide.strokeAlignCenter),
            //       padding: const EdgeInsets.fromLTRB(20, 15, 20, 15)),
            // ),
          ],
        ),
      ),
    );
  }
}
//TODO try to show image with IconButton