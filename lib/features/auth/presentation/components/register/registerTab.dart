import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/components/error_message.dart';
import 'package:nearme_fn/components/loading_State.dart';
import 'package:nearme_fn/features/auth/data/models/user_model.dart';
import 'package:nearme_fn/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:nearme_fn/features/auth/presentation/components/register/mycutomdatePicker.dart';
import 'package:nearme_fn/components/mybutton.dart';
import 'package:nearme_fn/components/mytextfield.dart';
import 'package:nearme_fn/features/auth/presentation/components/register/phoneField.dart';

class RegisterTab extends StatefulWidget {
  const RegisterTab({super.key});

  @override
  State<RegisterTab> createState() => _RegisterTabState();
}

class _RegisterTabState extends State<RegisterTab> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          context.goNamed('homePage');
        }
        if (state is AuthError) {
          ErrorMessage(context, state.error);
        }
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'First Name',
                        style: TextStyle(
                          color: Color(0xFF6C7278),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.44,
                        child: MyTextField(
                          myController: firstName,
                          hint: 'First Name',
                          isPassword: false,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Last Name',
                        style: TextStyle(
                          color: Color(0xFF6C7278),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.44,
                        child: MyTextField(
                          myController: lastName,
                          hint: 'Last Name',
                          isPassword: false,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Email',
                style: TextStyle(
                  color: Color(0xFF6C7278),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              MyTextField(
                myController: email,
                hint: 'Email',
                isPassword: false,
              ),
              const SizedBox(height: 10),
              const Text(
                'Date Of Birth',
                style: TextStyle(
                  color: Color(0xFF6C7278),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              MyCustomDatePicker(dobController: dob),
              const SizedBox(height: 10),
              const Text(
                'Phone Number',
                style: TextStyle(
                  color: Color(0xFF6C7278),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              PhoneField(myPhone: phoneNumber),
              const SizedBox(height: 10),
              const Text(
                'Set Password',
                style: TextStyle(
                  color: Color(0xFF6C7278),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              MyTextField(
                myController: password,
                hint: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 30),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  if (state is AuthLoading) {
                    return const LoadingState();
                  }
                  return MyButton(
                    nameOfAction: 'Register',
                    actionToPerform: () async {
                      await BlocProvider.of<AuthCubit>(context).registering(
                        UserModel(
                          firstName: firstName.text,
                          lastName: lastName.text,
                          email: email.text,
                          dob:
                              dob.text != ''
                                  ? '${DateTime.parse(dob.text).toIso8601String()}Z'
                                  : '${DateTime.now().toIso8601String()}Z',
                          phoneNumber: phoneNumber.text,
                          password: password.text,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
