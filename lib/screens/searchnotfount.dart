// import 'package:flutter/material.dart';
// import 'package:jobfinder/widgets/circle.dart';
// import 'package:jobfinder/widgets/text.dart';
//
// import '../constants/colors.dart';
//
// class Searchnotfount_screen extends StatelessWidget {
//   var main;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: white,
//           leading: const Icon(
//             Icons.arrow_back_sharp,
//             color: maincolor,
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                     enabledBorder: InputBorder.none,
//                     focusedBorder: InputBorder.none,
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     prefixIcon: const Icon(
//                       Icons.search,
//                       color: Colors.grey,
//                     ),
//                     contentPadding: const EdgeInsets.symmetric(vertical: 10),
//                     hintText: "Search",
//                     filled: true,
//                     fillColor: Colors.white),
//               ),
//               Image.asset(
//                 "assets/s.png",
//                 width: 156,
//                 height: 176,
//               ),
//               SizedBox(
//                 child: Column(children: [
//                   Apptext(
//                       text: "No results found",
//                       size: 16,
//                       weight: FontWeight.w700,
//                       textcolor: maincolor),
//                   Apptext(
//                       text: "The search could not be found, please check.",
//                       size: 12,
//                       weight: FontWeight.w400,
//                       textcolor: maincolor),
//                   Apptext(
//                       text: "spelling or write another word.",
//                       size: 12,
//                       weight: FontWeight.w400,
//                       textcolor: maincolor)
//                 ]),
//               ),
//               SizedBox()
//             ],
//           ),
//         ));
//   }
// }
