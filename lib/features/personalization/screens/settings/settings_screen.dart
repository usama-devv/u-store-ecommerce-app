import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/primary_header_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            UPrimaryHeaderContainer(child: child),
            /// Body
          ],
        ),
      ),
    );
  }
}
