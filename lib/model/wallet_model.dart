import 'package:flutter/cupertino.dart';

class WalletModel {
  String? name;
  String? logo;
  String? code;
  double? perPrice;
  bool? profit;
  double? profitPercent;
  double? amount;
  double? balance;

  WalletModel({
    @required this.name,
    @required this.logo,
    @required this.code,
    @required this.perPrice,
    @required this.profit,
    @required this.profitPercent,
    @required this.amount,
    @required this.balance,
  });
}
