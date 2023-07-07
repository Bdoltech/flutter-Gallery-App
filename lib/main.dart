import 'package:flutter/material.dart';

void main() {
  runApp(ImageGalleryApp());
}

class ImageGalleryApp extends StatelessWidget {
  const ImageGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Gallery',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.green),
      home: ImageGalleryScreen(),
    );
  }
}

class ImageGalleryScreen extends StatelessWidget {
  final List<String> images = [
    'images/tiger.webp',
    'images/music.webp',
    'images/indigo bird.webp',
    'images/jungle.webp',
    'images/cyber punk.webp',
    'images/astronut.webp',
    'images/friend.webp',
    'images/mama.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Gallery'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 05.0,
          mainAxisSpacing: 05.0,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle image tap
            },
            child: Image.asset(
              images[index],
              width: 02,
              height: 0,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
