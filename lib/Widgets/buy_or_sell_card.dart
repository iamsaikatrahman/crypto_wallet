import 'package:crypto_wallet/Views/views.dart';
import 'package:crypto_wallet/assets.dart';
import 'package:flutter/material.dart';

class BuyOrSellCard extends StatelessWidget {
  const BuyOrSellCard({
    Key? key,
    required this.screenSize,
    required this.widget,
    required this.isSell,
    required this.onTap,
  }) : super(key: key);

  final Size screenSize;
  final WalletsDetails widget;
  final bool isSell;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: screenSize.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              (isSell) ? Assets.sell : Assets.buy,
              width: screenSize.width * 0.15,
            ),
            SizedBox(height: screenSize.height * 0.01),
            Text(
              (isSell)
                  ? "Sell " + widget.walletModel!.code!
                  : "Buy " + widget.walletModel!.code!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4c5867),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
