import 'package:flutter/material.dart';
import 'reviews_indicator.dart';

class SProductRatingsChart extends StatelessWidget {
  const SProductRatingsChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,child: Text("4.9", style: Theme.of(context).textTheme.displayLarge)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              SProductReviewsIndicator(text: "5", value: 1),
              SProductReviewsIndicator(text: "4", value: 0.7),
              SProductReviewsIndicator(text: "3", value: 0.5),
              SProductReviewsIndicator(text: "2", value: 0.3),
              SProductReviewsIndicator(text: "1", value: 0.1),
            ],
          ),
        ),
      ],
    );
  }
}