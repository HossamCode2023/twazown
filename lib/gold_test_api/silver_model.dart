// To parse this JSON data, do
//
//     final silverPrice = silverPriceFromJson(jsonString);

import 'dart:convert';

SilverPrice silverPriceFromJson(String str) => SilverPrice.fromJson(json.decode(str));

String silverPriceToJson(SilverPrice data) => json.encode(data.toJson());

class SilverPrice {
    int timestamp;
    String metal;
    String currency;
    String exchange;
    String symbol;
    int openTime;
    double price;
    double ch;
    double ask;
    double bid;
    double priceGram24K;
    double priceGram22K;
    double priceGram21K;
    double priceGram20K;
    double priceGram18K;

    SilverPrice({
        required this.timestamp,
        required this.metal,
        required this.currency,
        required this.exchange,
        required this.symbol,
        required this.openTime,
        required this.price,
        required this.ch,
        required this.ask,
        required this.bid,
        required this.priceGram24K,
        required this.priceGram22K,
        required this.priceGram21K,
        required this.priceGram20K,
        required this.priceGram18K,
    });

    factory SilverPrice.fromJson(Map<String, dynamic> json) => SilverPrice(
        timestamp: json["timestamp"],
        metal: json["metal"],
        currency: json["currency"],
        exchange: json["exchange"],
        symbol: json["symbol"],
        openTime: json["open_time"],
        price: json["price"]?.toDouble(),
        ch: json["ch"]?.toDouble(),
        ask: json["ask"]?.toDouble(),
        bid: json["bid"]?.toDouble(),
        priceGram24K: json["price_gram_24k"]?.toDouble(),
        priceGram22K: json["price_gram_22k"]?.toDouble(),
        priceGram21K: json["price_gram_21k"]?.toDouble(),
        priceGram20K: json["price_gram_20k"]?.toDouble(),
        priceGram18K: json["price_gram_18k"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "timestamp": timestamp,
        "metal": metal,
        "currency": currency,
        "exchange": exchange,
        "symbol": symbol,
        "open_time": openTime,
        "price": price,
        "ch": ch,
        "ask": ask,
        "bid": bid,
        "price_gram_24k": priceGram24K,
        "price_gram_22k": priceGram22K,
        "price_gram_21k": priceGram21K,
        "price_gram_20k": priceGram20K,
        "price_gram_18k": priceGram18K,
    };
}
