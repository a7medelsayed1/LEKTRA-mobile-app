import 'dart:ui';
import 'package:ahmed_s_application4/presentation/screens/appointment_completed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/app_export.dart';
import '../../models/booking_datetime_converted.dart';
import '../../models/dioProvider.dart';
import '../widgets/custom_button.dart';
import '../widgets/profile_bar.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/profile_pic.dart';

class DoctorCalender extends StatefulWidget {
  DoctorCalender(this.isDoctor);
  final bool isDoctor;
  @override
  State<DoctorCalender> createState() => _DoctorCalenderState();
}

class _DoctorCalenderState extends State<DoctorCalender>
    with TickerProviderStateMixin {


  CalendarFormat _format = CalendarFormat.month;
  DateTime _focusDay = DateTime.now();
  DateTime _currentDay = DateTime.now();
  int? _currentIndex;
  bool _isWeekend = false;
  bool _dateSelected = false;
  bool _timeSelected = false;
  List weekendDays = [1, 3, 6, 5];
  String? token;

  void getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');
  }

  @override
  void initState() {
    getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final doctor = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.gray200,
      body: CustomScrollView(
        slivers: [
          ProfileBar(imagePath: ImageConstant.imgLogoLight),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => SizedBox(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfilePic(
                    imagePath: ImageConstant.imgEllipse48,
                  ),
                  Center(
                    child: Padding(
                      padding: getPadding(top: 12),
                      child: Text(
                        'DR.Anwar Ahmed',
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            25,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: getVerticalSize(
                            1.23,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Center(
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemSize: getVerticalSize(
                        25,
                      ),
                      unratedColor: ColorConstant.gray400,
                      itemCount: 5,
                      updateOnDrag: true,
                      onRatingUpdate: (rating) {},
                      itemBuilder: (context, _) {
                        return Icon(
                          Icons.star,
                          color: ColorConstant.yellow700,
                        );
                      },
                    ),
                  ),
                  CustomSubText('About'),
                  CustomText(
                      'Anwer is a professional doctor with eyes diseases and have Master from AUC, and manage on others who’s make master in this field.'),
                  CustomSubText('Address'),
                  CustomText('Giza,23 El-Abasy street ,23 building'),
                  CustomSubText('Phone Number'),
                  CustomText('020+01512346734 \n0502344896'),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getHorizontalSize(50),
                        right: getHorizontalSize(50),
                        top: getVerticalSize(25)),
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                  CustomSubText('Calender'),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            childCount: 1,
          )),
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                TableCalendar(
                  weekendDays: [1, 3, 6, 5],
                  calendarBuilders: CalendarBuilders(
                    //   disabledBuilder:(_,DateTime x,DateTime y){
                    //
                    //   } ,
                    dowBuilder: (context, day) {
                      if (weekendDays.contains(day.weekday)) {
                        final text = DateFormat.E().format(day);

                        return Center(
                          child: Text(
                            text,
                            style: TextStyle(color: ColorConstant.gray400),
                          ),
                        );
                      }
                    },
                  ),
                  startingDayOfWeek: StartingDayOfWeek.saturday,
                  focusedDay: _focusDay,
                  firstDay: DateTime.now(),
                  lastDay: DateTime(2023, 12, 31),
                  calendarFormat: _format,
                  currentDay: _currentDay,
                  rowHeight: 48,
                  calendarStyle: CalendarStyle(
                    selectedDecoration: BoxDecoration(
                        color: ColorConstant.indigo900, shape: BoxShape.circle),
                    weekendTextStyle: TextStyle(color: ColorConstant.gray400),
                  ),
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month',
                  },
                  onFormatChanged: (format) {
                    setState(() {
                      _format = format;
                    });
                  },
                  selectedDayPredicate: (day) {
                    return isSameDay(_currentDay, day);
                  },
                  onDaySelected: ((selectedDay, focusedDay) {
                    setState(() {
                      _currentDay = selectedDay;
                      _focusDay = focusedDay;
                      _dateSelected = true;

                      //check if weekend is selected
                      if (weekendDays.contains(selectedDay.weekday)) {
                        _isWeekend = true;
                        _timeSelected = false;
                        _currentIndex = null;
                      } else {
                        _isWeekend = false;
                      }
                    });
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: Center(
                    child: Text(
                      'Select Consultation Time',
                      style: TextStyle(
                        fontFamily: 'inter',
                        color: ColorConstant.indigo900,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          _isWeekend
              ? SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    alignment: Alignment.center,
                    child: const Text(
                      'We are not available this day, please select another date',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              : SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                            _timeSelected = true;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: _currentIndex == index
                                  ? ColorConstant.indigo900
                                  : ColorConstant.gray600,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '${index + 11}:00 ${index + 11 > 11 ? "PM" : "AM"}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: _currentIndex == index
                                  ? ColorConstant.indigo900
                                  : ColorConstant.gray600,
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: 8,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 1.5),
                ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: CustomButton(
                text: 'Make Appointment',
                height: 50,
                fontSize: 25,
                onTap: _timeSelected && _dateSelected
                    ? () =>Get.to(AppointmentSuccess()):null
                // async {
                //         //convert date/day/time into string first
                //         final getDate = DateConverted.getDate(_currentDay);
                //         final getDay =
                //             DateConverted.getDay(_currentDay.weekday);
                //         final getTime = DateConverted.getTime(_currentIndex!);
                //
                //         final booking = await DioProvider().bookAppointment(
                //             getDate, getDay, getTime, '1', token!);
                //         print('$booking');
                //         print('token$token');
                //
                //         //if booking return status code 200, then redirect to success booking page
                //
                //         if (booking == 200) {
                //           Get.to(AppointmentSuccess());
                //         }
                //       }
                //     : null,
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget CustomSubText(String title) {
    return Padding(
      padding: EdgeInsets.only(
          left: getHorizontalSize(10), top: getVerticalSize(25)),
      child: Text(
        title,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: ColorConstant.indigo600,
          fontSize: getFontSize(
            30,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.23,
          ),
        ),
      ),
    );
  }

  Widget CustomText(String title) {
    return Padding(
      padding: EdgeInsets.only(
          left: getHorizontalSize(20), top: 10, right: getHorizontalSize(40)),
      child: Container(
        // width: getHorizontalSize(370),
        child: Text(
          title,
          style: TextStyle(
            color: ColorConstant.black900,
            fontSize: getFontSize(
              25,
            ),
            fontFamily: 'Inter',
            // fontWeight: FontWeight.w500,
            height: getVerticalSize(
              2,
            ),
          ),
          maxLines: 5,
        ),
      ),
    );
  }

  onTapArrowleft5() {
    Get.back();
  }
}

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.width,
      required this.title,
      required this.onPressed,
      required this.disable})
      : super(key: key);

  final double width;
  final String title;
  final bool disable; //this is used to disable button
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: disable ? null : onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
            color: ColorConstant.indigo900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
