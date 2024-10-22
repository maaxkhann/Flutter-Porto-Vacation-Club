import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/book_now_widget.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/booking_locked_widget.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/calendar_widget.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/invoice_active_widget.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/pending_invoice_widget.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/upcoming_booking_widget.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/shared.dart';
import '../../../components/common_appbar.dart';
import '../widgets/main_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBookingLocked = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.white.withOpacity(0.9),
        appBar: CustomAppBar(),
        body: Container(
          color: Colors.grey.withOpacity(0.2),
          height: double.infinity,
          child: Stack(
            children: [
              Image.asset(AppAssets.homeBg, fit: BoxFit.cover),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                        child: Column(
                          children: [
                            TabBar(
                              indicatorColor: AppColors.buttonsColor,
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              dividerColor:
                                  AppColors.buttonsColor.withOpacity(0.5),
                              tabs: [
                                Tab(text: 'Sokhna'),
                                Tab(text: 'Marina'),
                                Tab(text: 'Sharm'),
                                Tab(text: 'Matrouh'),
                              ],
                            ),
                            SizedBox(
                              height: 220,
                              child: TabBarView(
                                children: [
                                  MainCardWidget(title: 'Porto Sonkha'),
                                  MainCardWidget(title: 'Marina'),
                                  MainCardWidget(title: 'Sharm'),
                                  MainCardWidget(title: 'Matrouh'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    24.spaceY,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: PendingInvoiceWidget(
                        widget: InvoiceActiveWidget(
                          image: AppAssets.invoice,
                        ),
                      ),
                    ),
                    24.spaceY,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: PendingInvoiceWidget(
                        title: 'Upcoming Booking',
                        subTitle: 'Reminders for your next vacation',
                        contText: 'No Bookings added yet',
                        image: AppAssets.noBookings,
                        widget: UpcomingBookingWidget(),
                      ),
                    ),
                    24.spaceY,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: [
                          CalendarWidget(),
                          if (isBookingLocked)
                            Positioned(
                                top: 200,
                                left: 32,
                                right: 32,
                                child: BookingLockedWidget(
                                  onTap: (isConfirmed) {
                                    if (!isConfirmed) {
                                      setState(() {
                                        isBookingLocked = false;
                                      });
                                    }
                                  },
                                )),
                        ],
                      ),
                    ),
                    12.spaceY,
                    BookNowWidget(),
                    12.spaceY,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
