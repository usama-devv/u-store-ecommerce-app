import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/images/u_circular_image.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Image
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const UCircularImage(
                        image: UImages.user, height: 80, width: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: USizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: USizes.spaceBtwItems),

              /// Heading Profile Info
              const USectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: USizes.spaceBtwItems),

              UProfileMenu(
                title: 'Name',
                value: 'Usama Masood',
                onPressed: () {},
              ),
              UProfileMenu(
                title: 'Username',
                value: 'usama_masood',
                onPressed: () {},
              ),
              const SizedBox(height: USizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: USizes.spaceBtwItems),

              /// Heading Personal Info
              const USectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: USizes.spaceBtwItems),

              UProfileMenu(
                title: 'User ID',
                value: '1564',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              UProfileMenu(
                title: 'Email',
                value: 'developersam111@gmail.com',
                onPressed: () {},
              ),
              UProfileMenu(
                title: 'Phone Number',
                value: '+92 300-0000000',
                onPressed: () {},
              ),
              UProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              UProfileMenu(
                title: 'Date of Birth',
                value: '01-Jan-1999',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: USizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
