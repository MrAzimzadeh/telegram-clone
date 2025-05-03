import 'package:flutter/material.dart';
import 'package:telegram_app/models/call_widget_model.dart';
import 'package:telegram_app/shared/wrapper/pages/calls_page/widgets/call_widget.dart';

class AllCallsTab extends StatelessWidget {
  AllCallsTab(
      {super.key,
      required this.name,
      required this.callState,
      required this.date,
      this.isMissed = false});
  final String name;
  final String callState;
  final String date;
  final bool isMissed;

  final List<CallWidgetModel> calls = [
    CallWidgetModel(
        name: 'martin Randolph', callState: 'Outgoing (2 min)', date: '10/13'),
    CallWidgetModel(
        name: 'Karen Castillo', callState: 'Outgoing, Incoming', date: '10/11'),
    CallWidgetModel(name: 'Kieron Dotson', callState: 'Outgoing', date: '10/8'),
    CallWidgetModel(
        name: 'Karen Castillo',
        callState: 'Missed',
        date: '9/30',
        isMissed: true),
    CallWidgetModel(name: 'Zack John', callState: 'Incoming', date: '9/24'),
    CallWidgetModel(
        name: 'Kieron Dotson', callState: 'Outgoing (4 min)', date: '9/16'),
    CallWidgetModel(name: 'Kieron Dotson', callState: 'Outgoing', date: '9/15'),
    CallWidgetModel(
        name: 'Jamie Franco', callState: 'Incoming (2 min)', date: '9/15'),
    CallWidgetModel(name: 'Martha Craig', callState: 'Incoming', date: '9/10'),
    CallWidgetModel(name: 'Martha Craig', callState: 'Outgoing', date: '9/10'),
    CallWidgetModel(name: 'Maisy Humphrey', callState: 'Outgoing', date: '9/6'),
    CallWidgetModel(
        name: 'Jamie Franco',
        callState: 'Missed',
        date: '8/22',
        isMissed: true),
    CallWidgetModel(
        name: 'Maisy Humphrey', callState: 'Outgoing (3 min)', date: '8/20')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: calls.length,
      itemBuilder: (context, index) {
        return CallWidget(
          name: calls[index].name,
          callState: calls[index].callState,
          date: calls[index].date,
          isMissed: calls[index].isMissed,
        );
      },
    )));
  }
}
