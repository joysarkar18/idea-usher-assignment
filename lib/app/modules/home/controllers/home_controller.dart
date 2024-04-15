import 'package:get/get.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController {
  final health = HealthFactory();

  RxInt stepCount = 0.obs;
  RxInt kcalCount = 0.obs;
  @override
  void onInit() {
    getHealthData();
    super.onInit();
  }

  @override
  void onReady() {
    _requestActivityRecognitionPermission();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _requestActivityRecognitionPermission() async {
    // Check if permission is already granted
    var status = await Permission.activityRecognition.status;
    if (!status.isGranted) {
      // Permission is not granted, request it
      status = await Permission.activityRecognition.request();
      if (status.isDenied) {
        // Permission is denied, show an explanation to the user
        _requestActivityRecognitionPermission();
      }
    }
  }

  void getHealthData() async {
    try {
      bool requested = await health.requestAuthorization([
        HealthDataType.STEPS,
        HealthDataType.ACTIVE_ENERGY_BURNED,
      ]);

      if (requested) {
        var now = DateTime.now();
        List<HealthDataPoint> healthData = await health.getHealthDataFromTypes(
          now.subtract(const Duration(days: 1)),
          now,
          [
            HealthDataType.STEPS,
            HealthDataType.ACTIVE_ENERGY_BURNED,
          ],
        );

        double currentSteps = 0.0;
        double kcalBurned = 0.0;

        healthData.forEach((dataPoint) {
          switch (dataPoint.type) {
            case HealthDataType.STEPS:
              currentSteps = double.parse(dataPoint.value.toString());
              break;
            case HealthDataType.ACTIVE_ENERGY_BURNED:
              kcalBurned = double.parse(dataPoint.value.toString());
              break;
            default:
              break;
          }
        });

        stepCount.value = currentSteps.toInt();
        kcalCount.value = kcalBurned.toInt();
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
