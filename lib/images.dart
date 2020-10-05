import 'package:flutter/foundation.dart';

class Images {
  static final creditCards = <CreditCard>[
    CreditCard(
      urlFront: 'assets/1_front.png',
      urlBack: 'assets/1_back.png',
    ),
    CreditCard(
      urlFront: 'assets/2_front.png',
      urlBack: 'assets/2_back.png',
    ),
    CreditCard(
      urlFront: 'assets/3_front.png',
      urlBack: 'assets/3_back.png',
    ),
  ];

  static final frontCreditCards =
      Images.creditCards.map((card) => card.urlFront).toList();
}

class CreditCard {
  final String urlFront;
  final String urlBack;

  const CreditCard({
    @required this.urlFront,
    @required this.urlBack,
  });
}
