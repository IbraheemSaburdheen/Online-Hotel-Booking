// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_label, dead_code

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../language/appLocalizations.dart';

import '../../../routes/route_names.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_appbar_view.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/remove_focuse.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final paymentLabels = ["Credit card/ Debit card", "Paypal", "Google Pay"];
  final List<IconData> iconsLabels = [
    FontAwesomeIcons.creditCard,
    FontAwesomeIcons.paypal,
    FontAwesomeIcons.googlePay,
  
  ];
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RemoveFocuse(
            onClick: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CommonAppbarView(
                    iconData: Icons.arrow_back,
                    titleText: AppLocalizations(context).of("payment_text"),
                    onBackClick: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Row(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 30, right: 16, bottom: 8, left: 16),
                        child: Text(
                          AppLocalizations(context).of('payment_mehod'),
                          style: TextStyles(context).getTitleStyle(),
                        ),
                      ),
                      //  SizedBox(width: ),
                      
                    ]),
                  )),
                  _lsitView(),
                  // _addNewCard(),

                  

                  CommonButton(
                    buttonText: AppLocalizations(context).of("continue"),
                    backgroundColor: Theme.of(context).primaryColor,
                    onTap: () {
                      NavigationServices(context).gotoSuccesScreen();
                    },
                    padding:EdgeInsets.only(left: 48, right: 48, bottom: 8, top: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).padding.bottom+24,
                  )
                ])));
  }

  Widget _addNewCard() {
    return Padding(
        padding: EdgeInsets.only( left:200,bottom: 8,top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            InkWell(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Add New Card",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ));}

    Widget _lsitView() {
      return SizedBox(
        height: 350,
        child:Padding(
        padding: EdgeInsets.only(left: 48, right: 48, bottom: 8, top: 10),
        child: ListView.separated(
            itemBuilder: ((context, index) {
              return ListTile(
                  leading: Icon(iconsLabels[index]),

                  trailing: Radio(
                      value: index,
                      groupValue: _value,
                      onChanged: (i) => setState(() {
                            _value = i as int;
                          })),
                  title: Text(paymentLabels[index]),
                  tileColor: Theme.of(context).disabledColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)));
            }),
            separatorBuilder: ((context, index) => const Divider()),
            itemCount: paymentLabels.length),
      ));
    }
  }

