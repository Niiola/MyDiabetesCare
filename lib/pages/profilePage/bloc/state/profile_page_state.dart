import 'package:equatable/equatable.dart';

class ProfilePageState extends Equatable {
  const ProfilePageState({
    this.isLoading,
    this.requestMessage,
    this.accessCode,
    this.name,
    this.phoneNumber,
    this.email,
    this.isNewAccessCodeRequestCodeInProgress,
    this.isNewAccessCodeRequestCodeSuccessful,
  });

  final bool? isLoading;
  final bool? isNewAccessCodeRequestCodeInProgress;
  final bool? isNewAccessCodeRequestCodeSuccessful;
  final String? requestMessage;
  final String? name;
  final String? phoneNumber;
  final String? accessCode;
  final String? email;

  @override
  List<Object?> get props => [
        isLoading,
        accessCode,
        name,
        email,
        phoneNumber,
        requestMessage,
        isNewAccessCodeRequestCodeInProgress,
        isNewAccessCodeRequestCodeSuccessful,
      ];

  ProfilePageState copyWith({
    bool? isLoading,
    bool? isNewAccessCodeRequestCodeInProgress,
    bool? isNewAccessCodeRequestCodeSuccessful,
    String? requestMessage,
    String? name,
    String? phoneNumber,
    String? accessCode,
    String? email,
  }) {
    return ProfilePageState(
      isLoading: isLoading,
      isNewAccessCodeRequestCodeInProgress:
          isNewAccessCodeRequestCodeInProgress,
      isNewAccessCodeRequestCodeSuccessful:
          isNewAccessCodeRequestCodeSuccessful,
      requestMessage: requestMessage,
      accessCode: accessCode,
      email: email,
      phoneNumber: phoneNumber,
      name: name,
    );
  }
}
