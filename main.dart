import 'Hotel.dart';
import 'buses.dart';
import 'classSreachTrip.dart';
import 'passendgers.dart';
import 'planes.dart';
import 'searchable.dart';
import 'tickets.dart';
import 'transport_method.dart';
import 'trips.dart';

void main() {
  //TransportMethod m = Bus("a", 1, 23);
  List<Bus> allBuses = [];
  List<Plane> allPlanes = [];
  Bus bus1 = Bus("Mercedes", 2015, 48);
  Bus bus2 = Bus("Hunday", 2020, 52);
  Plane plane1 = Plane("AirBus", 3200, 210);
  Plane plane2 = Plane("AirBus 2", 3500, 240);
  allBuses.add(bus1);
  allBuses.add(bus2);
  allPlanes.add(plane1);
  allPlanes.add(plane2);
  //=======================
  //=======================

  Searchable<Bus> searchInBuses = Searchable();
  searchInBuses.search(allBuses, "hunday");
  //=====================
  //=====================
  List<Passenger> allpasengers = [];
  Passenger p = Passenger(
      name: "Ali",
      mobile: "775640183",
      idNo: "1235654",
      countLuggage: 2,
      luggageweight: 25);
  Passenger p2 = Passenger(
      name: "Shahd",
      mobile: "785640183",
      idNo: "1235654",
      countLuggage: 1,
      luggageweight: 25);
  allpasengers.add(p);
  allpasengers.add(p2);

  //===================
  //===================
  p.SearchPassengerofMobileStartBy78(allpasengers);
  p.getUserluggageweightmorethan25(allpasengers);

  //======================
  List<Trip> trips = [];

  Trip t = Trip(
      idNo: "1234",
      from: "Al-mukaala",
      to: "Aden",
      date: "21-09-2-23",
      cost: 15000,
      seatsAvilable: 30,
      method: bus1);
  t.tripTickets.add(Ticket(seatNo: "43", classType: "A", passenger: p2));

  t.tripTickets.add(Ticket(
      seatNo: "44", classType: "A", passenger: p, hoteloptions: t.hotels));
  t.tripTickets.add(Ticket(seatNo: "45", classType: "A", passenger: p));
  
  t.hotels!.add(Hotel(id: 1, name: "Ramada"));
  t.hotels!.add(Hotel(id: 2, name: "Al Hamra"));
  t.hotels!.add(Hotel(id: 3, name: "Ba Shafiy"));
  trips.add(t);
  // trips.forEach((element) {
  //   element.tripTickets.forEach((element) {
  //     print(element.ticketNo);
  //   });
  // });
  // trips.forEach(
  //   (element) {
  //     if (element.seatsAvilable >= trips.length + 10) {
  //       print(element.idNo);
  //     }
  //   },
  // );
  //print(allBuses);
  t.searchTripWith_10_or_more_availabilty_seats(trips);
  // SearchTrip st = SearchTrip();
  // st.searchTripWith_10_or_more_availabilty_seats();
  //print(allPlanes);
  //print(searchInBuses.search(allBuses, "hunday"));
}
