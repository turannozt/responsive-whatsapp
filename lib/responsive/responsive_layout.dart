import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreebLayout;
  final Widget webScreebLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreebLayout,
      required this.webScreebLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > 900) {
          //Web Screen
          return webScreebLayout;
        }
        //Mobile Screen
        return mobileScreebLayout;
      }),
    );
  }
}
