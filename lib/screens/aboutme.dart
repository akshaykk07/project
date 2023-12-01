import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Aboutme_screen extends StatelessWidget {
  const Aboutme_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        iconTheme: const IconThemeData(color: maincolor),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20).r,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20).r,
                          child: Apptext(
                              text: "About me",
                              size: 16.sp,
                              weight: FontWeight.w600,
                              textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8).r,
                          child: TextFormField(
                            decoration:  InputDecoration(
                              focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: white)),
                              enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: white)),
                              hintText: "Tell me about you.",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 12.sp),
                              filled: true,
                              fillColor: white,
                              border: InputBorder.none,
                            ),
                            maxLines: 10,
                          ),
                        ),
                      ]),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 150).r,
                        child: InkWell(
                          onTap: () {
                            modalBottomSheetMenu(context);
                          },
                          child: Button(
                              name: "Save",
                              btncolor: maincolor,
                              textcolor: white,
                              width: 250.w,
                              height: 50.h),
                        ),
                      ))
                ]),
          ),
        ),
      ),
    );
  }

  void modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return  Container(
            height: 300.0.h,
            color: Colors.transparent,
            child:  Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(10.0).r,
                        topRight: Radius.circular(10.0).r)),
                child:  Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(height: 5.h,width: 30.w,color: maincolor,),
                        Column(
                          children: [
                            Apptext(
                                text: "Undo Changes ?",
                                size: 16.sp,
                                weight: FontWeight.w700,
                                textcolor: maincolor),
                            Apptext(
                                text:
                                    "Are you sure you want to change what you entered?",
                                size: 12.sp,
                                weight: FontWeight.w400,
                                textcolor: maincolor),
                          ],
                        ),
                       Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10).r,
                              child: Button(
                                  name: "CONTINUE FILLING",
                                  btncolor: maincolor,
                                  textcolor: white,
                                  width: 200.w,
                                  height: 50.h),
                            ),
                            Button(
                                name: "UNDO CHANGES",
                                btncolor: btncolor,
                                textcolor: maincolor,
                                width: 200.w,
                                height: 50.h)
                          ],
                        )
                      ]),
                )),
          );
        });
  }
}
