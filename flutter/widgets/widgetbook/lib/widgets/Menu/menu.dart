import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgets/mechanix.dart';
import 'package:widgets/widgets/menu/constants/menu_positions.dart';
import 'package:widgets/widgets/menu/mechanix_menu_theme.dart';
import 'package:widgets/widgets/menu/models/mechanix_menu_item.dart';

// Import the widget from your app

@widgetbook.UseCase(name: 'Mechanix Menu', type: MechanixMenu)
Widget buildMenuUseCase(BuildContext context) {
  return Center(
    child: Container(
      color: Colors.lightBlueAccent,
      child: Row(
        children: [
          SizedBox(height: 100, width: 100),
          MechanixMenu(
            theme: const MechanixMenuThemeData(),
            dropdownPosition: DropdownPosition.topRight,
            animationDuration: const Duration(milliseconds: 300),

            items: [
              MechanixMenuItemsType(
                leading: Icon(Icons.paste),
                title: "Paste",
                disabled: true,
              ),
              MechanixMenuItemsType(
                leading: Icon(Icons.folder),
                isSelected: true,
                title: "New Folder",
              ),
              MechanixMenuItemsType(
                leading: Icon(Icons.select_all),
                title: "Select all",
              ),
              MechanixMenuItemsType(
                leading: Icon(Icons.hide_image_rounded),
                title: "Show Hidden Files",
              ),
              MechanixMenuItemsType(
                leading: Icon(Icons.propane),
                title: "Properties",
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
