// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mechanix_widgetbook/widgets/BottomBar/bottom_bar.dart'
    as _mechanix_widgetbook_widgets_BottomBar_bottom_bar;
import 'package:mechanix_widgetbook/widgets/BottomSheet/bottom_sheet.dart'
    as _mechanix_widgetbook_widgets_BottomSheet_bottom_sheet;
import 'package:mechanix_widgetbook/widgets/FilledButton/filled_button.dart'
    as _mechanix_widgetbook_widgets_FilledButton_filled_button;
import 'package:mechanix_widgetbook/widgets/FloatingActionBar/floating_action_bar.dart'
    as _mechanix_widgetbook_widgets_FloatingActionBar_floating_action_bar;
import 'package:mechanix_widgetbook/widgets/FloatingActionBar/floating_action_bar_wihtout_button.dart'
    as _mechanix_widgetbook_widgets_FloatingActionBar_floating_action_bar_wihtout_button;
import 'package:mechanix_widgetbook/widgets/menu.dart'
    as _mechanix_widgetbook_widgets_menu;
import 'package:mechanix_widgetbook/widgets/Menu/menu.dart'
    as _mechanix_widgetbook_widgets_Menu_menu;
import 'package:mechanix_widgetbook/widgets/searchBar/search_bar.dart'
    as _mechanix_widgetbook_widgets_searchBar_search_bar;
import 'package:widgetbook/widgetbook.dart' as _widgetbook;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'MechanixElevatedButton',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Filled Button',
            builder: _mechanix_widgetbook_widgets_FilledButton_filled_button
                .buildFilledButtonUseCase,
          ),
        ],
      ),
      _widgetbook.WidgetbookFolder(
        name: 'bottomBar',
        children: [
          _widgetbook.WidgetbookComponent(
            name: 'MechanixBottomBar',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Bottom Bar',
                builder: _mechanix_widgetbook_widgets_BottomBar_bottom_bar
                    .buildMenuUseCase,
              ),
            ],
          ),
        ],
      ),
      _widgetbook.WidgetbookFolder(
        name: 'bottomSheetModals',
        children: [
          _widgetbook.WidgetbookComponent(
            name: 'MechanixBottomSheet',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Bottom Sheet',
                builder: _mechanix_widgetbook_widgets_BottomSheet_bottom_sheet
                    .buildMenuUseCase,
              ),
            ],
          ),
        ],
      ),
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
                name: 'Mechanix Menu',
                builder:
                    _mechanix_widgetbook_widgets_Menu_menu.buildMenuUseCase,
              ),
              _widgetbook.WidgetbookUseCase(
                name: 'Menu',
                builder: _mechanix_widgetbook_widgets_menu.buildMenuUseCase,
              ),
            ],
          ),
        ],
      ),
      _widgetbook.WidgetbookFolder(
        name: 'search_bar',
        children: [
          _widgetbook.WidgetbookComponent(
            name: 'MechanixSearchBar',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Search Bar',
                builder: _mechanix_widgetbook_widgets_searchBar_search_bar
                    .buildMenuUseCase,
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
