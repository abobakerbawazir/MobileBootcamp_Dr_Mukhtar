import 'Hotel.dart';
import 'data_oprations.dart';
import 'tickets.dart';
import 'transport_method.dart';

class Trip implements DataOprations {
  late String idNo, from, to, date;
  late int cost;
  late int seatsAvilable;
  
  Trip(
      {required this.idNo,
      required this.from,
      required this.to,
      required this.date,
      required this.cost,
      required this.seatsAvilable,
      required this.method});

  late TransportMethod method;
  List<Ticket> tripTickets = [];
  List<Hotel>? hotels=[];

  @override
  void displayInfo() {
    // TODO: implement displayInfo
  }
  // searchTripWith_10_or_more_availabilty_seats(List<Trip> trips) {
  //   trips.forEach((element) {
  //     if (element.seatsAvilable >= trips.length + 10)
  //       print(
  //           "${element.idNo} ${element.from} to ${element.to} ${element.date}");
  //     ;
  //   });
  // }

  ///
  ///
  searchTripWith_10_or_more_availabilty_seats(List<Trip> trips) {
    trips.forEach((element) {
      if (element.seatsAvilable >= element.tripTickets.length + 10) {
        print(
            "${element.idNo} ${element.from} to ${element.to} ${element.date}");
      }
    });
  }

  // tripTickets.forEach((element) {
  //   if (element.ticketNo==tripTickets.length-10) {
  //     print(element);
  //   }
  // });
}
