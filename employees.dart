import 'end_users.dart';
import 'passendgers.dart';

class Employee extends EndUser{
  late String _email,_password,_jobTitle;
  Employee({required super.name,
  required super.mobile,
  required super.idNo});
  
  @override
  void displayInfo() {
    
  }
  
  @override
  searchBy_mobile(String mobile) {
    // TODO: implement searchBy_mobile
    throw UnimplementedError();
  }

  @override
  SearchPassengerofMobileStartBy78(List<Passenger> p) {
    // TODO: implement SearchPassengerofMobileStartBy78
    throw UnimplementedError();
  }
  

  

}