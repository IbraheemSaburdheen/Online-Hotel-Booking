// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/language/appLocalizations.dart';
import 'package:flutter_hotel_booking_ui/routes/route_names.dart';
import 'package:flutter_hotel_booking_ui/utils/localfiles.dart';
import 'package:flutter_hotel_booking_ui/utils/text_styles.dart';
import 'package:flutter_hotel_booking_ui/widgets/common_button.dart';

class SuccesScreen extends StatefulWidget {
  const SuccesScreen({Key? key}) : super(key: key);

  @override
  State<SuccesScreen> createState() => _SuccesScreen();
}

class _SuccesScreen extends State<SuccesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Image(
              image: AssetImage(Localfiles.sucess),
              height: 150.0,
            ),
            Padding(padding: const EdgeInsets.only(top: 20),
            child: Text(
              AppLocalizations(context).of('succes'),
              style: TextStyles(context).getRegularStyle(),
            ),
            ),
            
            CommonButton(
              buttonText: AppLocalizations(context).of('ok'),
              onTap: () {
                NavigationServices(context).gotoTabScreen();
              },
              padding:EdgeInsets.only(left: 48, right: 48, bottom: 8, top: 20),
            )
          ]),
    );
  }
}
