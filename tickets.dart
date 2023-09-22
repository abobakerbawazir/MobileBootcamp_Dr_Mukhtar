import 'dart:math';

import 'Hotel.dart';
import 'data_oprations.dart';
import 'passendgers.dart';

class Ticket implements DataOprations {
  late int ticketNo;
  late String seatNo, classType;
  late Passenger passenger;
  List<Hotel>? hoteloptions;

  Ticket(
      {required this.seatNo,
      required this.classType,
      required this.passenger,this.hoteloptions}) {
    Random r = Random();
    ticketNo = r.nextInt(900000) + 100000;
  }

  @override
  void displayInfo() {}
}
