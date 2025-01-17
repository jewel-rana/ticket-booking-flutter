import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket.dart';
import 'package:ticket_booking_app/utils/styles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              // fit: BoxFit.fill,
                              image: AssetImage("assets/images/logo.png"))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                        Text("Search", style: Styles.headLineStyle4)
                      ],
                  )
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLineStyle2,),
                    InkWell(
                      child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                      onTap: () {
                        if (kDebugMode) {
                          print("You just print view all");
                        }
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          const Ticket()
        ],
      ),
    );
  }
}
