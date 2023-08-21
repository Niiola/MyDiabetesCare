import 'package:diabetes_care/pages/authenticationPage/model/login_response_model.dart/login_response_model.dart';
import 'package:diabetes_care/pages/authenticationPage/model/register_response_model.dart/register_response_model.dart';
import 'package:equatable/equatable.dart';

import '../../model/logout_response_model.dart/logout_response_model.dart';

class AuthenticationPageState extends Equatable {
  const AuthenticationPageState(
      {this.isLoading,
      this.isItLoginState,
      this.authenticationMessage,
      this.isAuthenticationRequestSuccessful,
      this.isFieldEmpty,
      this.isEmailAddressFormatTrue,
      this.loginResponseModel,
      this.isPasswordMismatched,
      this.redirectToLoginComponent,
      this.isPasswordGivenPermitted,
      this.isAccountVerified,
      this.hasVerificationEmailBeSent,
      this.isResendVerificationEmailInProgress,
      this.registerResponseModel,
      this.isItAPatient,
      this.userCategory,
      this.logoutMessage,
      this.logoutResponseModel,

      // this.isLogoutRequestSuccessful,
      this.isItLogoutState});

  final bool? isLoading;
  final bool? isPasswordMismatched;
  final bool? redirectToLoginComponent;
  final bool? isItLoginState;
  final bool? isFieldEmpty;
  final bool? isAuthenticationRequestSuccessful;
  final String? authenticationMessage;
  final bool? isEmailAddressFormatTrue;
  final LoginResponseModel? loginResponseModel;
  final RegisterResponseModel? registerResponseModel;
  final LogoutResponseModel? logoutResponseModel;
  final bool? isPasswordGivenPermitted;
  final bool? isAccountVerified;
  final bool? isResendVerificationEmailInProgress;
  final bool? hasVerificationEmailBeSent;
  final bool? isItAPatient;
  final String? userCategory;
  // final bool? isLogoutRequestSuccessful;
  final String? logoutMessage;
  final bool? isItLogoutState;

  @override
  List<Object?> get props => [
        isLoading,
        isItLoginState,
        isFieldEmpty,
        isAuthenticationRequestSuccessful,
        authenticationMessage,
        isEmailAddressFormatTrue,
        loginResponseModel,
        registerResponseModel,
        logoutResponseModel,
        isPasswordMismatched,
        redirectToLoginComponent,
        isPasswordGivenPermitted,
        isAccountVerified,
        isResendVerificationEmailInProgress,
        hasVerificationEmailBeSent,
        isItAPatient,
        userCategory,
        // isLogoutRequestSuccessful,
        logoutMessage,
        isItLogoutState
      ];

  AuthenticationPageState copyWith({
    bool? isLoading,
    bool? isItLoginState,
    bool? isFieldEmpty,
    bool? isAuthenticationRequestSuccessful,
    bool? isPasswordGivenPermitted,
    String? authenticationMessage,
    bool? isEmailAddressFormatTrue,
    LoginResponseModel? loginResponseModel,
    RegisterResponseModel? registerResponseModel,
    LogoutResponseModel? logoutResponseModel,
    bool? isPasswordMismatched,
    bool? redirectToLoginComponent,
    bool? isItAPatient,
    String? userCategory,
    bool? isItLogoutState,
    // bool? isLogoutRequestSuccessful,
    String? logoutMessage,
  }) {
    return AuthenticationPageState(
      isLoading: isLoading,
      isItLoginState: isItLoginState,
      isFieldEmpty: isFieldEmpty,
      isAuthenticationRequestSuccessful: isAuthenticationRequestSuccessful,
      authenticationMessage: authenticationMessage,
      isEmailAddressFormatTrue: isEmailAddressFormatTrue,
      loginResponseModel: loginResponseModel,
      logoutResponseModel: logoutResponseModel,
      registerResponseModel: registerResponseModel,
      isPasswordMismatched: isPasswordMismatched,
      redirectToLoginComponent: redirectToLoginComponent,
      isPasswordGivenPermitted: isPasswordGivenPermitted,
      isAccountVerified: isAccountVerified,
      isResendVerificationEmailInProgress: isResendVerificationEmailInProgress,
      hasVerificationEmailBeSent: hasVerificationEmailBeSent,
      isItAPatient: isItAPatient,
      userCategory: userCategory,
      // isLogoutRequestSuccessful: isLogoutRequestSuccessful,
      logoutMessage: logoutMessage,
    );
  }
}
