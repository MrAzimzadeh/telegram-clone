class ContactsModel {
  String? name;
  String? lastSeen;
  bool online;

  ContactsModel({required this.name, this.lastSeen, this.online = false});
}
