import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class BorderKnob extends Knob<BorderValues?> {
  BorderKnob({
    required super.label,
    required super.initialValue,
    super.description,
  });

  BorderKnob.nullable({
    required super.label,
    required super.initialValue,
    super.description,
  }) : super(isNullable: true);

  @override
  List<Field> get fields => [
    ColorField(
      name: _BorderFieldNames.color,
      initialValue: initialValue?.color ?? Colors.transparent,
    ),
    ObjectDropdownField<BorderStyle>(
      name: _BorderFieldNames.borderStyle,
      values: BorderStyle.values,
      initialValue: initialValue?.style ?? BorderStyle.none,
      labelBuilder: (style) => style.toString().split('.').last,
    ),
    DoubleSliderField(
      name: _BorderFieldNames.width,
      initialValue: initialValue?.width ?? 0,
      min: 0,
      max: 10,
    ),
  ];

  @override
  BorderValues? valueFromQueryGroup(Map<String, String> group) {
    try {
      final color = valueOf<Color>(_BorderFieldNames.color, group);
      final style = valueOf<BorderStyle>(_BorderFieldNames.borderStyle, group);
      final width = valueOf<double>(_BorderFieldNames.width, group);

      return BorderValues(color, style, width);
    } catch (e) {
      return null;
    }
  }
}

class BorderValues {
  const BorderValues(this.color, this.style, this.width);

  final Color? color;
  final BorderStyle? style;
  final double? width;

  BorderValues copyWith({Color? color, BorderStyle? style, double? width}) {
    return BorderValues(
      color ?? this.color,
      style ?? this.style,
      width ?? this.width,
    );
  }

  // Helper method to convert to Flutter's Border
  Border? toBorder() {
    if (style == BorderStyle.none || width == 0 || width == null) {
      return null;
    }

    return Border.all(
      color: color ?? Colors.black,
      width: width ?? 1.0,
      style: style ?? BorderStyle.solid,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BorderValues &&
        other.color == color &&
        other.style == style &&
        other.width == width;
  }

  @override
  int get hashCode => Object.hash(color, style, width);
}

abstract class _BorderFieldNames {
  static const color = 'Color';
  static const borderStyle = 'Border Style';
  static const width = 'Width';
}
