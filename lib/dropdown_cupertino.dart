library dropdown_cupertino;

import 'package:dropdown_cupertino/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownCupertino<T extends Enum> extends StatefulWidget {
  final String initialText;
  final TextStyle? style;
  final double? height;
  final void Function(String) onSelectedItemChanged;
  final List<T> enumValues;
  final Map<T, String> pickList;
  const DropDownCupertino(
      {Key? key,
      required this.initialText,
      this.style,
      required this.onSelectedItemChanged,
      this.height,
      required this.enumValues,
      required this.pickList})
      : super(key: key);

  @override
  State<DropDownCupertino> createState() => _DropDownCupertinoState();
}

class _DropDownCupertinoState extends State<DropDownCupertino> {
  String categoryText = "";

  @override
  void initState() {
    categoryText = widget.initialText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: const BorderSide(
                width: 0.0, color: CupertinoColors.inactiveGray),
          ),
        ),
        onPressed: (() => context.filterDialog(
            CupertinoPicker(
              magnification: 1.22,
              squeeze: 1.2,
              useMagnifier: true,
              itemExtent: 32,
              onSelectedItemChanged: (int selectedItem) {
                setState(() {
                  categoryText = widget
                      .pickList[widget.enumValues[selectedItem]]
                      .toString();
                });
                widget.onSelectedItemChanged(categoryText);
              },
              children:
                  List<Widget>.generate(widget.enumValues.length, (int index) {
                return Center(
                  child: Text(
                      widget.pickList[widget.enumValues[index]].toString(),
                      style: widget.style),
                );
              }),
            ),
            height: widget.height)),
        child: Text(
          categoryText,
          style: widget.style,
        ),
      ),
    );
  }
}
