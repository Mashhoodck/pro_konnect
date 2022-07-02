import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_tag_editor/tag_editor.dart';

class MaterialTags extends StatefulWidget {
  final TextEditingController? textEditingController;
  final List<String> values;
  MaterialTags(
      {Key? key,
      this.title,
      required this.textEditingController,
      required this.values})
      : super(key: key);

  final String? title;

  @override
  _MaterialTagsState createState() => _MaterialTagsState();
}

class _MaterialTagsState extends State<MaterialTags> {
  final FocusNode _focusNode = FocusNode();

  _onDelete(index) {
    setState(() {
      widget.values.removeAt(index);
    });
  }

  /// This is just an example for using `TextEditingController` to manipulate
  /// the the `TextField` just like a normal `TextField`.

  @override
  Widget build(BuildContext context) {
    List<String> newValues = widget.values;
    print(newValues);
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TagEditor(
              length: widget.values.length,
              controller: widget.textEditingController,
              focusNode: _focusNode,
              delimiters: [',', ' '],
              hasAddButton: true,
              resetTextOnSubmitted: true,
              // This is set to grey just to illustrate the `textStyle` prop
              textStyle: const TextStyle(color: Colors.grey),
              onSubmitted: (outstandingValue) {
                setState(() {
                  widget.values.add(outstandingValue);
                });
              },
              inputDecoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Add more...',
              ),
              onTagChanged: (newValue) {
                setState(() {
                  widget.values.add(newValue);
                });
              },
              tagBuilder: (context, index) => _Chip(
                index: index,
                label: widget.values[index],
                onDeleted: _onDelete,
              ),
              // InputFormatters example, this disallow \ and /
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))
              ],
            ),
          ),
        ),

        // This is just a button to illustrate how to use
        // TextEditingController to set the value
        // or do whatever you want with it
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final ValueChanged<int> onDeleted;
  final int index;
  const _Chip({
    required this.label,
    required this.onDeleted,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.only(left: 8.0),
      label: Text(label),
      deleteIcon: Icon(
        Icons.close,
        size: 18,
      ),
      onDeleted: () {
        onDeleted(index);
      },
    );
  }
}
