import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {
  void filterDialog(Widget child, {double? height}) {
    showCupertinoModalPopup<void>(
        context: this,
        builder: (BuildContext context) => Container(
              height: height ?? 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }
}
