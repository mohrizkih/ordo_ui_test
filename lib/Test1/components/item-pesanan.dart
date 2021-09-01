import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ordo_ui_test/Test1/models/pesanan.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';

class ItemPesanan extends StatelessWidget {
  ItemPesanan({
    Key? key,
    required this.e,
  }) : super(key: key);
  final Pesanan e;
  final rupiahFormat =
      new NumberFormat.simpleCurrency(locale: 'id', name: 'Rp. ', decimalDigits: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 4, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
                    child: Image.asset(e.imagePath, fit: BoxFit.contain),
                  )),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.name,
                      style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        e.weight.toStringAsFixed(0) + ' gram',
                        style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      rupiahFormat.format(e.price),
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: greenTukode),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  e.quantity.toString() + ' Item',
                  style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              'Catatan Item',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            e.notes,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
