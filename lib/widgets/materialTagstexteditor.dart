// import 'package:flutter/material.dart';

// class MaterialTextTags extends StatelessWidget {
//   const MaterialTextTags({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TagsTextEditor();
//   }
// }
// // 
// Container TagsTextEditor(Size size) {
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
//               length: values.length,
//               controller: _textEditingController,
//               focusNode: _focusNode,
//               delimiters: [',', ' '],
//               hasAddButton: true,
//               resetTextOnSubmitted: true,
//               // This is set to grey just to illustrate the `textStyle` prop
//               textStyle: const TextStyle(color: Colors.grey),
//               onSubmitted: (outstandingValue) {
//                 setState(() {
//                   values.add(outstandingValue);
//                 });
//               },
//               inputDecoration: const InputDecoration(
//                 border: InputBorder.none,
//                 hintText: 'Qualification...',
//               ),
//               onTagChanged: (newValue) {
//                 setState(() {
//                   values.add(newValue);
//                 });
//               },
//               tagBuilder: (context, index) => _Chip(
//                 index: index,
//                 label: values[index],
//                 onDeleted: _onDelete,
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
