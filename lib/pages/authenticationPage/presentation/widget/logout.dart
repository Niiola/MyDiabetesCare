import 'package:diabetes_care/pages/authenticationPage/bloc/authentication_page_bloc.dart';
import 'package:diabetes_care/pages/authenticationPage/bloc/state/authentication_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:diabetes_care/config/appRouterHandler/app_router.dart';
import 'package:auto_route/auto_route.dart';

import '../../bloc/event/authentication_page_event.dart';

class LogoutDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationPageBloc, AuthenticationPageState>(
      listener: (context, state) {
        if (state.isAuthenticationRequestSuccessful ==true) {
          context.router
              .replaceAll([AuthenticationRoute()]);
          // Handle successful logout
          // For example, navigate to the login page
          // Navigator.of(context).pushReplacementNamed('/login');
        }
        
      },
      builder: (context, state) {
        return AlertDialog(
          title: const Text('Sign Out'),
          content: const Text('Are you sure you want to sign out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Dispatch the logout event to the BLoC
                context.read<AuthenticationPageBloc>().add(LogoutAuthenticationEvent(logoutState:true,));
              },
              child: const Text('Log Out'),
            ),
          ],
        );
      },
    );
  }
}

