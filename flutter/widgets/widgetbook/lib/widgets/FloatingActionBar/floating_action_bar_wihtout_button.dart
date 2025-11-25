import 'package:flutter/material.dart';
import 'package:mechanix_widgetbook/knobs/knobs_extension.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgets/mechanix.dart';
import 'package:widgets/widgets/floating_action_bar/mechanix_floating_action_bar_theme.dart';
import 'package:widgets/widgets/menu/constants/menu_positions.dart';

@widgetbook.UseCase(
  name: 'Floating Action Bar Programmatically',
  type: MechanixFloatingActionBar,
)
Widget buildFloatingActionBarUseCase(BuildContext context) {
  // final FloatingActionBarController barController =
  //     FloatingActionBarController();

  // void openBar() {
  //   barController.open();
  // }

  // void closeBar() {
  //   barController.close();
  // }

  // void toggleBar() {
  //   barController.toggle();
  // }

  // return Center(
  //   child: Row(
  //     children: [
  //       ElevatedButton(onPressed: openBar, child: const Text('Open')),
  //       ElevatedButton(onPressed: closeBar, child: const Text('Close')),
  //       ElevatedButton(onPressed: toggleBar, child: const Text('Toggle')),
  //       MechanixFloatingActionBar(
  //         // offset: Offset(200, 200),
  //         floatingActionBarController: barController,
  //         dropdownPosition: context.knobs.object.dropdown(
  //           label: 'Dropdown Position',
  //           initialOption: DropdownPosition.bottomCenter,
  //           labelBuilder: (value) => value.name,
  //           options: [
  //             DropdownPosition.topCenter,
  //             DropdownPosition.topRight,
  //             DropdownPosition.topLeft,
  //             DropdownPosition.center,
  //             DropdownPosition.centerRight,
  //             DropdownPosition.centerLeft,
  //             DropdownPosition.bottomCenter,
  //             DropdownPosition.bottomRight,
  //             DropdownPosition.bottomLeft,
  //           ],
  //         ),
  //         animationDuration: Duration(
  //           milliseconds: context.knobs.int.slider(
  //             label: 'Duration',
  //             max: 3000,
  //             min: 0,
  //             divisions: 100,
  //           ),
  //         ),
  //         menus: [
  //           IconWidget.fromIconData(icon: Icon(Icons.ac_unit)),
  //           IconWidget.fromIconData(icon: Icon(Icons.more_vert)),
  //           IconWidget.fromIconData(icon: Icon(Icons.more_vert_sharp)),
  //           IconWidget.fromIconData(icon: Icon(Icons.more_vert_outlined)),
  //           IconWidget.fromIconData(icon: Icon(Icons.more_vert_rounded)),
  //         ],
  //         theme: MechanixFloatingActionBarThemeData(
  //           height: context.knobs.double.input(
  //             label: 'Floating Action Bar Height',
  //             initialValue: 60,
  //           ),
  //           width: context.knobs.double.input(
  //             label: 'Floating Action Bar Width',
  //             initialValue: 200,
  //           ),
  //           barSpacing: context.knobs.double.input(
  //             label: 'Spacing',
  //             description: 'Spacing between floating action abr widgets',
  //             initialValue: 0,
  //           ),
  //           decoration: BoxDecoration(
  //             // border: Border.all(
  //             //   color: context.knobs.color(
  //             //     label: 'Border Color',
  //             //     initialColorSpace: ColorSpace.rgb,
  //             //   ),
  //             // ),
  //             border: context.knobs.border(label: 'Border')?.toBorder(),
  //           ),
  //           barMainAxisAlignment: context.knobs.object.dropdown(
  //             label: 'Main Axis Alignment',
  //             initialOption: MainAxisAlignment.spaceAround,
  //             description:
  //                 'Defines the main axis alignment of action buttons inside the Floating Action Bar, controlling their spacing and layout.',
  //             labelBuilder: (value) => value.name,
  //             options: [
  //               MainAxisAlignment.center,
  //               MainAxisAlignment.end,
  //               MainAxisAlignment.spaceAround,
  //               MainAxisAlignment.spaceBetween,
  //               MainAxisAlignment.spaceEvenly,
  //               MainAxisAlignment.start,
  //             ],
  //           ),
  //           alignment: context.knobs.objectOrNull.dropdown(
  //             label: 'Alignment',
  //             initialOption: null,
  //             description:
  //                 "Specifies the alignment of the Floating Action Bar within its parent widget.",
  //             labelBuilder: (value) {
  //               return value.toString().split('.')[1];
  //             },
  //             options: [
  //               Alignment.topLeft,
  //               Alignment.topCenter,
  //               Alignment.topRight,
  //               Alignment.centerLeft,
  //               Alignment.center,
  //               Alignment.centerRight,
  //               Alignment.bottomLeft,
  //               Alignment.bottomCenter,
  //               Alignment.bottomRight,
  //             ],
  //           ),
  //           barCrossAxisAlignment: context.knobs.object.dropdown(
  //             label: 'Cross Axis Alignment',
  //             initialOption: CrossAxisAlignment.center,
  //             description:
  //                 "Specifies the alignment of the Floating Action Bar within its parent widget.",
  //             labelBuilder: (value) => value.name,
  //             options: [
  //               CrossAxisAlignment.baseline,
  //               CrossAxisAlignment.center,
  //               CrossAxisAlignment.end,
  //               CrossAxisAlignment.start,
  //               CrossAxisAlignment.stretch,
  //             ],
  //           ),
  //           clipBehavior: context.knobs.object.dropdown(
  //             label: 'Clip Behavior',
  //             labelBuilder: (value) => value.name,
  //             options: [
  //               Clip.antiAlias,
  //               Clip.antiAliasWithSaveLayer,
  //               Clip.hardEdge,
  //               Clip.none,
  //             ],
  //           ),
  //           padding: EdgeInsets.all(
  //             context.knobs.double.slider(
  //               label: 'Padding',
  //               divisions: 1,
  //               initialValue: 8,
  //             ),
  //           ),
  //           margin: EdgeInsets.all(
  //             context.knobs.double.slider(
  //               label: 'Padding',
  //               divisions: 1,
  //               initialValue: 8,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  // );
  return _FloatingActionBar();
}

