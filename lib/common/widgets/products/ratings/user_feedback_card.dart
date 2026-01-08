import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../common/widgets/products/ratings/rating_with_stars.dart';

class SUserFeedbackCard extends StatelessWidget {
  const SUserFeedbackCard({
    super.key,
    required this.userName,
    required this.userPic,
    required this.feedbackText,
    required this.adminReply,
    required this.userRating,
    required this.showAdminReply,
    required this.userDate,
    required this.adminDate,
  });

  final String userName, userPic, feedbackText, adminReply, userDate, adminDate;
  final double userRating;
  final bool showAdminReply;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // User Pic and name
        Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(userPic)),
            const SizedBox(width: 8.0),
            Text(userName, style: Theme.of(context).textTheme.bodyLarge),

            Spacer(),
            Icon(
              Icons.more_vert,
              color: SHelperFunctions.isDarkMode(context)
                  ? SColors.white
                  : SColors.black,
            ),
          ],
        ),

        // User Rating
        Row(
          children: [
            SRatingWithStars(rating: userRating),
            const SizedBox(width: SSizes.sm),

            Text(userDate, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: SSizes.md),

        // Feedback Text
        ReadMoreText(
          feedbackText,
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Ko\'proq ko\'rsatish',
          trimExpandedText: ' Kamroq ko\'rsatish',
          moreStyle: TextStyle(
            color: SColors.primary,
            fontWeight: FontWeight.bold,
          ),
          lessStyle: TextStyle(
            color: SColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Admin Reply
        if (showAdminReply)
          Padding(
            padding: const EdgeInsets.all(SSizes.md),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: SColors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8.0),
              ),

              child: Padding(
                padding: const EdgeInsets.all(SSizes.sm),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Milliy Taomlar",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Spacer(),

                        Text(
                          adminDate,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: SSizes.sm),

                    // Admin text
                    ReadMoreText(
                      adminReply,
                      style: Theme.of(context).textTheme.bodyMedium,
                      trimLines: 1,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Ko\'proq ko\'rsatish',
                      trimExpandedText: ' Kamroq ko\'rsatish',
                      moreStyle: TextStyle(
                        color: SColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                      lessStyle: TextStyle(
                        color: SColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
