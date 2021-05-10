import 'package:crypto_wallet/Views/views.dart';
import 'package:crypto_wallet/data/data.dart';
import 'package:crypto_wallet/model/wallet_model.dart';
import 'package:flutter/material.dart';

class WalletsCard extends StatelessWidget {
  const WalletsCard({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: walletlist.length,
      itemBuilder: (context, index) {
        WalletModel walletModel = walletlist[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => WalletsDetails(
                  walletModel: walletModel,
                ),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 15),
            height: screenSize.height * 0.12,
            width: screenSize.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(walletModel.logo!, width: 50),
                      SizedBox(width: screenSize.width * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${walletModel.amount}" + walletModel.code!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4c5867),
                            ),
                          ),
                          Text(
                            "\$${walletModel.perPrice}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFaeb8c4),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$${walletModel.balance}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4c5867),
                        ),
                      ),
                      (walletModel.profit!)
                          ? Text(
                              "+${walletModel.profitPercent}%",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.green,
                              ),
                            )
                          : Text(
                              "-${walletModel.profitPercent}%",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
