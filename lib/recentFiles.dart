import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class RecentFilesPage extends StatefulWidget {
  const RecentFilesPage({super.key, required this.title});
  final String title;

  @override
  State<RecentFilesPage> createState() => _RecentFilesState();
}

class _RecentFilesState extends State<RecentFilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 194, 232),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 201, 194, 232),
        iconTheme: const IconThemeData(color: Colors.black),
        title: Image.asset(
          "assets/images/recentFiles.png",
          height: 70,
          width: 245,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('• '),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 216, 214, 224),
                foregroundColor: const Color.fromARGB(255, 116, 82, 255),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                side: const BorderSide(
                    color: Color.fromARGB(255, 201, 194, 232),
                    width: 5.0,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignCenter),
                minimumSize: const Size(4000, 70),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('• '),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 208, 204, 223),
                foregroundColor: const Color.fromARGB(255, 116, 82, 255),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                side: const BorderSide(
                    color: Color.fromARGB(255, 201, 194, 232),
                    width: 5.0,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignCenter),
                minimumSize: const Size(4000, 70),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('• '),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 216, 214, 224),
                foregroundColor: const Color.fromARGB(255, 116, 82, 255),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                side: const BorderSide(
                    color: Color.fromARGB(255, 201, 194, 232),
                    width: 5.0,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignCenter),
                minimumSize: const Size(4000, 70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
