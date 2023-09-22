import 'end_users.dart';

class Passenger extends EndUser {
  int countLuggage = 1;
  late int luggageweight;

  Passenger(
      {required String name,
      required String mobile,
      required String idNo,
      required this.countLuggage,
      required this.luggageweight})
      : super(name: name, mobile: mobile, idNo: idNo);

  @override
  void displayInfo() {}

  @override
  searchBy_mobile(String mobile) {
    Passenger p = Passenger(
        name: name,
        mobile: mobile,
        idNo: idNo,
        countLuggage: countLuggage,
        luggageweight: luggageweight);
    p.mobile.contains(mobile);
    print(p.name);
  }

  SearchPassengerofMobileStartBy78(List<Passenger> p) {
    p.forEach((element) {
      if (element.mobile.contains("78") &&
          element.mobile.indexOf("7") == 0 &&
          element.mobile.startsWith("7")) {
        print(element.mobile);
      }
    });
  }

  getUserluggageweightmorethan25(List<Passenger> p) {
    p.forEach((element) {
      if (element.luggageweight >= 25) {
        print("${element.idNo} ${element.countLuggage}");
      }
    });
  }
}
