import 'package:diabetes_care/config/appColors/app_colors.dart';
import 'package:diabetes_care/pages/profilePage/bloc/profile_page_bloc.dart';
import 'package:diabetes_care/pages/profilePage/bloc/state/profile_page_state.dart';
import 'package:diabetes_care/pages/profilePage/widget/profile_page_custom_item_widget.dart';
import 'package:diabetes_care/util/appUIConstant/app_ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePageFormWidget extends StatefulWidget {
  final bool isItAPatient;
  const ProfilePageFormWidget({
    Key? key,
    required this.isItAPatient,
  }) : super(key: key);

  @override
  State<ProfilePageFormWidget> createState() => _ProfilePageFormWidgetState();
}

class _ProfilePageFormWidgetState extends State<ProfilePageFormWidget> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final accessNumberController = TextEditingController();
  final phoneNumberController = TextEditingController();

  final formStateKey = GlobalKey<FormState>();

  bool isThereErrorInName = false;
  bool isThereErrorInUsername = false;
  bool isThereErrorInPhoneNumber = false;

  bool isThereErrorInAccessNumber = false;

  bool editProfile = false;

  bool isLoading = false;

  String accessCode = '';
  String fullname = '';
  String email = '';
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfilePageBloc, ProfilePageState>(
      builder: (context, state) {
        return Column(
          children: [
            Form(
              key: formStateKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 7.0,
                    ),
                    child: editProfile == true
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 2.0,
                                shape: txtFieldBorder,
                                child: TextField(
                                  controller: nameController,
                                  keyboardType: TextInputType.emailAddress,
                                  enabled: !isLoading,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: AppColors.textFieldFilledColor,
                                    prefixIcon:
                                        loginIconForm(icon: Icons.email),
                                    hintText: 'Name',
                                    border: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    if (nameController.text.isNotEmpty &&
                                        isThereErrorInName == true) {
                                      setState(() {
                                        isThereErrorInName =
                                            !isThereErrorInName;
                                      });
                                    } else {
                                      setState(() {
                                        isThereErrorInName = false;
                                      });
                                    }
                                  },
                                ),
                              ),
                              isThereErrorInName == true
                                  ? Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Enter your name',
                                          style: errorTextStyle,
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          )
                        : ProfilePageCustomItemWidget(
                            title: 'Name', description: fullname),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 7.0,
                    ),
                    child: editProfile == true
                        ? Column(
                            children: [
                              Card(
                                elevation: 2.0,
                                shape: txtFieldBorder,
                                child: TextField(
                                  controller: usernameController,
                                  keyboardType: TextInputType.text,
                                  enabled: !isLoading,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: AppColors.textFieldFilledColor,
                                    prefixIcon:
                                        loginIconForm(icon: Icons.person),
                                    hintText: 'Username',
                                    border: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    if (usernameController.text.isNotEmpty &&
                                        isThereErrorInUsername == true) {
                                      setState(() {
                                        isThereErrorInUsername =
                                            !isThereErrorInUsername;
                                      });
                                    }
                                  },
                                ),
                              ),
                              isThereErrorInUsername == true
                                  ? Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Enter your username',
                                          style: errorTextStyle,
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          )
                        : ProfilePageCustomItemWidget(
                            title: 'Email', description: email),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 7.0,
                    ),
                    child: editProfile == true
                        ? Column(
                            children: [
                              Card(
                                elevation: 2.0,
                                shape: txtFieldBorder,
                                child: TextField(
                                  controller: phoneNumberController,
                                  keyboardType: TextInputType.text,
                                  enabled: !isLoading,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: AppColors.textFieldFilledColor,
                                    prefixIcon:
                                        loginIconForm(icon: Icons.person),
                                    hintText: 'phoneNumber',
                                    border: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    if (phoneNumberController.text.isNotEmpty &&
                                        isThereErrorInPhoneNumber == true) {
                                      setState(() {
                                        isThereErrorInPhoneNumber =
                                            !isThereErrorInPhoneNumber;
                                      });
                                    }
                                  },
                                ),
                              ),
                              isThereErrorInPhoneNumber == true
                                  ? Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Enter your phoneNumber',
                                          style: errorTextStyle,
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          )
                        : ProfilePageCustomItemWidget(
                            title: 'phoneNumber', description: phoneNumber),
                  ),
                  widget.isItAPatient == true
                      ? Padding(
                          padding: const EdgeInsets.only(
                            bottom: 7.0,
                          ),
                          child: editProfile == true
                              ? Column(
                                  children: [
                                    Card(
                                      elevation: 2.0,
                                      shape: txtFieldBorder,
                                      child: TextField(
                                        controller: accessNumberController,
                                        keyboardType: TextInputType.text,
                                        enabled: !isLoading,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor:
                                              AppColors.textFieldFilledColor,
                                          prefixIcon: loginIconForm(
                                              icon: Icons.numbers),
                                          hintText: 'Access number',
                                          border: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        ),
                                        onChanged: (value) {
                                          if (accessNumberController
                                                  .text.isNotEmpty &&
                                              isThereErrorInAccessNumber ==
                                                  true) {
                                            setState(() {
                                              isThereErrorInAccessNumber =
                                                  !isThereErrorInAccessNumber;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    isThereErrorInAccessNumber == true
                                        ? Align(
                                            alignment:
                                                AlignmentDirectional.topStart,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Text(
                                                'Enter your access number',
                                                style: errorTextStyle,
                                              ),
                                            ),
                                          )
                                        : Container(),
                                  ],
                                )
                              : ProfilePageCustomItemWidget(
                                  title: 'Access number',
                                  description: accessCode),
                        )
                      : Container(),
                ],
              ),
            )
          ],
        );
      },
      listener: (context, state) {
        if (state.accessCode != null && state.accessCode!.isNotEmpty) {
          setState(() {
            accessCode = state.accessCode!;
          });
        }

        if (state.email != null && state.email!.isNotEmpty) {
          setState(() {
            email = state.email!;
          });
        }

        if (state.name != null && state.name!.isNotEmpty) {
          setState(() {
            fullname = state.name!;
          });
        }
        if (state.phoneNumber != null && state.phoneNumber!.isNotEmpty) {
          setState(() {
            phoneNumber = state.phoneNumber!;
          });
        }
      },
    );
  }
}
