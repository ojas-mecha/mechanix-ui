import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgets/mechanix.dart';
import 'package:widgets/widgets/menu/constants/menu_positions.dart';
import 'package:widgets/widgets/menu/models/mechanix_menu_item.dart';

// Import the widget from your app

@widgetbook.UseCase(name: 'Menu', type: MechanixMenu)
Widget buildMenuUseCase(BuildContext context) {
  return Center(
    child: MechanixMenu(
      dropdownPosition: context.knobs.object.dropdown(
        label: 'Dropdown Position',
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
      items: [MechanixMenuItemsType(title: 'Menu 1')],
    ),
  );
}
