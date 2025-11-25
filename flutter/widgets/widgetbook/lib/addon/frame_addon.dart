import 'package:device_frame/device_frame.dart';
import 'package:flutter/widgets.dart';
import 'package:widgetbook/widgetbook.dart' hide DeviceInfo, Devices;

class DeviceFrameSetting {
  const DeviceFrameSetting({
    this.device,
    this.orientation = Orientation.portrait,
    this.isFrameVisible = true,
  });

  final DeviceInfo? device;
  final Orientation orientation;
  final bool isFrameVisible;

  DeviceFrameSetting copyWith({
    DeviceInfo? device,
    Orientation? orientation,
    bool? isFrameVisible,
  }) {
    return DeviceFrameSetting(
      device: device ?? this.device,
      orientation: orientation ?? this.orientation,
      isFrameVisible: isFrameVisible ?? this.isFrameVisible,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DeviceFrameSetting &&
        other.device == device &&
        other.orientation == orientation &&
        other.isFrameVisible == isFrameVisible;
  }

  @override
  int get hashCode =>
      device.hashCode ^ orientation.hashCode ^ isFrameVisible.hashCode;
}

class CustomDeviceFrameAddon extends WidgetbookAddon<DeviceFrameSetting> {
  CustomDeviceFrameAddon({this.devices = const []})
    : super(
        name: 'Device Frame',
        // initialSetting: const DeviceFrameSetting()
      );

  final List<DeviceInfo?> devices;

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    DeviceFrameSetting setting,
  ) {
    if (setting.device == null || !setting.isFrameVisible) {
      return child;
    }

    return Center(
      child: DeviceFrame(
        device: setting.device!,
        orientation: setting.orientation,
        screen: child,
      ),
    );
  }

  @override
  List<Field> get fields {
    return [
      ObjectDropdownField<DeviceInfo?>(
        name: 'device',
        initialValue: null,
        // values: _getAllDevices(),
        values: devices,
        labelBuilder: (device) {
          if (device == null) return 'No Frame';
          return '${device.name} (${_getPlatformName(device.identifier.platform)})';
        },
      ),
      ObjectDropdownField<Orientation>(
        name: 'orientation',
        initialValue: Orientation.landscape,
        values: const [Orientation.portrait, Orientation.landscape],
        labelBuilder: (orientation) {
          return orientation == Orientation.portrait ? 'Portrait' : 'Landscape';
        },
      ),
      BooleanField(name: 'isFrameVisible', initialValue: true),
    ];
  }

  @override
  DeviceFrameSetting valueFromQueryGroup(Map<String, String> group) {
    // Parse device from query parameters
    final deviceValue = valueOf<DeviceInfo?>('device', group);

    // Parse orientation from query parameters
    final orientationValue =
        valueOf<Orientation>('orientation', group) ?? Orientation.portrait;

    // Parse isFrameVisible from query parameters
    final isFrameVisibleValue = valueOf<bool>('isFrameVisible', group) ?? true;

    return DeviceFrameSetting(
      device: deviceValue,
      orientation: orientationValue,
      isFrameVisible: isFrameVisibleValue,
    );
  }

  String _getPlatformName(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.iOS:
        return 'iOS';
      case TargetPlatform.android:
        return 'Android';
      case TargetPlatform.macOS:
        return 'macOS';
      case TargetPlatform.windows:
        return 'Windows';
      case TargetPlatform.linux:
        return 'Linux';
      case TargetPlatform.fuchsia:
        return 'Linux';
    }
  }
}
