import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/config/colors.dart';
import 'package:smart_car_parking/controller/parking_controller.dart';

class FloorSelector extends StatelessWidget {
  const FloorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    ParkingController parkingController = Get.put(ParkingController());
    return DropdownButton(
        focusColor: Colors.white,
        items: const [
          DropdownMenuItem(
            child: const Text("1st Floor"),
            value: "1st Floor",
          ),
          DropdownMenuItem(
            child: const Text("2nd Floor"),
            value: "2nd Floor",
          ),
          DropdownMenuItem(
            child: const Text("3rd Floor"),
            value: "3rd Floor",
          )
        ],
        onChanged: (value) {
          parkingController.selectedFloor.value = value.toString();
          print(value);
        },
        hint: Obx(
          () => Text(
            parkingController.selectedFloor.value,
            style: TextStyle(
              color: blueColor,
              fontSize: 15,
            ),
          ),
        ));
  }
}
