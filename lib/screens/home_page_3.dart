import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/clean_calendar_event.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  final Map<DateTime, List<CleanCalendarEvent>> _events = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
      /* CleanCalendarEvent('Event A',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 12, 0),
          description: 'A special event',
          color: Colors.blue),*/
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
        [
      /*  CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),*/
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 3):
        [
      /* CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),
      CleanCalendarEvent('Event D',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.amber),
      CleanCalendarEvent('Event E',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.deepOrange),
      CleanCalendarEvent('Event F',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.green),
      CleanCalendarEvent('Event G',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.indigo),
      CleanCalendarEvent('Event H',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.brown),*/
    ],
  };
  @override
  void initState() {
    super.initState();
    // Force selection of today on first load, so that the list of today's events gets shown.
    _handleNewDate(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Book your race'.tr(),
                        style: CustomTextstyle.getheme.subtitle2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close_outlined,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.displayHeight(context) / 30,
                ),
                Container(
                  height: AppConstants.displayHeight(context) / 14,
                  width: AppConstants.displayWidth(context),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: CustomAppTheme.grey.withOpacity(0.3),
                          blurRadius: 10,
                          offset: Offset(0, 8),
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Number of Players'.tr(),
                        style: CustomTextstyle.getheme.subtitle2,
                      ),
                      Container(
                        height: AppConstants.displayHeight(context) / 26,
                        width: AppConstants.displayWidth(context) / 5,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: CustomAppTheme.blue.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.add,
                              size: 18,
                            ),
                            Text('1'),
                            Icon(
                              Icons.remove,
                              size: 18,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.displayHeight(context) / 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Date'.tr(),
                    style: CustomTextstyle.getheme.subtitle2,
                  ),
                ),
                Container(
                  height: AppConstants.displayHeight(context) / 2.3,
                  width: AppConstants.displayWidth(context),
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  // color: CustomAppTheme.red,
                  child: Calendar(
                    startOnMonday: true,
                    weekDays: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
                    events: _events,
                    isExpandable: true,
                    // eventDoneColor: Colors.green,
                    selectedColor: CustomAppTheme.blue,
                    todayColor: Colors.blue,
                    hideBottomBar: false,
                    // eventDoneColor: CustomAppTheme.blue,
                    eventColor: Colors.grey,
                    locale: 'de_DE',
                    hideTodayIcon: true,
                    isExpanded: true,
                    expandableDateFormat: 'EEEE, dd-MMMM-yyyy',
                    dayOfWeekStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 11),
                  ),
                ),
                SizedBox(
                  height: AppConstants.size20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: CustomAppTheme.grey.withOpacity(0.3),
                            offset: Offset(0, 5),
                            blurRadius: 10)
                      ],
                      border: Border.all(
                        color: CustomAppTheme.grey.withOpacity(0.5),
                      )),
                  child: ExpansionTile(
                    title: Text(
                      '4.00 PM',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'hello',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.size20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: CustomAppTheme.grey.withOpacity(0.3),
                            offset: Offset(0, 5),
                            blurRadius: 10)
                      ],
                      border: Border.all(
                        color: CustomAppTheme.grey.withOpacity(0.5),
                      )),
                  child: ExpansionTile(
                    title: Text(
                      '4.30 PM',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'hello',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.size20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: CustomAppTheme.grey.withOpacity(0.3),
                            offset: Offset(0, 5),
                            blurRadius: 10)
                      ],
                      border: Border.all(
                        color: CustomAppTheme.grey.withOpacity(0.5),
                      )),
                  child: ExpansionTile(
                    title: Text(
                      '5.00 PM',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'hello',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.size20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: CustomAppTheme.grey.withOpacity(0.3),
                            offset: Offset(0, 5),
                            blurRadius: 10)
                      ],
                      border: Border.all(
                        color: CustomAppTheme.grey.withOpacity(0.5),
                      )),
                  child: ExpansionTile(
                    title: Text(
                      '5.30 PM',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'hello',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.size20,
                ),
                Center(
                  child: Container(
                    height: AppConstants.displayHeight(context) / 14,
                    width: AppConstants.displayWidth(context) / 1.5,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: CustomAppTheme.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Book your race'.tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: CustomAppTheme.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleNewDate(date) {
    print('Date selected: $date');
  }
}
