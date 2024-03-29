import 'package:edukaapp/utils/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DialogHelper {
  static void hideLoading() {}

  static Future<void> showFlutterToast({required String strMsg}) async {
    await Fluttertoast.showToast(msg: strMsg);
  }

  shoppopDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Alert!"),
        content: Text(
          'Internet connection not available',
          style: AppStyle.textsubtitle
              .copyWith(color: Colors.black, fontSize: 15.sp),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
