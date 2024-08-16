import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:u_store/utils/constants/image_strings.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return UVerticalImageText(
            image: UImages.shoeIcon,
            title: 'Shoes',
            onTap: (){},
          );
        },
      ),
    );
  }
}