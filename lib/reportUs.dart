import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key, required this.title});
  final String title;

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 194, 232),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 201, 194, 232),
        iconTheme: const IconThemeData(color: Colors.black),
        title: Image.asset(
          "assets/images/report.png",
          height: 70,
          width: 230,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 216, 214, 224),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 116, 82, 255),
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter),
                ),
                hintText: 'You can write your feedback here ☺',
              ),
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
              child: const Text(' • Submit • '),
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
