import 'package:device_frame/device_frame.dart';
import 'package:mechanix_widgetbook/addon/comet_devices/comet_m_device_info.dart'
    as mecha_comet_m;

abstract class MechaDevices {
  static const comet = _CometDevices();
}

class _CometDevices {
  const _CometDevices();

  DeviceInfo get mechaCometM => mecha_comet_m.info;
}
