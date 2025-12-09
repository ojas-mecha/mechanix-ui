import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgets/mechanix.dart';
import 'package:widgets/widgets/bottomBar/bottom_bar_button_type.dart';
import 'package:widgets/widgets/bottomBar/mechanix_bottom_bar_theme.dart';
import 'package:widgets/widgets/floating_action_bar/mechanix_floating_action_bar_theme.dart';
import 'package:widgets/widgets/menu/constants/menu_positions.dart';

@widgetbook.UseCase(name: 'Bottom Bar', type: MechanixBottomBar)
final FloatingActionBarController con = FloatingActionBarController();
Widget buildMenuUseCase(BuildContext context) {
  return BottomBar();
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool isPresses = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MechanixBottomBar(
        theme: MechanixBottomBarThemeData(
          iconTheme: MechanixBottomBarIconThemeData(
            // iconColor: Colors.amberAccent,
          ),
        ),
        leadingWidget: [
          BottomBarButton.extension(
            iconTheme: MechanixBottomBarIconThemeData(
              buttonMargin: EdgeInsetsGeometry.only(left: 12),
            ),
            // iconWidget: IconWidget.fromIconData(icon: Icon(Icons.more_vert)),
            // iconWidget: IconWidget(
            //   iconPath: "assets/icons/tick_icon.png",
            //   isActive: isPresses,
            //   activeIconColor: context.colorScheme.primary,
            // ),
            iconPath: "assets/icons/tick_icon.png",
            isDisabled: true,

            floatingActionBarTheme: MechanixFloatingActionBarThemeData(
              barMainAxisAlignment: MainAxisAlignment.center,
              width: 500,
            ),
            isSelected: isPresses,
            onPressed: () {
              print('isPresses');
              print(isPresses);

              setState(() {
                isPresses = !isPresses;
              });
            },
            onExtensionClose: () {
              print('Closed');
              setState(() {
                isPresses = !isPresses;
              });
            },
            dropdownPosition: DropdownPosition.topLeft,
            extensionWidgets: [
              BottomBarButton(
                // iconPath: "assets/icons/tick_icon.png",
                iconWidget: IconWidget.fromIconData(
                  icon: Icon(Icons.access_alarms_outlined),
                ),
                onPressed: () {},
              ),
              BottomBarButton(
                iconWidget: IconWidget.fromIconData(
                  icon: Icon(Icons.map_sharp),
                ),
                onPressed: () {},
                iconTheme: MechanixBottomBarIconThemeData(
                  iconButtonSize: 30,
                  iconColor: Colors.redAccent,
                ),
              ),
              BottomBarButton(
                iconWidget: IconWidget.fromIconData(icon: Icon(Icons.call)),
                onPressed: () {},
              ),
            ],
          ),
          BottomBarButton.widget(
            isSelected: isPresses,
            widget: IconWidget(iconPath: "assets/icons/tick_icon.png"),
          ),
        ],
        centerWidget: [
          BottomBarButton(
            iconWidget: IconWidget.fromIconData(
              icon: Icon(Icons.video_collection_outlined),
            ),
            isDisabled: true,
            onPressed: () {},
          ),
          BottomBarButton(
            iconWidget: IconWidget.fromIconData(
              icon: Icon(Icons.audio_file_outlined),
            ),
            isSelected: isPresses,
            onPressed: () {
              print('isPresses');
              print(isPresses);

              setState(() {
                isPresses = !isPresses;
              });
            },
          ),
          BottomBarButton(
            iconWidget: IconWidget.fromIconData(icon: Icon(Icons.textsms)),
            onPressed: () {},
          ),
          BottomBarButton.widget(widget: Text("Button bar")),
        ],
        anchorWidget: [
          BottomBarButton(
            iconWidget: IconWidget.fromIconData(
              icon: Icon(Icons.delete),
              iconColor: Colors.redAccent,
            ),
            iconTheme: MechanixBottomBarIconThemeData(
              buttonMargin: EdgeInsetsGeometry.only(right: 12),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
