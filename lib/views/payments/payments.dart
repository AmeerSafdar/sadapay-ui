// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sadapay_ui/views/home/home_page_item.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          HomePageItems(),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: SlidingUpPanel(
                backdropTapClosesPanel: true,
                defaultPanelState: PanelState.OPEN,
                maxHeight: size.height / 1.9,
                panelSnapping: false,
                backdropEnabled: true,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                panel: Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: size.width / 2),
                            width: 15,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Payments",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TopUpPayments(
                        icon: Icons.mobile_screen_share_outlined,
                        txt: "Mobile Topups",
                        subText: "instantly top ups your mobile",
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 2,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TopUpPayments(
                        icon: Icons.payment,
                        txt: "Bills and Utilities",
                        subText: "Pay for your utilities",
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 2,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TopUpPayments(
                        icon: Icons.money,
                        txt: "Money Request",
                        subText: "Review pending money req.",
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 2,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class TopUpPayments extends StatelessWidget {
  IconData icon;
  String txt, subText;

  TopUpPayments(
      {Key? key, required this.icon, required this.txt, required this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        txt,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subText),
      leading: Icon(
        icon,
        color: Color(0xffFF8181),
        size: 40,
      ),
    );
  }
}
