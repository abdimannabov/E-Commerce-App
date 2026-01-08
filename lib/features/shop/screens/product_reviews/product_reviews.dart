import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/products/ratings/rating_with_stars.dart';
import '../../../../common/widgets/products/ratings/user_feedback_card.dart';
import '../../../../utils/constants/image_strings.dart';
import 'widgets/ratings_chart.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: Text('Product Reviews'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Description
              const Text(
                "Taomlar haqida sharhlar bo'limi: \nBu yerda foydalanuvchilar taomlar haqida o'z fikrlarini qoldirishlari mumkin.",
              ),
              const SizedBox(height: SSizes.spaceBtwItems),

              // Overall Ratings
              SProductRatingsChart(),
              const SizedBox(height: SSizes.spaceBtwItems),

              // Product Star count
              SRatingWithStars(rating: 4.6),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "200 ta sharhlar",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwItems),

              // User feedbacks + Admin replies
              SUserFeedbackCard(
                userName: "John Doe",
                userPic: SImages.userPicture,
                feedbackText:
                    "Taom juda mazali edi! Tez yetkazib berildi va xizmat a'lo darajada edi. Sifati narxiga to'g'ri keldi. Albatta, yana buyurtma beraman!",
                adminReply:
                    "Rahmat! Sizdan yana buyurtma berishingizni kutamiz!",
                userRating: 4.0,
                showAdminReply: true,
                userDate: "27-10-2025",
                adminDate: "28-10-2025",
              ),
              const SizedBox(height: SSizes.spaceBtwItems),
              SUserFeedbackCard(
                userName: "Willy Wonka",
                userPic: SImages.userPicture,
                feedbackText:
                    "Men yetkazib berish hizmatidan foydalanmoqchi edim, lekin kartamni tizim qabul qilmadi. Yordam bera olasizmi?",
                adminReply:
                    "Assalomu alaykum! Kartangiz tizim tomonidan qabul qilinmayotgan bo'lsa, iltimos, kartangiz ma'lumotlarini tekshiring yoki boshqa kartadan foydalanib ko'ring. Agar muammo davom etsa, mijozlarga xizmat ko'rsatish markazimiz bilan bog'laning.",
                userRating: 3.5,
                showAdminReply: true,
                userDate: "27-10-2025",
                adminDate: "28-10-2025",
              ),
              const SizedBox(height: SSizes.spaceBtwItems),
              SUserFeedbackCard(
                userName: "Hekky Heffner",
                userPic: SImages.userPicture,
                feedbackText: "Taom menga yoqmadi",
                adminReply:
                    "Assalomu alaykum! Kartangiz tizim tomonidan qabul qilinmayotgan bo'lsa, iltimos, kartangiz ma'lumotlarini tekshiring yoki boshqa kartadan foydalanib ko'ring. Agar muammo davom etsa, mijozlarga xizmat ko'rsatish markazimiz bilan bog'laning.",
                userRating: 2.0,
                showAdminReply: false,
                userDate: "27-10-2025",
                adminDate: "28-10-2025",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
