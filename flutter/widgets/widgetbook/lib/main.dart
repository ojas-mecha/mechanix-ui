import 'dart:ui' as ui;

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:mechanix_widgetbook/addon/comet_devices/comet_m_frame_painter.dart';
import 'package:mechanix_widgetbook/addon/frame_addon.dart';
import 'package:watch_it/watch_it.dart';
import 'package:widgetbook/widgetbook.dart' hide DeviceInfo, Devices;
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgets/mechanix.dart';

// Import your custom addon
// This file does not exist yet,
// it will be generated in the next step
import 'main.directories.g.dart';

void main() {
  di.registerSingleton(ThemeToggle());
  runApp(const MechanixApp());
}

class MechanixApp extends StatelessWidget with WatchItMixin {
  const MechanixApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = watchPropertyValue((ThemeToggle t) => t.themeMode);
    final mechanixVariant = watchPropertyValue(
      (ThemeToggle t) => t.mechanixVariant,
    );
    return MechanixTheme(
      data: MechanixThemeData(mechanixVariant: mechanixVariant),
      builder: (context, mechanix, child) => _MechanixApp(
        darkTheme: mechanix.darkTheme,
        lightTheme: mechanix.lightTheme,
        themeMode: themeMode,
      ),
    );
  }
}

class _MechanixApp extends StatelessWidget {
  const _MechanixApp({
    required this.lightTheme,
    required this.darkTheme,
    required this.themeMode,
  });

  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: Scaffold(
        body: WidgetbookApp(
          lightTheme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
        ),
      ),
    );
  }
}

@widgetbook.App()
class WidgetbookApp extends StatefulWidget {
  // const WidgetbookApp({super.key});
  const WidgetbookApp({
    super.key,
    required this.lightTheme,
    required this.darkTheme,
    required this.themeMode,
  });

  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final ThemeMode themeMode;

  @override
  State<WidgetbookApp> createState() => _WidgetbookAppState();
}

class _WidgetbookAppState extends State<WidgetbookApp> {
  ui.Image? _deviceImage;

  @override
  void initState() {
    super.initState();
    _loadDeviceImage();
  }

  Future<void> _loadDeviceImage() async {
    final image = await RectangleFramePainter.loadImage();
    if (_deviceImage == null) {
      setState(() {
        _deviceImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // The [directories] variable does not exist yet,
      // it will be generated in the next step
      lightTheme: widget.lightTheme,
      darkTheme: widget.darkTheme,
      themeMode: widget.themeMode,
      directories: directories,
      enableLeafComponents: false,
      addons: [
        // Add your custom DeviceFrameAddon
        CustomDeviceFrameAddon(
          devices: [
            // MechaDevices.comet.mechaCometM
            DeviceInfo(
              framePainter: RectangleFramePainter(image: _deviceImage),
              identifier: DeviceIdentifier(
                TargetPlatform.linux,
                DeviceType.phone,
                'Comet M 2',
              ),
              screenPath: Path()..addRect(Rect.fromLTWH(30, 30, 540, 620)),
              frameSize: const Size(600, 1100),
              name: 'Comet M 2',
              pixelRatio: 2,
              screenSize: const Size(540, 620),
              safeAreas: const EdgeInsets.only(top: 44, bottom: 34),
            ),
            Devices.android.samsungGalaxyS25,
          ],
        ),
        BuilderAddon(
          name: 'Mechanix',
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: widget.lightTheme,
            darkTheme: widget.darkTheme,
            themeMode: widget.themeMode,
            home: Scaffold(body: child),
            // home: Scaffold(
            //   appBar: AppBar(title: const Text('Mechanix Widgets')),
            //   body: Container(color: Colors.amber, child: child),
            // ),
          ),
        ),
      ],
    );
  }
}






// WORKING




// import 'dart:ui' as ui;

// import 'package:device_frame/device_frame.dart';
// import 'package:flutter/material.dart';
// import 'package:mechanix_widgetbook/addon/comet_devices/frame_painter.dart';
// import 'package:mechanix_widgetbook/addon/frame_addon.dart';
// import 'package:watch_it/watch_it.dart';
// import 'package:widgetbook/widgetbook.dart' hide DeviceInfo, Devices;
// import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
// import 'package:widgets/mechanix.dart';

// // Import your custom addon
// // This file does not exist yet,
// // it will be generated in the next step
// import 'main.directories.g.dart';

// void main() {
//   di.registerSingleton(ThemeToggle());
//   runApp(const WidgetbookApp());
// }

// @widgetbook.App()
// class WidgetbookApp extends StatefulWidget {
//   const WidgetbookApp({super.key});

//   @override
//   State<WidgetbookApp> createState() => _WidgetbookAppState();
// }

// class _WidgetbookAppState extends State<WidgetbookApp> {
//   ui.Image? _deviceImage;

//   @override
//   void initState() {
//     super.initState();
//     _loadDeviceImage();
//   }

//   Future<void> _loadDeviceImage() async {
//     final image = await RectangleFramePainter.loadImage();
//     print('image load $image');
//     if (_deviceImage == null) {
//       setState(() {
//         _deviceImage = image;
//       });
//     }
//     print('image load _deviceImage $_deviceImage');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Widgetbook.material(
//       // The [directories] variable does not exist yet,
//       // it will be generated in the next step
//       lightTheme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.dark,
//       directories: directories,
//       // appBuilder: (context, child) =>
//       //     ColoredBox(color: Colors.blueAccent, child: child),
//       // appBuilder: (context, child) => MaterialApp(
//       //   debugShowCheckedModeBanner: false,
//       //   home: Scaffold(body: child),
//       //   darkTheme: ThemeData.dark(),
//       //   themeMode: ThemeMode.dark,
//       // ),
//       // appBuilder: (context, child) => _MechanixApp(child),
//       enableLeafComponents: false,
//       addons: [
//         // Add your custom DeviceFrameAddon
//         CustomDeviceFrameAddon(
//           devices: [
//             // MechaDevices.comet.mechaCometM
//             DeviceInfo(
//               framePainter: RectangleFramePainter(image: _deviceImage),
//               identifier: DeviceIdentifier(
//                 TargetPlatform.linux,
//                 DeviceType.phone,
//                 'Comet M 2',
//               ),
//               screenPath: Path()..addRect(Rect.fromLTWH(30, 30, 540, 620)),
//               frameSize: const Size(600, 1100),
//               name: 'Comet M 2',
//               pixelRatio: 2,
//               screenSize: const Size(540, 620),
//               safeAreas: const EdgeInsets.only(top: 44, bottom: 34),
//             ),
//           ],
//         ),
//         BuilderAddon(
//           name: 'Mechanix',
//           builder: (context, child) => _MechanixApp(child),
//         ),
//       ],
//     );
//   }
// }

// class _MechanixApp extends StatelessWidget with WatchItMixin {
//   final Widget? child;

//   const _MechanixApp(this.child);

//   @override
//   Widget build(BuildContext context) {
//     final themeMode = watchPropertyValue((ThemeToggle t) => t.themeMode);
//     final mechanixVariant = watchPropertyValue(
//       (ThemeToggle t) => t.mechanixVariant,
//     );
//     return MechanixTheme(
//       data: MechanixThemeData(mechanixVariant: mechanixVariant),
//       builder: (context, mechanix, child) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         darkTheme: mechanix.darkTheme,
//         theme: mechanix.lightTheme,
//         themeMode: themeMode,
//         home: Scaffold(body: child),
//       ),
//       child: child,
//     );
//   }
// }
