import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:solbase/screens/apphome/coins/component/models/coin.dart';

class CryptoApi {
  static String baseURL = 'https://coinranking1.p.rapidapi.com';

  static const Map<String, String> headers = {
    'X-RapidAPI-Key': '49d8f6f0e5msh740a0d016b8f754p1ac451jsn7246c9a965f4',
    'X-RapidAPI-Host': 'coinranking1.p.rapidapi.com'
  };

  static Future<List<Coin>> getCoins({required int limit}) async {
    List<Coin> coinList = [];

    var url = Uri.parse("$baseURL/coins?limit=$limit");
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      var coins = jsonDecode(response.body)['data']['coins'];
      for (var coin in coins) {
        coinList.add(Coin.fromJson(coin));
      }
    }
    return coinList;
  }
}
