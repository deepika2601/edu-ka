import 'package:edukaapp/utils/appcolors.dart';
import 'package:edukaapp/utils/appstyle.dart';
import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class SimpleButtontwo extends StatefulWidget {
  final String? text;

  final Function()? onTap;
  const SimpleButtontwo({
    Key? key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  State<SimpleButtontwo> createState() => _SimpleButtontwoState();
}

class _SimpleButtontwoState extends State<SimpleButtontwo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap,
        child: Container(
          alignment: Alignment.center,
          height: 6.h,
          width: 43.w,
          decoration: BoxDecoration(
            //color: AppColors.appPrimarycolor,
            borderRadius: BorderRadius.circular(1.h),

            border: Border.all(color: AppColors.colorBlack, width: 2),

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              )
            ],
          ),
          child: Center(
              child: Padding(
            padding: EdgeInsets.only(left: 2.w, right: 2.w),
            child: Text(
              widget.text ?? '',
              style: AppStyle.texttitle.copyWith(color: Colors.black),
            ),
          )),
        ));
  }
}
