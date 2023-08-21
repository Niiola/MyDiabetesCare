import 'package:equatable/equatable.dart';

abstract class DietPageEvent extends Equatable {
  const DietPageEvent();
}

// ignore: must_be_immutable
class GetAllDietDietPageEvent extends DietPageEvent {
  bool isItForUpdate;
  String? praPatientEmail;
  GetAllDietDietPageEvent({
    required this.isItForUpdate,
    this.praPatientEmail,
  }) : super();

  @override
  List<Object?> get props => [isItForUpdate,praPatientEmail];
}

// ignore: must_be_immutable
class RequestForDietDietPageEvent extends DietPageEvent {
  const RequestForDietDietPageEvent() : super();

  @override
  List<Object?> get props => [];
}
