import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';
import '../widgets/text.dart';

class Addskill_screen extends StatelessWidget {
  const Addskill_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        iconTheme: const IconThemeData(color: maincolor),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20).r,
                child: Apptext(text: "Add Skill", size: 16.sp, weight: FontWeight.w700, textcolor: maincolor),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10).r),
                    suffixIcon: Icon(Icons.close,color: Colors.grey,),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.w),
                    hintText: "Design",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 12.sp),
                    filled: true,
                    fillColor: Colors.white),
              ),
              Expanded(
                child: ListView(
                   
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.r),
                        child: Apptext(text: "Graphic Design", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "Graphic Thinking", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "Ui/UX Design", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "Adobe Indesign", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "Web Design", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "InDesign", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "Canva Design", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "User Interface Design", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "Product Design", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "User Experience Design", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                    ]),
              ),
              SizedBox()
            ]),
      ),
    );
  }
}
