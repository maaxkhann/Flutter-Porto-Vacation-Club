import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/common_appbar.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/booking_details_widget.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/custom_booking_widget.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

import '../../../shared/constants/app_assets.dart';
import '../../components/primary_button.dart';
import 'widgets/payment_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
              'Invoices',
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
                    12.spaceY,
                    SizedBox(
                      height: 120,
                      child: TabBarView(
                        children: [
                          CustomBookingWidget(
                            text1: 'Unpaid\nInvoices',
                            text2: 'Unpaid\nAnnual fees',
                            text3: 'Rental\nStays',
                          ),
                          CustomBookingWidget(
                            text1: 'Unpaid\nInvoices',
                            text2: 'Unpaid\nAnnual fees',
                            text3: 'Rental\nStays',
                          ),
                          CustomBookingWidget(
                            text1: 'Unpaid\nInvoices',
                            text2: 'Unpaid\nAnnual fees',
                            text3: 'Rental\nStays',
                          ),
                          CustomBookingWidget(
                            text1: 'Unpaid\nInvoices',
                            text2: 'Unpaid\nAnnual fees',
                            text3: 'Rental\nStays',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            24.spaceY,
            DefaultTabController(
              length: 4,
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
                      Tab(text: 'Installments'),
                      Tab(text: 'Annual Fees'),
                      Tab(text: 'Rental Fees'),
                      Tab(text: 'History'),
                    ],
                  ),
                  11.spaceY,
                  SizedBox(
                    height: 350,
                    child: TabBarView(
                      children: [
                        PaymentWidget(),
                        PaymentWidget(),
                        PaymentWidget(),
                        PaymentWidget(
                          status: PrimaryButton(
                            buttonWidth: 96,
                            buttonHeight: 24,
                            icon: AppAssets.dot,
                            iconColor: Colors.green,
                            bgColor: Colors.green.withOpacity(0.1),
                            label: 'Completed',
                            labelColor: Colors.green,
                          ),
                          button: PrimaryButton(
                            icon: AppAssets.download,
                            iconheight: 20,
                            iconWidth: 20,
                            iconColor: AppColors.buttonsColor,
                            label: 'download',
                            fontWeight: FontWeight.w600,
                            labelColor: AppColors.buttonsColor,
                            buttonHeight: 40,
                            bgColor: Colors.grey[200],
                            radius: 100,
                          ),
                        ),
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
