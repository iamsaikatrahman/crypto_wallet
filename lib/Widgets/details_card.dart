import 'package:crypto_wallet/Views/views.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key? key,
    required this.screenSize,
    required this.widget,
  }) : super(key: key);

  final Size screenSize;
  final WalletsDetails widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      height: screenSize.height * 0.3,
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    widget.walletModel!.logo!,
                    width: screenSize.width * 0.13,
                  ),
                  SizedBox(width: screenSize.width * 0.05),
                  Text(
                    widget.walletModel!.name!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4c5867),
                    ),
                  ),
                ],
              ),
              Text(
                widget.walletModel!.code!,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFaeb8c4),
                ),
              ),
            ],
          ),
          Text(
            "${widget.walletModel!.amount}" + widget.walletModel!.code!,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4c5867),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${widget.walletModel!.balance}USD",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFaeb8c4),
                ),
              ),
              Container(
                height: screenSize.height * 0.045,
                width: screenSize.width * 0.25,
                decoration: BoxDecoration(
                  color:
                      (widget.walletModel!.profit!) ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: (widget.walletModel!.profit!)
                      ? Text(
                          "+${widget.walletModel!.profitPercent}%",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          "-${widget.walletModel!.profitPercent}%",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
            ],
          ),
          Center(
            child: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 40,
              ),
              color: Color(0xFFaeb8c4),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
