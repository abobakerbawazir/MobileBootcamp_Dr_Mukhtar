import 'data_oprations.dart';

abstract class EndUser implements DataOprations {
  late String name, mobile, idNo, _idType, _gender, _age;
  EndUser({required this.name, required this.mobile, required this.idNo});

  set idType(String idType) {
    _idType = idType;
  }

  set gender(String gender) {
    _gender = gender;
  }

  set age(String age) {
    _age = age;
  }

  String get idType => _idType;
  String get gender => _gender;
  String get age => _age;

  searchBy_mobile(String mobile);
}
