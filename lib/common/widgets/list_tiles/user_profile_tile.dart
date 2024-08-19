import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/widgets/images/u_circular_image.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';

class UUserProfileTile extends StatelessWidget {
  const UUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const UCircularImage(
          image: UImages.user, height: 50, width: 50),
      title: Text(
        'Usama Masood',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: UColors.white),
      ),
      subtitle: Text(
        'developersam111@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: UColors.white),
      ),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: UColors.white,)),
    );
  }
}