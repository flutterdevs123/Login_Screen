import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dummy/healthcare_view/res/components/Custom_container.dart';
import 'package:dummy/healthcare_view/res/components/Custom_Button.dart';
import '../view_model/profile_controller.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller ko Put/Initialize kar lein
    final ProfileController controller = Get.put(ProfileController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.transparent,
                      border: Border.all(width: 2, color: Colors.blueAccent),
                    ),
                    child: ClipOval(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNm15-t7RWDG0LNdnPbdIy7nU8d4KIGTaE2-TDU5_Fww&s=10",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        // Edit Profile Screen par navigate karne k liye
                        Get.to(() => const EditProfileScreen());
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.edit, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),

              // Obx widget reactive changes ko listen karega
              Obx(() => CustomContainer(
                label: "Name",
                value: controller.name.value,
              )),
              const SizedBox(height: 10),
              Obx(() => CustomContainer(
                label: "Number",
                value: controller.number.value,
              )),
              const SizedBox(height: 10),
              Obx(() => CustomContainer(
                label: "Gender",
                value: controller.gender.value,
              )),
              const SizedBox(height: 10),
              Obx(() => CustomContainer(
                label: "Subject",
                value: controller.subject.value,
              )),
              const SizedBox(height: 25),

              CustomButton(
                name: "Logout",
                onTap: () {
                  Get.toNamed("/login");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}