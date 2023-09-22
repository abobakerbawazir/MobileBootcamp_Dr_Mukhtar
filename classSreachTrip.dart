import 'tickets.dart';
import 'trips.dart';

class SearchTrip{
  List<Trip> trips = [];
  searchTripWith_10_or_more_availabilty_seats() {
    trips.forEach((element) {
      if (element.seatsAvilable==trips.length-10) {
        print(element);
      }
    });
  }
}