import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mechanix_widgetbook/constants/images.dart';

class RectangleFramePainter extends CustomPainter {
  final ui.Image? image;

  RectangleFramePainter({this.image});

  // Load image separately and pass it to the painter
  static Future<ui.Image> loadImage() async {
    try {
      final ByteData data = await rootBundle.load(Images.home);
      final Uint8List bytes = data.buffer.asUint8List();
      return await decodeImageFromList(bytes);
    } catch (e) {
      // Return a placeholder image or rethrow the error
      print('Error loading image: $e');
      rethrow;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    // Draw the outer frame
    final frameRect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(frameRect, paint);

    // Fill the frame with a background color
    final backgroundPaint = Paint()..color = Colors.grey.shade200;
    canvas.drawRect(frameRect, backgroundPaint);

    // Draw the screen area (offset to account for frame borders)
    final screenPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final screenRect = Rect.fromLTWH(30, 30, 540, 620);
    canvas.drawRect(screenRect, screenPaint);

    // Draw the image if it's loaded
    print('image painting $image');
    if (image != null) {
      // Adjust these coordinates to position the image correctly within the frame
      final imageRect = Rect.fromLTWH(0, 0, size.width, size.height);
      canvas.drawImageRect(image!, imageRect, imageRect, Paint());
    }

    final screenPaint2 = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill;
    final screenRect2 = Rect.fromLTWH(30, 650, 540, 420);
    canvas.drawRect(screenRect2, screenPaint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate is RectangleFramePainter && oldDelegate.image != image;
  }
}
