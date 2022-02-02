import 'package:flutter/material.dart';
import 'package:sample_viewer/element/color_element.dart';
import 'package:sample_viewer/element/double_element.dart';
import 'package:sample_viewer/sets/calendar/calendar_set.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatelessWidget {
  CalendarSet data;
  CalendarPage(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("カレンダー"),
        centerTitle: true,
      ),
      body: SfCalendar(
        viewHeaderHeight: 80,
        view: CalendarView.schedule,
        minDate: DateTime(2022, 1, 1),
        maxDate: DateTime(2022, 1, 31),
        dataSource: DateSource(data),
        scheduleViewSettings: ScheduleViewSettings(
          appointmentTextStyle:
              TextStyle(color: data.getUnitElement<ColorElement>(6).value),
          appointmentItemHeight: data.getUnitElement<IntElement>(5).value,
          dayHeaderSettings: DayHeaderSettings(
              width: data.getUnitElement<IntElement>(4).value),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: data.getUnitElement<ColorElement>(3).value,
        onPressed: () {},
      ),
    );
  }
}

class DateSource extends CalendarDataSource {
  CalendarSet data;
  DateSource(this.data) {
    appointments = List.generate(31, (index) => index);
  }
  @override
  String getSubject(int index) {
    return "マルコ1:1-10";
  }

  @override
  DateTime getStartTime(int index) {
    return DateTime(2022, 1, index + 1);
  }

  @override
  DateTime getEndTime(int index) {
    return DateTime(2022, 1, index + 1);
  }

  @override
  Color getColor(int index) {
    if (index < 10) {
      return data.getUnitElement<ColorElement>(0).value;
    } else if (index < 20) {
      return data.getUnitElement<ColorElement>(1).value;
    } else {
      return data.getUnitElement<ColorElement>(2).value;
    }
  }

  @override
  bool isAllDay(int index) {
    return true;
  }
}
