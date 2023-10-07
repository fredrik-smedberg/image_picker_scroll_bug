import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void takePhoto(ImageSource source) {
    ImagePicker().pickImage(
      source: source,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Camera Scroll Test'),
        ),
        body: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              SizedBox(
                height: 200,
                child: CupertinoButton(
                  child: const Text('Click to take a photo'),
                  onPressed: () => takePhoto(ImageSource.camera),
                ),
              ),
              Container(
                color: Colors.amber,
                child: const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'Some text to fill out the height (A)',
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'Some text to fill out the height (B)',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: CupertinoButton(
                  child: const Text('Pick from gallery'),
                  onPressed: () => takePhoto(ImageSource.gallery),
                ),
              ),
              Container(
                color: Colors.pink,
                child: const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'Some text to fill out the height (C)',
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.lime,
                child: const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'Some text to fill out the height (D)',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
