import 'data_oprations.dart';

abstract class TransportMethod implements DataOprations{
   late String company;
  late int model;
  late int seats;



TransportMethod({required this.company,required this.model,required this.seats});
}