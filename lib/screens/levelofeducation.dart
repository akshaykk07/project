// import 'package:flutter/material.dart';
// import 'package:jobfinder/widgets/text.dart';
//
// import '../constants/colors.dart';
//
// class Levelofeducation_Screen extends StatelessWidget {
//   const Levelofeducation_Screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: white,
//         leading: const Icon(
//           Icons.arrow_back_sharp,
//           color: maincolor,
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 20),
//                   child: Apptext(text: "Level of Education", size: 16, weight: FontWeight.w700, textcolor: maincolor),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       enabledBorder: InputBorder.none,
//                       focusedBorder: InputBorder.none,
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       suffixIcon: Icon(Icons.close,color: Colors.grey,),
//                       prefixIcon: const Icon(
//                         Icons.search,
//                         color: Colors.grey,
//                       ),
//                       contentPadding: const EdgeInsets.symmetric(vertical: 10),
//                       hintText: "Bachelor",
//                       filled: true,
//                       fillColor: Colors.white),
//                 ),
//                 SizedBox(
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelor of Electronic Engineering (Indrustrial Electronics)", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelor of Information Technology", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: " Economics (Bachelor of Science), Psycology", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelor of Arts (Hons) Mass Communication With Public Relations", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelor of Science in Computer Science", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelors of Science in Marketing", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelor of Engineering With A Major in Engineering Product Development (Robotic Track)", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelor of Busines (Economics/Finance)", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelors of Science in Marketing", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Apptext(text: "Bachelors of Business Adminisitration", size: 12, weight: FontWeight.w400, textcolor: maincolor),
//                         ),
//                       ]),
//                 ),
//                 SizedBox()
//               ]),
//         ),
//       ),
//     );
//   }
// }
