import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ordo_ui_test/Test3/models/rebate.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';
import 'package:ordo_ui_test/mywidget/custom_icons_icons.dart';

import 'test3widget.dart';

class Test3Body extends StatelessWidget {
  const Test3Body({
    Key? key,
    required this.rupiahFormat,
    required this.totalBonus,
    required this.pendingBonus,
    required this.listRebate,
    required this.listHistoryRebate,
  }) : super(key: key);

  final NumberFormat rupiahFormat;
  final int totalBonus;
  final int pendingBonus;
  final List<Rebate> listRebate;
  final List<Rebate> listHistoryRebate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BonusWidget(
              rupiahFormat: rupiahFormat,
              bonus: totalBonus,
              title: 'TOTAL BONUS',
            ),
            BonusWidget(
              rupiahFormat: rupiahFormat,
              bonus: pendingBonus,
              title: 'PENDING BONUS',
            ),
            //Bagian List/Daftar Rebate
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Text(
                          'Daftar Rebate',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400, color: textDisableColor),
                        )),
                        Container(
                          height: 25,
                          width: 70,
                          decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                              child: Text(
                            'Semua',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500, color: Colors.white),
                          )),
                        ),
                        SizedBox(width: 9),
                        Container(
                          height: 25,
                          width: 70,
                          decoration: BoxDecoration(
                            color: myBlue,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Filter',
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w500, color: Colors.white),
                              ),
                              Icon(
                                CustomIcons.options,
                                color: Colors.white,
                                size: 9,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                  ...listRebate
                      .map((e) => DaftarRebateItem(e, rupiahFormat: rupiahFormat))
                      .toList(),
                ],
              ),
            ),
            //Bagian Riwayat Rebate
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'Riwayat Rebate',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: orange),
                    ),
                  ),
                  ...listHistoryRebate
                      .map((e) => HistoryRebateWidget(e, rupiahFormat: rupiahFormat))
                      .toList(),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
