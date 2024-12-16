
import 'package:flutter/material.dart';

class CouponNotification extends StatelessWidget {
  const CouponNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        color: Colors.lightBlueAccent,
        height: 40,
        width: double.infinity,
        child: const Padding(
          padding: EdgeInsets.all(6.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'There are 3 coupon waiting',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              Icon(
                Icons.discount_rounded,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
