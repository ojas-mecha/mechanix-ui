import 'package:device_frame/device_frame.dart';
import 'package:flutter/widgets.dart';
import 'package:mechanix_widgetbook/addon/comet_devices/comet_m_frame_painter.dart';
// import 'package:mechanix_widgetbook/addon/cometDevices/cometM/frame_painter.dart';

// DeviceInfo createCometMDevice() {
//   return DeviceInfo(
//     // platform: TargetPlatform.linux,
//     // id: 'comet_m',
//     framePainter: RectangleFramePainter(),
//     identifier: DeviceIdentifier(
//       TargetPlatform.linux,
//       DeviceType.phone,
//       'Comet M',
//     ),
//     screenPath: Path()..addRect(Rect.fromLTWH(30, 30, 540, 620)),
//     frameSize: const Size(600, 1100),
//     name: 'Comet M',
//     pixelRatio: 2,
//     screenSize: const Size(540, 620),
//     safeAreas: const EdgeInsets.only(top: 44, bottom: 34),
//   );
// }
//
// final img=await RectangleFramePainter.loadImage();

final info = DeviceInfo(
  framePainter: RectangleFramePainter(),
  identifier: DeviceIdentifier(
    TargetPlatform.linux,
    DeviceType.phone,
    'Comet M',
  ),
  screenPath: Path()..addRect(Rect.fromLTWH(30, 30, 540, 620)),
  frameSize: const Size(600, 1100),
  name: 'Comet M',
  pixelRatio: 2,
  screenSize: const Size(540, 620),
  safeAreas: const EdgeInsets.only(top: 44, bottom: 34),
);
