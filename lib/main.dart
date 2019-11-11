import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'local_notification_widget.dart';


// Added a new line
void main() {
  runApp(MaterialApp(
    title: 'ACEM Calendar',
    home: CalendarScreen(),
  ));
}

class CalendarScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {
  void _handleNewDate(date) {
    setState(() {
      _selectedDay = date;
      _selectedEvents = _events[_selectedDay] ?? [];
    });
    print(_selectedEvents);
  }

  List _selectedEvents;
  DateTime _selectedDay;

  final Map _events = {
    // FOR JANUARY
    DateTime(2019, 1, 1): [
      {'name': 'NEW YEAR', 'isDone': true},
    ],
    DateTime(2019, 1, 13): [
      {'name': 'GURU GOVIND SINGH JAYANTI', 'isDone': true},
      {'name': 'LOHRI', 'isDone': true},
    ],
    DateTime(2019, 1, 14): [
      {'name': 'MAKAR SANKRANTI', 'isDone': true},
    ],
    DateTime(2019, 1, 26): [
      {'name': 'REPUBLIC DAY', 'isDone': true},
    ],

    // FOR FEBRUARY

    DateTime(2019, 2, 10): [
      {'name': 'VASANT PANCHAMI', 'isDone': true},
    ],
    DateTime(2019, 2, 19): [
      {'name': 'RAVIDAS JAYANTI', 'isDone': true},
    ],

    // FOR MARCH

    DateTime(2019, 3, 4): [
      {'name': 'NAHA SHIVARATRI', 'isDone': true},
    ],
    DateTime(2019, 3, 21): [
      {'name': 'HOLI', 'isDone': true},
    ],

    // FOR APRIL

    DateTime(2019, 4, 13): [
      {'name': 'RAMA NAVAMI', 'isDone': true},
    ],
    DateTime(2019, 4, 14): [
      {'name': 'VAISAKHI', 'isDone': true},
      {'name': 'AMBEDKAR JAYANTI', 'isDone': true},
    ],
    DateTime(2019, 4, 17): [
      {'name': 'MAHAVIR JAYANTI', 'isDone': true},
    ],
    DateTime(2019, 4, 19): [
      {'name': 'GOOD FRIDAY', 'isDone': true},
    ],

    //FOR MAY
    DateTime(2019, 5, 19): [
      {'name': 'BUDDHA PURNIMA', 'isDone': true},
    ],

    // FOR JUNE
    DateTime(2019, 6, 5): [
      {'name': 'RAMZAN ID/EID - UL - FITAR', 'isDone': true},
    ],

    // FOR JULY
    // ADD EVENTS FOR THIS TYPE OF FORMAT

    //FOR AUGUST
    DateTime(2019, 8, 9): [
      {
        'name': 'Orientation  Program (for BBA, BCA &  MBA, 1st semester)',
        'isDone': true
      },
    ],
    DateTime(2019, 8, 10): [
      {
        'name': 'Orientation Program (for B.Tech, 1st semester)',
        'isDone': true
      },
    ],
    DateTime(2019, 8, 12): [
      {'name': 'BAKR ID/EID - UL - ADHA', 'isDone': true},
    ],
    DateTime(2019, 8, 13): [
      {
        'name':
            'Commencement of induction program  (B.Tech,BBA,BCA1st  Semester)',
        'isDone': true
      },
    ],
    DateTime(2019, 8, 15): [
      {'name': 'INDEPENDENCE DAY', 'isDone': true},
      {'name': 'RAKSHA BANDHAN(RAKHI)', 'isDone': true},
    ],
    DateTime(2019, 8, 24): [
      {'name': 'JANMASHTAMI', 'isDone': true},
    ],
    //FOR SEPTEMBER
    DateTime(2019, 9, 2): [
      {'name': 'GANESH CHATURTHI', 'isDone': true},
    ],
    DateTime(2019, 9, 14): [
      {'name': 'Fresher’s Party', 'isDone': true},
    ],
    DateTime(2019, 9, 23): [
      {
        'name': 'First  Sessional Exam for B.Tech, BBA,BCA  and MBA',
        'isDone': true
      },
    ],
    DateTime(2019, 9, 24): [
      {
        'name': 'First  Sessional Exam for B.Tech, BBA,BCA  and MBA',
        'isDone': true
      },
    ],
    DateTime(2019, 9, 25): [
      {
        'name': 'First  Sessional Exam for B.Tech, BBA,BCA  and MBA',
        'isDone': true
      },
    ],
    DateTime(2019, 9, 26): [
      {
        'name': 'First  Sessional Exam for B.Tech, BBA,BCA  and MBA',
        'isDone': true
      },
    ],
    DateTime(2019, 9, 27): [
      {
        'name': 'First  Sessional Exam for B.Tech, BBA,BCA  and MBA',
        'isDone': true
      },
    ],
    DateTime(2019, 9, 28): [
      {
        'name': 'First  Sessional Exam for B.Tech, BBA,BCA  and MBA',
        'isDone': true
      },
    ],
    DateTime(2019, 9, 29): [
      {
        'name': 'First  Sessional Exam for B.Tech, BBA,BCA  and MBA',
        'isDone': true
      },
    ],
    DateTime(2019, 9, 30): [
      {
        'name': 'First  Sessional Exam for B.Tech, BBA,BCA  and MBA',
        'isDone': true
      },
    ],

    //FOR OCTOBER
    DateTime(2019, 10, 2): [
      {'name': 'MAHATMA GANDHI', 'isDone': true},
    ],
    DateTime(2019, 10, 4): [
      {'name': 'Submission of 1st Sessional marks to HOD', 'isDone': true},
    ],
    DateTime(2019, 10, 8): [
      {'name': 'DUSSEHRA', 'isDone': true},
    ],
    DateTime(2019, 10, 17): [
      {'name': 'KARVA CHAUTH', 'isDone': true},
    ],
    DateTime(2019, 10, 27): [
      {'name': 'DIWALI', 'isDone': true},
    ],
    DateTime(2019, 10, 28): [
      {'name': 'GOVARDHAN PUJA', 'isDone': true},
    ],
    DateTime(2019, 10, 29): [
      {'name': 'BHAI DUJ', 'isDone': true},
    ],
    //FOR NOVEMBER
    DateTime(2019, 11, 2): [
      {'name': 'CHHAT PUJA', 'isDone': true},
    ],
    DateTime(2019, 11, 12): [
      {'name': 'GURU NANAK JAYANTI', 'isDone': true},
    ],
    DateTime(2019, 11, 13): [
      {'name': 'Student  Feedback', 'isDone': true},
    ],
    DateTime(2019, 11, 21): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],
    DateTime(2019, 11, 22): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],
    DateTime(2019, 11, 23): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],
    DateTime(2019, 11, 24): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],
    DateTime(2019, 11, 25): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],
    DateTime(2019, 11, 26): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],
    DateTime(2019, 11, 27): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],
    DateTime(2019, 11, 28): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],
    DateTime(2019, 11, 29): [
      {'name': 'PUT for B.Tech, BBA,BCA  and MBA', 'isDone': true},
    ],

    // FOR DECEMBER
    DateTime(2019, 12, 25): [
      {'name': 'CHRISTMAS', 'isDone': true},
    ],
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedEvents = _events[_selectedEvents] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminder'),
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SingleChildScrollView(
            child: Calendar(
              events: _events,
              onRangeSelected: (range) =>
                  print("Range is ${range.from},${range.to}"),
              onDateSelected: (date) => _handleNewDate(date),
              isExpandable: true,
              showTodayIcon: true,
              eventColor: Colors.grey,
            ),
          ),
          _buildEventList(),
          LocalNotificationWidget(),
        ],
      )),
    );
  }

  Widget _buildEventList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(width: 1.5, color: Colors.black12),
          )),
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
          child: ListTile(
            title: Text(_selectedEvents[index]['name'].toString()),
            onTap: () {},
          ),
        ),
        itemCount: _selectedEvents.length,
      ),
    );
  }
}
