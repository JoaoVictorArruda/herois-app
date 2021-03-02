import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import '../../domain/info/info_test.dart';
import '../../domain/info/value_validators.dart';
import '../core/firestore_helpers_test.dart';

import '../../domain/request/request_test.dart';
import '../info/info_dtos_test.dart';

class NotificationTest {

  Future<int> sendNotificationToNearbyUsersWithCompatibleBloodRequest(RequestTest request, String title, String body) async {
    if(!request.isOpen) {
      return 0;
    }
    int totalRequests = 1;
    final _firestore = MockFirestoreInstance();
    final userInfoDoc = await _firestore.userDocument();
    userInfoDoc
        .snapshots()
        .map(
          (snapshot) {
            InfoTest infoTest = InfoDtoTest.fromJson(snapshot.data()).toDomain();
            if(BloodTypeTest.donateTo(request.bloodType, infoTest.bloodType) && infoTest.isVisible) {
              totalRequests++;
            }
      },
    );
    return totalRequests;
  }

}