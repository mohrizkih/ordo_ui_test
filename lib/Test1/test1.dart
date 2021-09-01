import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ordo_ui_test/Test1/models/pesanan.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';
import 'package:ordo_ui_test/constant.dart/url.dart';

import '../mywidget/custom_icons_icons.dart';
import 'components/collapsed-information.dart';
import 'components/item-pesanan.dart';
import '../mywidget/my-leading.dart';
import 'components/status-address.dart';
import 'components/status-sparator.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Pesanan> listPesanan = [
      Pesanan(
          name: 'Strawberry',
          weight: 100,
          quantity: 2,
          price: 75000,
          imagePath: strawberryImage,
          notes:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .'),
      Pesanan(
          name: 'Nanas',
          weight: 100,
          quantity: 2,
          price: 75000,
          imagePath: strawberryImage,
          notes:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .'),
    ];
    final detailOrder = DetailOrder(
        senderName: 'David Morel',
        platNumber: 'B 1201 FA',
        status: 'Sedang mengambil barang',
        address: 'Taman Indah Dago No. 612',
        pesananNotes:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .',
        listPesanan: listPesanan);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'LACAK PESANAN',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xff545454)),
        ),
        leading: MyLeading(),
        actions: [Image.asset(bagImage)],
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
                Icon(Icons.assignment, color: greyIconColor),
                Icon(CustomIcons.transfer_arrow, color: greyIconColor, size: 18),
                Icon(Icons.home, color: greyIconColor),
                Icon(Icons.notifications_outlined, color: greyIconColor),
                Icon(Icons.person_outlined, color: greyIconColor),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  isCollapsed = true;
                });
              },
              child: Container(
                  width: double.infinity, child: Image.asset(mapImage, fit: BoxFit.cover))),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 100),
              width: width * 0.6,
              child: Image.asset(
                trackImage,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isCollapsed == true ? isCollapsed = false : isCollapsed = true;
                });
              },
              child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  height: isCollapsed ? 120 : 450,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CollapsedInformation(
                              senderName: detailOrder.senderName,
                              platNumber: detailOrder.platNumber,
                            ),
                            if (!isCollapsed) ...[
                              StatusAddress(
                                iconData: Icons.access_time_outlined,
                                title: 'Status',
                                description: detailOrder.status,
                              ),
                              StatusSeparator(),
                              StatusAddress(
                                iconData: CustomIcons.pin,
                                title: 'Alamat Anda',
                                description: detailOrder.address,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                child: Text(
                                  'Pesanan',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              ...detailOrder.listPesanan.map((e) => ItemPesanan(e: e)).toList(),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                                child: Text(
                                  'Catatan Pesanan',
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  detailOrder.pesananNotes,
                                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ]
                          ],
                        ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
