import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/presentation/components/mycutomdatePicker.dart';
import 'package:nearme_fn/features/auth/presentation/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/mytextfield.dart';
import 'package:nearme_fn/features/auth/presentation/components/phoneField.dart';

class RegisterTab extends StatefulWidget {
  const RegisterTab({super.key});

  @override
  State<RegisterTab> createState() => _RegisterTabState();
}

class _RegisterTabState extends State<RegisterTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('First Name', style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: MyTextField(hint: 'First Name', isPassword: false),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Last Name', style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: MyTextField(hint: 'Last Name', isPassword: false),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text('Email', style: TextStyle(color: Colors.grey)),
          MyTextField(hint: 'Email', isPassword: false),
          SizedBox(height: 10),
          Text('Date Of Birth', style: TextStyle(color: Colors.grey)),
          MyCustomDatePicker(dobController: TextEditingController()),
          SizedBox(height: 10),
          Text('Phone Number', style: TextStyle(color: Colors.grey)),
          PhoneField(),
          SizedBox(height: 10),
          Text('Set Password', style: TextStyle(color: Colors.grey)),
          MyTextField(hint: 'Password', isPassword: true),
          SizedBox(height: 30),
          MyButton(nameOfAction: 'Register', actionToPerform: () {}),
        ],
      ),
    );
  }
}
