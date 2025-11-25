// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mechanix_widgetbook/widgets/FloatingActionBar/floating_action_bar.dart'
    as _mechanix_widgetbook_widgets_FloatingActionBar_floating_action_bar;
import 'package:mechanix_widgetbook/widgets/FloatingActionBar/floating_action_bar_wihtout_button.dart'
    as _mechanix_widgetbook_widgets_FloatingActionBar_floating_action_bar_wihtout_button;
import 'package:mechanix_widgetbook/widgets/menu.dart'
    as _mechanix_widgetbook_widgets_menu;
import 'package:widgetbook/widgetbook.dart' as _widgetbook;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookFolder(
        name: 'floating_action_bar',
        children: [
          _widgetbook.WidgetbookComponent(
            name: 'MechanixFloatingActionBar',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Floating Action Bar',
                builder:
                    _mechanix_widgetbook_widgets_FloatingActionBar_floating_action_bar
                        .buildFloatingActionBarUseCase,
              ),
              _widgetbook.WidgetbookUseCase(
                name: 'Floating Action Bar Programmatically',
                builder:
                    _mechanix_widgetbook_widgets_FloatingActionBar_floating_action_bar_wihtout_button
                        .buildFloatingActionBarUseCase,
              ),
            ],
          ),
        ],
      ),
      _widgetbook.WidgetbookFolder(
        name: 'menu',
        children: [
          _widgetbook.WidgetbookComponent(
            name: 'MechanixMenu',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Menu',
                builder: _mechanix_widgetbook_widgets_menu.buildMenuUseCase,
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
