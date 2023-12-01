// import 'package:flutter/material.dart';
//
// import '../constants/colors.dart';
// import '../widgets/buttons.dart';
// import '../widgets/text.dart';
//
//
// class Jobcompany_screen extends StatelessWidget {
//   const Jobcompany_screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   elevation: 0,
//       //   leading: Icon(Icons.arrow_back,color: black,),
//       //   actions: [Icon(Icons.more_vert,color: black,),SizedBox(width: 10,)],
//       //   backgroundColor: white,
//       // ),
//       body: Stack(children: [
//         Column(children: [
//           SizedBox(
//             height: 90,
//           ),
//           Container(
//             height: 114,
//             width: double.infinity,
//             color: Colors.grey[200],
//             child:
//             Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               SizedBox(
//                 height: 10,
//               ),
//               Apptext(
//                   text: "UI/UX Designer",
//                   size: 16,
//                   weight: FontWeight.w700,
//                   textcolor: maincolor),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Apptext(
//                       text: "Google",
//                       size: 16,
//                       weight: FontWeight.w400,
//                       textcolor: maincolor),
//                   CircleAvatar(
//                     backgroundColor: maincolor,
//                     radius: 5,
//                   ),
//                   Apptext(
//                       text: "California",
//                       size: 16,
//                       weight: FontWeight.w400,
//                       textcolor: maincolor),
//                   CircleAvatar(
//                     backgroundColor: maincolor,
//                     radius: 5,
//                   ),
//                   Apptext(
//                       text: "1 day ago",
//                       size: 16,
//                       weight: FontWeight.w400,
//                       textcolor: maincolor),
//                 ],
//               )
//             ]),
//           ),
//           Expanded(
//               child: ListView(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 50, width: double.infinity, child: Row(
//                               children: [
//                                 Expanded(
//                                   child: Button(name: "Description",
//                                       btncolor: maincolor,
//                                       textcolor: white,
//                                       height: 50, width: 100),
//                                 ),
//                                 SizedBox(width: 20,),
//                                 Expanded(
//                                   child: Button(name: "Company",
//                                       btncolor: btncolor,
//                                       textcolor: maincolor,
//                                       height: 50, width: 100),
//                                 )
//                               ]),),
//                           SizedBox(height: 20,),
//                           Apptext(
//                               text: "About Company",
//                               size: 14,
//                               weight: FontWeight.w700,
//                               textcolor: black),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Apptext(
//                               text:
//                               "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Apptext(
//                               text:
//                               "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas .",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Apptext(
//                               text:
//                               "Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Apptext(
//                               text: "Website",
//                               size: 14,
//                               weight: FontWeight.w700,
//                               textcolor: black),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Apptext(
//                               text: "https://www.google.com",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: btncolor),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Apptext(
//                               text: "Industry",
//                               size: 14,
//                               weight: FontWeight.w700,
//                               textcolor: black),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Apptext(
//                               text: "Internet product",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Apptext(
//                               text: "Employee Size",
//                               size: 14,
//                               weight: FontWeight.w700,
//                               textcolor: black),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Apptext(
//                               text: "132,121 Employees",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Apptext(
//                               text: "Head office ",
//                               size: 14,
//                               weight: FontWeight.w700,
//                               textcolor: black),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Apptext(
//                               text: "Mountain View, California, Amerika Serikat",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Apptext(
//                               text: "Type ",
//                               size: 14,
//                               weight: FontWeight.w700,
//                               textcolor: black),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Apptext(
//                               text: "Multinational company",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Apptext(
//                               text: "Since",
//                               size: 14,
//                               weight: FontWeight.w700,
//                               textcolor: black),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Apptext(
//                               text: "1998",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Apptext(
//                               text: "Specialization",
//                               size: 14,
//                               weight: FontWeight.w700,
//                               textcolor: black),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Apptext(
//                               text:
//                               "Search technology, Web computing, Software and Online advertising",
//                               size: 12,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(height: 20,),
//                           Apptext(text: "Company Gallery",
//                               size: 14,
//                               weight: FontWeight.w400,
//                               textcolor: black),
//                           SizedBox(height: 20,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [SizedBox(width: 158,
//                                 height: 115,
//                                 child: Image.asset(
//                                   "assets/img.png", fit: BoxFit.cover,)), Image
//                                 .asset("assets/img.png")
//                             ],),
//                           Container(
//                             height: 100,
//                             color: white,
//                             width: double.infinity,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 SizedBox(
//                                   height: 50,
//                                   width: 50,
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.bookmark_outline_outlined,
//                                       color: maincolor,
//                                       size: 35,
//                                     ),
//                                   ),
//                                 ),
//                                 Button(
//                                     name: "APPLY NOW",
//                                     btncolor: maincolor,
//                                     textcolor: white,
//                                     height: 50,width: 290),
//                               ],
//                             ),
//                           ),
//
//                         ]),
//                   ),
//                 ],
//               ))
//         ]),
//         Positioned(
//             top: 25,
//             left: 150,
//             right: 150,
//             child: CircleAvatar(
//               radius: 42,
//               backgroundColor: Color(0xffAFECFE),
//               child: Image.asset(
//                 "assets/g.png",
//                 height: 54,
//                 width: 54,
//               ),
//             ))
//       ]),
//     );
//   }
// }
