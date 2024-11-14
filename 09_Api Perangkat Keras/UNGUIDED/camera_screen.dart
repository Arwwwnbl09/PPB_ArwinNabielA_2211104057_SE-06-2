import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:praktikum9/display_screen.dart';

class MyCamera extends StatefulWidget {
  const MyCamera({super.key});

  @override
  State<MyCamera> createState() => _MyCameraState();
}

class _MyCameraState extends State<MyCamera> {
  late CameraController _controller;
  Future<void>? _intializeControllerFuture;

  Future<void>? _initializeCamera() async {
    final cameras = await availableCameras();
    final firstcamera = cameras.first;

    _controller = CameraController(
      firstcamera,
      ResolutionPreset.high,
    );
    _intializeControllerFuture = _controller.initialize();
    setState(() {});
  }

  @override
  void initState() {
    _initializeCamera();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("camera"),
      ),
      body: FutureBuilder(
          future: _intializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_controller);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        try {
          await _intializeControllerFuture;
          final image = await _controller.takePicture();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DisplayScreen(imagePath: image.path),
              ));
        } catch (e) {
          print(e);
        }
      }),
    );
  }
}
