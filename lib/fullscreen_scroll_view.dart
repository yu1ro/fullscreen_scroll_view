library fullscreen_scroll_view;

import 'package:flutter/widgets.dart';

class FullScreenScrollView extends StatelessWidget {
  const FullScreenScrollView({
    Key? key,
    this.child,
    this.reverse = false,
    this.physics,
    this.padding,
  }) : super(key: key);

  /// The widget that scrolls.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget? child;

  /// see [SingleChildScrollView.reverse]
  final bool reverse;

  /// see [SingleChildScrollView.physics]
  final ScrollPhysics? physics;

  /// see [SingleChildScrollView.padding]
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return SingleChildScrollView(
        physics: physics,
        reverse: reverse,
        padding: padding,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: IntrinsicHeight(
            child: child,
          ),
        ),
      );
    });
  }
}
