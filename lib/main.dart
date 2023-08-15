import 'package:flutter/material.dart';
import 'package:text_recognition/importPhoto.dart';
import 'package:text_recognition/recentFiles.dart';
import 'package:text_recognition/reportUs.dart';

Future<void> main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Text Recognition Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void _getFromGallery() async {
  //   PickedFile? pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   if (pickedFile != null) {
  //     File imageFile = File(pickedFile.path);
  //   }
  // }

  // void _getFromCamera() async {
  //   PickedFile? pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.camera,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   if (pickedFile != null) {
  //     File imageFile = File(pickedFile.path);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 194, 232),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/images/logo.png"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ImportPhotoPage(
                            title: '',
                          )),
                );
              },
              child: const Text('• Import Photo •'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 216, 214, 224),
                  foregroundColor: const Color.fromARGB(255, 116, 82, 255),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 116, 82, 255),
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter),
                  padding: const EdgeInsets.fromLTRB(50, 15, 50, 15)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const RecentFilesPage(title: 'Recent Files')),
                );
              },
              child: const Text('• Recent Files •'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 216, 214, 224),
                  foregroundColor: const Color.fromARGB(255, 116, 82, 255),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 116, 82, 255),
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter),
                  padding: const EdgeInsets.fromLTRB(50, 15, 50, 15)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const ReportPage(title: 'Report Us')),
                );
              },
              child: const Text(' • Report Us • '),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 216, 214, 224),
                  foregroundColor: const Color.fromARGB(255, 116, 82, 255),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 116, 82, 255),
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter),
                  padding: const EdgeInsets.fromLTRB(50, 15, 50, 15)),
            ),
          ],
        ),
      ),
    );
  }
}
