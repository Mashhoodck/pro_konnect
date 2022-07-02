// import 'package:flutter/material.dart';
// import 'package:material_tag_editor/tag_editor.dart';

// import 'materialtags.dart';

// Container TagsTextEditorInterests(Size size) {
//   List<String> values = [];
//   List<String> interstsValues = [];

//   final TextEditingController _textEditingController = TextEditingController();
//   final TextEditingController _intrestsEditingController =
//       TextEditingController();

//       final FocusNode _focusNode = FocusNode();
//   return Container(
//     margin: EdgeInsets.only(left: size.width * 0.04, right: size.width * 0.04),
//     height: size.height * 0.1,
//     child: ListView(
//       children: <Widget>[
//         Container(
//           decoration: BoxDecoration(
//               border: Border.all(color: Colors.black),
//               borderRadius: BorderRadius.circular(20)),
//           child: Padding(
//             padding: EdgeInsets.only(
//                 left: size.width * 0.03,
//                 right: size.width * 0.03,
//                 top: size.width * 0.03,
//                 bottom: size.width * 0.03),
//             child: TagEditor(
//               length: interstsValues.length,
//               controller: _intrestsEditingController,
//               focusNode: _focusNode,
//               delimiters: [',', ' '],
//               hasAddButton: true,
//               resetTextOnSubmitted: true,
//               // This is set to grey just to illustrate the `textStyle` prop
//               textStyle: const TextStyle(color: Colors.grey),
//               onSubmitted: (outstandingValue) {
//                 setState(() {
//                   interstsValues.add(outstandingValue);
//                 });
//                 print(interstsValues);
//               },
//               inputDecoration: const InputDecoration(
//                 border: InputBorder.none,
//                 hintText: 'Interests...',
//               ),
//               onTagChanged: (newValue) {
//                 setState(() {
//                   interstsValues.add(newValue);
//                 });
//               },
//               tagBuilder: (context, index) => _Chiptwo(
//                 index: index,
//                 label: interstsValues[index],
//                 oninterestDeleted: _onInterestDelete,
//               ),
//               // InputFormatters example, this disallow \ and /
//               inputFormatters: [
//                 FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))
//               ],
//             ),
//           ),
//         ),

//         // This is just a button to illustrate how to use
//         // TextEditingController to set the value
//         // or do whatever you want with it
//       ],
//     ),
//   );
// }
