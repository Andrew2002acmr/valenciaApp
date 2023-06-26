
class Recording {
  int Id;
  int clientId;
  int masterId;
  DateTime dateRec;
  int procId;
  String note;

  Recording({
    required this.Id,
    required this.clientId,
    required this.masterId,
    required this.dateRec,
    required this.procId,
    required this.note,
  });
}
