import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/common_appbar.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/booking_details_widget.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/custom_booking_widget.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class BookingHomeScreen extends StatelessWidget {
  const BookingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey.withOpacity(0.1),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bookings',
              style: AppTextstyle.headingTextStyle(
                  fontSize: 20, color: AppColors.darkVoilet),
            ),
            12.spaceY,
            DefaultTabController(
              length: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TabBar(
                      labelPadding: EdgeInsets.all(0),
                      indicatorColor: AppColors.buttonsColor,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      dividerColor: AppColors.buttonsColor.withOpacity(0.5),
                      tabs: [
                        Tab(text: 'Sokhna'),
                        Tab(text: 'Marina'),
                        Tab(text: 'Sharm'),
                        Tab(text: 'Matrouh'),
                      ],
                    ),
                    11.spaceY,
                    SizedBox(
                      height: 95,
                      child: TabBarView(
                        children: [
                          CustomBookingWidget(),
                          CustomBookingWidget(),
                          CustomBookingWidget(),
                          CustomBookingWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            24.spaceY,
            DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    //  labelPadding: EdgeInsets.all(),
                    isScrollable: true,
                    indicatorColor: AppColors.buttonsColor,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    dividerColor: AppColors.buttonsColor.withOpacity(0.5),
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Pending'),
                      Tab(text: 'Upcoming'),
                      Tab(text: 'Completed'),
                      Tab(text: 'Cancelled'),
                    ],
                  ),
                  11.spaceY,
                  SizedBox(
                    height: 350,
                    child: TabBarView(
                      children: [
                        BookingDetailsWidget(),
                        BookingDetailsWidget(),
                        BookingDetailsWidget(),
                        BookingDetailsWidget(),
                        BookingDetailsWidget()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
