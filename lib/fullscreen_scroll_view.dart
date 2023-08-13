library fullscreen_scroll_view;

import 'package:flutter/widgets.dart';

/// A Calculator.
class FullScreenScrollView extends StatelessWidget {
  const FullScreenScrollView({
    Key? key,
    this.child,
    this.reverse = false,
    this.physics,
    this.padding,
  }) : super(key: key);

  final Widget? child;

  final bool reverse;

  final ScrollPhysics? physics;

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