class _FloatingActionBar extends StatefulWidget {
  @override
  State<_FloatingActionBar> createState() => _FloatingActionBarState();
}

class _FloatingActionBarState extends State<_FloatingActionBar> {
  final FloatingActionBarController barController =
      FloatingActionBarController();
  bool visible = false;

  void openBar() {
    barController.open();
    setState(() {
      visible = true;
    });
  }

  void closeBar() {
    barController.close();
    setState(() {
      visible = false;
    });
  }

  void toggleBar() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed: openBar, child: const Text('Open')),
          // ElevatedButton(onPressed: toggleBar, child: const Text('Toggle')),
          MechanixFloatingActionBar(
            // offset: Offset(200, 200),
            isMenuButtonRequired: false,
            floatingActionBarController: barController,

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
            // animationDuration: Duration(
            //   milliseconds: context.knobs.int.slider(
            //     label: 'Duration',
            //     max: 3000,
            //     min: 0,
            //     divisions: 100,
            //   ),
            // ),
            animationDuration: context.knobs.duration(
              label: 'Transition Duration',
              initialValue: Duration(milliseconds: 400),
            ),
            menus: [
              IconWidget.fromIconData(icon: Icon(Icons.upload)),
              IconWidget.fromIconData(icon: Icon(Icons.cut)),
              IconWidget.fromIconData(icon: Icon(Icons.copy)),
              IconWidget.fromIconData(icon: Icon(Icons.paste)),
              IconWidget.fromIconData(icon: Icon(Icons.delete)),
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
                // border: Border.all(
                //   color: context.knobs.color(
                //     label: 'Border Color',
                //     initialColorSpace: ColorSpace.rgb,
                //   ),
                // ),
                border: context.knobs.border(label: 'Border')?.toBorder(),
                color:
                    context.knobs.colorOrNull(label: 'Background Color') ??
                    context.colorScheme.secondary,
                borderRadius: BorderRadius.all(Radius.circular(8)),
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
          ElevatedButton(onPressed: closeBar, child: const Text('Close')),
        ],
      ),
    );
  }
}
