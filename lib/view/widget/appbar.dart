import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.centerTitle,
    this.leading,
    this.backgroundColor,
  });

  final Widget? title;
  final List<Widget>? actions;
  final bool? centerTitle;
  final Widget? leading;
  final Color? backgroundColor;

  static int? titlebarHeight;
  static bool _drawTitlebar = false;

  @override
  Widget build(BuildContext context) {
    final bar = AppBar(
      key: key,
      title: title,
      actions: actions,
      centerTitle: centerTitle,
      leading: leading,
      backgroundColor: backgroundColor,
      toolbarHeight: (titlebarHeight ?? 0) + kToolbarHeight,
    );
    if (!_drawTitlebar) return bar;
    return Stack(
      children: [
        bar,
        Positioned(
          right: 0,
          top: 0,
          child: GestureDetector(
            onVerticalDragStart: (_) {
              windowManager.startDragging();
            },
            onHorizontalDragStart: (_) {
              windowManager.startDragging();
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  icon: Transform.translate(
                    offset: const Offset(0, -3.5),
                    child: const Icon(Icons.minimize, size: 13),
                  ),
                  onPressed: () => windowManager.minimize(),
                ),
                IconButton(
                  icon: const Icon(Icons.crop_square, size: 13),
                  onPressed: () async {
                    if (await windowManager.isMaximized()) {
                      windowManager.unmaximize();
                    } else {
                      windowManager.maximize();
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.close, size: 14),
                  onPressed: () => windowManager.close(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Future<void> updateTitlebarHeight() async {
    switch (Platform.operatingSystem) {
      case 'macos':
        titlebarHeight = 27;
        break;
      // Draw a titlebar on Linux
      case 'linux' || 'windows':
        titlebarHeight = 37;
        _drawTitlebar = true;
        break;
      default:
        break;
    }
  }

  @override
  Size get preferredSize =>
      Size.fromHeight((titlebarHeight ?? 0) + kToolbarHeight);
}
