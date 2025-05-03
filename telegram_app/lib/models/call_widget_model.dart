class CallWidgetModel {
  final String name;
  final String callState;
  final String date;
  final bool isMissed;

  CallWidgetModel(
      {required this.name,
      required this.callState,
      required this.date,
      this.isMissed = false});
}
