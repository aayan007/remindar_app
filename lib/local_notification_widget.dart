import 'package:flutter/material.dart';
import 'local_notification_helper.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationWidget extends StatefulWidget {
  @override
  _LocalNotificationWidgetState createState() =>
      _LocalNotificationWidgetState();
}

class _LocalNotificationWidgetState extends State<LocalNotificationWidget> {
  final notifications = FlutterLocalNotificationsPlugin();

  createAleartDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('text'),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Snooze for 10 minutes'),
                  onPressed: notifications.cancelAll),
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
//                  onPressed: () {
//                    Navigator.of(context).pop();
//                  })
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();

    final settingsAndroid = AndroidInitializationSettings('app_icon');
    final settingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) =>
            onSelectNotification(payload));

    notifications.initialize(
        InitializationSettings(settingsAndroid, settingsIOS),
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) async =>
      createAleartDialog(context);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          child: Icon(
            Icons.notifications,
            semanticLabel: 'notification',
          ),
          elevation: 6.0,
          onPressed: () => showOngoingNotification(notifications,
              title: 'title', body: 'Body'),
        ),
      );

  Widget title(String text) => Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          text,
          style: Theme.of(context).textTheme.title,
          textAlign: TextAlign.center,
        ),
      );
}
