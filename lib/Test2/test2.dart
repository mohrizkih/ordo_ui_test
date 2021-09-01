import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ordo_ui_test/Test2/models/portofolio.dart';
import 'package:ordo_ui_test/Test2/components/summary-rating.dart';
import 'package:ordo_ui_test/Test2/components/test2tile.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';
import 'package:ordo_ui_test/constant.dart/url.dart';
import 'package:ordo_ui_test/mywidget/gradient-icon.dart';
import 'package:ordo_ui_test/mywidget/my-leading.dart';

import '../mywidget/custom_icons_icons.dart';

class Test2 extends StatelessWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Customer> listCustomer = [
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage1),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage2),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage3),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage3),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage1),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage2),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage1),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage3),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage2),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage2),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage1),
      Customer(customerName: 'Nama Customer', rating: 5.0, imagePath: customerImage3),
    ];
    final Portofolio vendorProfile = Portofolio(
        name: 'Dina Florist',
        description: 'Toko Bunga terbaiks se Indonesia Raya\nHarga Murah Produk Berkualitas',
        rating: 5.0,
        review: 100,
        pesanan: 162,
        profileImagePath: fotoVendor,
        listCustomer: listCustomer);
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: true,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'PORTOFOLIO VENDOR',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: veryDarkBlue),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: MyLeading(
            color: veryDarkBlue,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GradientIcon(
              Icons.notifications,
              24,
              LinearGradient(
                colors: [
                  veryDarkBlue,
                  gradientDarkBlue,
                ],
                stops: [0.8, 1.0],
                end: Alignment.bottomRight,
                begin: Alignment.topLeft,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.chrome_reader_mode, color: greyIconColor),
                Icon(CustomIcons.transfer_arrow, color: greyIconColor, size: 18),
                Icon(Icons.move_to_inbox, color: greyIconColor),
                Icon(Icons.assessment, color: greyIconColor),
                Icon(CustomIcons.helmet, color: greyIconColor, size: 18),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                        // color: Colors.transparent,

                        borderRadius: BorderRadius.circular(43),
                        border: Border.all(color: Colors.grey.shade400, width: 1.5)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(vendorProfile.profileImagePath),
                      ),
                    ),
                  ),
                  SummaryRating(value: vendorProfile.rating.toString(), title: 'Rating'),
                  SummaryRating(value: vendorProfile.review.toString(), title: 'Review'),
                  SummaryRating(value: vendorProfile.pesanan.toString(), title: 'Pesanan'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 4),
                child: Text(
                  vendorProfile.name,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: almostBlack),
                ),
              ),
              Text(
                vendorProfile.description,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: almostBlack),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'PORTOFOLIO',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: almostBlack),
                    )),
              ),
              Wrap(
                runSpacing: 1.5,
                spacing: 1.5,
                children: vendorProfile.listCustomer
                    .map((e) => Test2TileItem(width: width, e: e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
