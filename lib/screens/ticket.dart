import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/layout.dart';
import 'package:ticket_booking_app/utils/styles.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                        const Spacer(),
                        const ThickContainer(),
                        Expanded(child: SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              print("Width is ${constraints.constrainWidth()}");
                              return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(5, (index) => const SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                    color: Colors.white
                                  )
                                ),
                                ))
                              );
                            },
                          ),
                        )),
                        const ThickContainer(),
                        const Spacer(),
                        Text("CAN", style: Styles.headLineStyle3.copyWith(color: Colors.white))
                      ]
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
