import 'package:cryptopulse/core/color.dart';
import 'package:cryptopulse/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Crypto Market',
                  style: textStyle(
                    size: 25.sp,
                    fw: FontWeight.bold,
                    color: AppColor.whiteColor,
                  ),
                ),
                SizedBox(height: 20.h),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15.h),
                      child: SizedBox(
                        width: double.maxFinite.w,
                        height: 60.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.circular(15.r),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[700]!,
                                        offset: const Offset(4, 4),
                                        blurRadius: 5.r,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 10.h),
                                    child: Image.network(
                                        'https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579'),
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10.h),
                                    Text(
                                      'Bitcoin',
                                      style: textStyle(
                                        size: 18.sp,
                                        fw: FontWeight.w600,
                                        color: AppColor.whiteColor,
                                      ),
                                    ),
                                    Text(
                                      '10%',
                                      style: textStyle(
                                        size: 16.sp,
                                        fw: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 10.h),
                                Text(
                                  '\$ 200',
                                  style: textStyle(
                                    size: 18.sp,
                                    fw: FontWeight.w600,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                Text(
                                  '\$\$',
                                  style: textStyle(
                                    size: 16.sp,
                                    fw: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
