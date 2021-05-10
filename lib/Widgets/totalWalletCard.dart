import 'package:crypto_wallet/assets.dart';
import 'package:flutter/material.dart';

class TotalWalletCard extends StatelessWidget {
  const TotalWalletCard({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 0.33,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            width: screenSize.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.3),
                  offset: Offset(5, 2),
                  blurRadius: 7,
                  spreadRadius: -4,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF4c5867),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                Assets.wallet,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: screenSize.width * 0.03),
                          Text(
                            'Total Wallet Balance',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4c5867),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "USD",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFaeb8c4),
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.01),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          "\$39.584",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4c5867),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: screenSize.height * 0.05,
                          // width: screenSize.width * 0.03,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "+3.55%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "7.251332 BTC",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFaeb8c4),
                    ),
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
            ),
          );
        },
      ),
    );
  }
}
