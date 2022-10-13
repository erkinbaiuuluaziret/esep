import 'package:cr_calendar/cr_calendar.dart';
import 'package:esep/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import '../../app/theme/colors/app_colors.dart';
import '../../app/theme/textStyle/text_stayle.dart';
import '../../app/widgets/balans_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class BalansScreen extends StatelessWidget {
  BalansScreen({Key? key}) : super(key: key);
  final HomeController homeScreenController =
      Get.put<HomeController>(HomeController());
  final calendarController = CleanCalendarController(
    minDate: DateTime.utc(2021, 1, 1),
    maxDate: DateTime.now().add(const Duration(days: 365)),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
    initialFocusDate: DateTime.now(),
    // initialDateSelected: DateTime.now(),
    // endDateSelected: DateTime(2022, 3, 20),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.containerColor),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 17.0, vertical: 32.0),
              child: Column(children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/user_logo.png',
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Кыпчаков Бактыяр',
                                style: TextStyles.textStyle1),
                            Text('Бекташович', style: TextStyles.textStyle1)
                          ],
                        ))
                  ],
                ),
                const SizedBox(
                  height: 14.0,
                ),
                GestureDetector(
                  onTap: () {
                    getCalendar(context);
                  },
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/date_range.png'),
                            SizedBox(width: 13.0),
                            Text(
                              '2 ОКТ-3 ОКТ. 2022',
                              style: TextStyles.textStyle7,
                            ),
                            SizedBox(width: 10.0),
                            Image.asset('assets/icons/arrow_down.png')
                          ]),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                BalansContainerWidget(
                    title: 'Общий баланс', balans: '29 000 сом'),
              ]),
            ),
          ),
          SizedBox(height: 13),
          Obx(() =>
              ListView(shrinkWrap: true, children: homeScreenController.groups))
        ],
      )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.to(AddScreen());
      //   },
      //   backgroundColor: AppColors.mainColor,
      //   child: Icon(Icons.add, size: 40.0),
      // ),
    );
  }

  void getCalendar(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  height: 400,
                  width: 300,
                  child: ScrollableCleanCalendar(
                    calendarController: calendarController,
                    layout: Layout.BEAUTY,
                    calendarCrossAxisSpacing: 0,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
