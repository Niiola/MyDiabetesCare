import 'package:diabetes_care/di/injection.dart';
import 'package:diabetes_care/pages/patientPage/dietPage/bloc/diet_page_bloc.dart';
import 'package:diabetes_care/pages/patientPage/dietPage/widget/pra_diet_page_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PraDietPage extends StatelessWidget {
  final bool isItFromPatientsView;
  final String? patientAccessCode;
  const PraDietPage({
    Key? key,
    required this.isItFromPatientsView,
    this.patientAccessCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      left: false,
      right: false,
      child: BlocProvider(
        create: (context) => getIt<DietPageBloc>(),
        child: isItFromPatientsView == true
        ? PraDietPageViewWidget(
            isItFromPatientsView: isItFromPatientsView,
            praPatientEmailOnPraView: patientAccessCode,
        )
        : Scaffold(
          body: PraDietPageViewWidget(
            isItFromPatientsView: isItFromPatientsView,
            praPatientEmailOnPraView: patientAccessCode,
          ),
        )
      ),
    );
  }
}
