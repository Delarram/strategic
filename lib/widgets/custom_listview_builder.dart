import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';

class CustomListviewBuilder extends StatelessWidget {
  final String? text;
  final List itemList;//List<vo> itemList
  const CustomListviewBuilder({
    Key? key, required this.itemList, this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.r))),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 3.h),
            child: Row(
              children: [
                ImageIcon(AssetImage(itemList[index].image),color: Colors.amber,
                ),SizedBox(width: 5.w,),
                CustomText(text: itemList[index].title,size: 13.sp,),
                const Spacer(),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.arrow_forward_ios,size: 18.sp,))
              ],
            ),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
          height: 4.h
      );
    },
    );
  }
}


