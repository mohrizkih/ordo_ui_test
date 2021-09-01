import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ordo_ui_test/Test3/models/rebate.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';
import 'package:ordo_ui_test/constant.dart/url.dart';
import 'package:ordo_ui_test/mywidget/gradient-icon.dart';
import 'package:ordo_ui_test/mywidget/my-leading.dart';
import 'package:intl/intl.dart';

import 'components/my-floating.dart';
import 'components/test3body.dart';

class Test3 extends StatelessWidget {
  Test3({Key? key}) : super(key: key);
  final rupiahFormat =
      new NumberFormat.simpleCurrency(locale: 'id', name: 'Rp. ', decimalDigits: 0);
  final int totalBonus = 5000000;
  final int pendingBonus = 50000;

  @override
  Widget build(BuildContext context) {
    List<Rebate> listRebate = [
      Rebate(id: '#EC1201211', date: '14 Juli 2021', rabateValue: 150000),
      Rebate(id: '#EC1201211', date: '15 Juli 2021', rabateValue: 150000),
      Rebate(id: '#EC1201211', date: '16 Juli 2021', rabateValue: 150000),
      Rebate(id: '#EC1201211', date: '17 Juli 2021', rabateValue: 150000),
      Rebate(id: '#EC1201211', date: '17 Juli 2021', rabateValue: 150000),
      Rebate(id: '#EC1201211', date: '18 Juli 2021', rabateValue: 150000),
    ];
    List<Rebate> listHistoryRebate = [
      Rebate(id: '#REBATEC120211', date: '20 Juli 2021', rabateValue: 150000),
      Rebate(id: '#REBATEC120211', date: '20 Juli 2021', rabateValue: 150000),
      Rebate(id: '#REBATEC120211', date: '20 Juli 2021', rabateValue: 150000),
    ];
    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: true,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: MyLeading(color: orange),
        ),
        title: Text(
          'FINANSIAL',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xff545454)),
        ),
        actions: [
          GradientIcon(
            Icons.assessment,
            28,
            LinearGradient(
              colors: [
                myBlue,
                blueGradient,
              ],
              stops: [0.4, 1.0],
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 5, bottom: 4),
            child: Image.asset(
              logoBel,
              height: 26,
              width: 22,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
            color: Colors.white,
            height: 60,
            padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.home, color: greyIconColor),
                Icon(Icons.event_note_outlined, color: greyIconColor),
                Icon(Icons.history, color: greyIconColor),
              ],
            )),
      ),
      body: Stack(children: [
        Test3Body(
            rupiahFormat: rupiahFormat,
            totalBonus: totalBonus,
            pendingBonus: pendingBonus,
            listRebate: listRebate,
            listHistoryRebate: listHistoryRebate),
        MyFloatingActionButton(),
      ]),
    );
  }
}
