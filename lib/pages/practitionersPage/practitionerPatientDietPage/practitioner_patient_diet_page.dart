import 'package:flutter/material.dart';

import '../../patientPage/dietPage/diet_page.dart';

class PractitionerPatientsDietPage extends StatelessWidget {
  final String praPatientEmailOnPraView;
  const PractitionerPatientsDietPage({Key? key, required this.praPatientEmailOnPraView,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      left: false,
      right: false,
      child: DietPage(
        isItFromPatientsView: false,
        praPatientEmailOnPraView: praPatientEmailOnPraView,
      ),
    );
  }
}

