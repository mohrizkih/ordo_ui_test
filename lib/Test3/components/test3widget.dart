import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ordo_ui_test/Test3/models/rebate.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';

class ItemDaftarRebate extends StatelessWidget {
  const ItemDaftarRebate({
    Key? key,
    required this.content,
    required this.title,
    this.color,
  }) : super(key: key);
  final String content;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: textDisableColor),
        ),
        Text(
          content,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: color ?? greenIncome),
        ),
      ],
    );
  }
}

class BonusWidget extends StatelessWidget {
  const BonusWidget({
    Key? key,
    required this.rupiahFormat,
    required this.bonus,
    required this.title,
  }) : super(key: key);

  final NumberFormat rupiahFormat;
  final int bonus;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 5,
            blurRadius: 7,
            // offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: orange),
          ),
          Text(
            rupiahFormat.format(bonus) + ',00',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: totalGreyColor),
          ),
        ],
      ),
    );
  }
}

class DaftarRebateItem extends StatelessWidget {
  const DaftarRebateItem(
    this.e, {
    Key? key,
    required this.rupiahFormat,
  }) : super(key: key);

  final Rebate e;
  final NumberFormat rupiahFormat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemDaftarRebate(
            title: 'ID Transaksi',
            content: e.id,
            color: idGreyColor,
          ),
          ItemDaftarRebate(content: rupiahFormat.format(e.rabateValue), title: 'Rebate'),
          ItemDaftarRebate(content: e.date, title: 'Tanggal'),
        ],
      ),
    );
  }
}

class HistoryRebateWidget extends StatelessWidget {
  const HistoryRebateWidget(
    this.e, {
    Key? key,
    required this.rupiahFormat,
  }) : super(key: key);
  final Rebate e;

  final NumberFormat rupiahFormat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [myBlue, blueGradient],
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
              ),
            ),
            child: Icon(
              Icons.receipt,
              color: Colors.white,
              size: 20,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.id,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  Text(e.date,
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w400, color: totalGreyColor)),
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: orange,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Text(rupiahFormat.format(e.rabateValue),
                  style:
                      TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.white))),
        ],
      ),
    );
  }
}
