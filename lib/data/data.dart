import 'package:crypto_wallet/assets.dart';
import 'package:crypto_wallet/model/wallet_model.dart';

final btc = WalletModel(
  name: "Bitcoin",
  logo: Assets.bitcoin,
  code: "BTC",
  perPrice: 5.441,
  profit: true,
  profitPercent: 4.32,
  amount: 3.529020,
  balance: 19.153,
);
final eth = WalletModel(
  name: "Ethereum",
  logo: Assets.ethereum,
  code: "ETH",
  perPrice: 401,
  profit: true,
  profitPercent: 3.97,
  amount: 12.633681,
  balance: 4.822,
);
final xrp = WalletModel(
  name: "Ripple",
  logo: Assets.xrp,
  code: "XRP",
  perPrice: 0.45,
  profit: false,
  profitPercent: 13.55,
  amount: 1911.633681,
  balance: 859,
);
final List<WalletModel> walletlist = [
  btc,
  eth,
  xrp,
];

final List<String> tabList = [
  "Day",
  "Week",
  "Month",
  "Year",
];
