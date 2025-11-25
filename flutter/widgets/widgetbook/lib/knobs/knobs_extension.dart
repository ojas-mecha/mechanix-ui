import 'package:flutter/material.dart';
import 'package:mechanix_widgetbook/knobs/border_knob.dart';
import 'package:widgetbook/widgetbook.dart';

// extension BorderKnobBuilder on KnobsBuilder {
//   BorderValues? border({
//     required String label,
//     BorderValues initialValue = const BorderValues(
//       Colors.transparent,
//       BorderStyle.none,
//       0,
//     ),
//   }) => onKnobAdded(BorderKnob(label: label, initialValue: initialValue));
// }

extension BorderKnobBuilder on KnobsBuilder {
  BorderValues? border({
    required String label,
    String? description,
    BorderValues? initialValue,
  }) {
    return onKnobAdded(
      BorderKnob(
        label: label,
        description: description,
        initialValue:
            initialValue ??
            const BorderValues(Colors.transparent, BorderStyle.none, 0),
      ),
    );
  }

  BorderValues? borderOrNull({
    required String label,
    String? description,
    BorderValues? initialValue,
  }) {
    return onKnobAdded(
      BorderKnob(
        label: label,
        description: description,
        initialValue:
            initialValue ??
            const BorderValues(Colors.transparent, BorderStyle.none, 0),
      ),
    );
  }
}
