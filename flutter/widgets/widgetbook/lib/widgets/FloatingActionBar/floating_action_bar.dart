import 'package:flutter/material.dart';
import 'package:mechanix_widgetbook/knobs/knobs_extension.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgets/mechanix.dart';
import 'package:widgets/widgets/floating_action_bar/mechanix_floating_action_bar_theme.dart';
import 'package:widgets/widgets/menu/constants/menu_positions.dart';

@widgetbook.UseCase(
  name: 'Floating Action Bar',
  type: MechanixFloatingActionBar,
)
Widget buildFloatingActionBarUseCase(BuildContext context) {
  return _FloatingActionBar();
}

class _FloatingActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MechanixFloatingActionBar(
        dropdownPosition: context.knobs.object.dropdown(
          label: 'Dropdown Position',
          initialOption: DropdownPosition.bottomCenter,
          labelBuilder: (value) => value.name,
          options: [
            DropdownPosition.topCenter,
            DropdownPosition.topRight,
            DropdownPosition.topLeft,
            DropdownPosition.center,
            DropdownPosition.centerRight,
            DropdownPosition.centerLeft,
            DropdownPosition.bottomCenter,
            DropdownPosition.bottomRight,
            DropdownPosition.bottomLeft,
          ],
        ),
        animationDuration: Duration(
          milliseconds: context.knobs.int.slider(
            label: 'Duration',
            max: 3000,
            min: 0,
            divisions: 100,
          ),
        ),
        menus: [
          IconWidget.fromIconData(icon: Icon(Icons.ac_unit)),
          IconWidget.fromIconData(icon: Icon(Icons.more_vert)),
          IconWidget.fromIconData(icon: Icon(Icons.more_vert_sharp)),
          IconWidget.fromIconData(icon: Icon(Icons.more_vert_outlined)),
          IconWidget.fromIconData(icon: Icon(Icons.more_vert_rounded)),
        ],
        theme: MechanixFloatingActionBarThemeData(
          height: context.knobs.double.input(
            label: 'Floating Action Bar Height',
            initialValue: 60,
          ),
          width: context.knobs.double.input(
            label: 'Floating Action Bar Width',
            initialValue: 200,
          ),
          barSpacing: context.knobs.double.input(
            label: 'Spacing',
            description: 'Spacing between floating action abr widgets',
            initialValue: 0,
          ),
          decoration: BoxDecoration(
            border: context.knobs
                .borderOrNull(
                  label: 'Border Style',
                  description: 'Border Style with color, style and width',
                )
                ?.toBorder(),
            color:
                context.knobs.colorOrNull(label: 'Background Color') ??
                context.colorScheme.secondary,
            borderRadius: BorderRadius.all(
              Radius.circular(
                context.knobs.double.slider(
                  label: 'Border Radius',
                  initialValue: 8,
                  max: 50,
                  min: 0,
                ),
              ),
            ),
          ),
          barMainAxisAlignment: context.knobs.object.dropdown(
            label: 'Main Axis Alignment',
            initialOption: MainAxisAlignment.spaceAround,
            description:
                'Defines the main axis alignment of action buttons inside the Floating Action Bar, controlling their spacing and layout.',
            labelBuilder: (value) => value.name,
            options: [
              MainAxisAlignment.center,
              MainAxisAlignment.end,
              MainAxisAlignment.spaceAround,
              MainAxisAlignment.spaceBetween,
              MainAxisAlignment.spaceEvenly,
              MainAxisAlignment.start,
            ],
          ),
          alignment: context.knobs.objectOrNull.dropdown(
            label: 'Alignment',
            initialOption: null,
            description:
                "Specifies the alignment of the Floating Action Bar within its parent widget.",
            labelBuilder: (value) {
              return value.toString().split('.')[1];
            },
            options: [
              Alignment.topLeft,
              Alignment.topCenter,
              Alignment.topRight,
              Alignment.centerLeft,
              Alignment.center,
              Alignment.centerRight,
              Alignment.bottomLeft,
              Alignment.bottomCenter,
              Alignment.bottomRight,
            ],
          ),
          barCrossAxisAlignment: context.knobs.object.dropdown(
            label: 'Cross Axis Alignment',
            initialOption: CrossAxisAlignment.center,
            description:
                "Specifies the alignment of the Floating Action Bar within its parent widget.",
            labelBuilder: (value) => value.name,
            options: [
              CrossAxisAlignment.baseline,
              CrossAxisAlignment.center,
              CrossAxisAlignment.end,
              CrossAxisAlignment.start,
              CrossAxisAlignment.stretch,
            ],
          ),
          clipBehavior: context.knobs.object.dropdown(
            label: 'Clip Behavior',
            labelBuilder: (value) => value.name,
            options: [
              Clip.antiAlias,
              Clip.antiAliasWithSaveLayer,
              Clip.hardEdge,
              Clip.none,
            ],
          ),
          padding: EdgeInsets.all(
            context.knobs.double.slider(
              label: 'Padding',
              divisions: 1,
              initialValue: 8,
            ),
          ),
          margin: EdgeInsets.all(
            context.knobs.double.slider(
              label: 'Padding',
              divisions: 1,
              initialValue: 8,
            ),
          ),
        ),
      ),
    );
  }
}
