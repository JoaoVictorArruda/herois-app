import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:herois/injection.config.dart';
import 'package:herois/injection.dart';
import 'domain/info/info_test.dart';
import 'domain/info/value_validators.dart';
import 'domain/request/request_test.dart';
import 'infrastructure/auth/firebase_auth_facade_test.dart';
import 'infrastructure/core/notifications_test.dart';
import 'infrastructure/info/info_repository_test.dart';
import 'infrastructure/request/request_repository_test.dart';
import 'presentation/info/info_overview/info_overview_page_test.dart';

void main() async {
  final models = await config();
  test('sign in test', () async {
    expect(await FirebaseAuthFacadeTest().signInTest(), "Bob");
  });

  testWidgets('render widgets test', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
            title: 'Info profile',
            home: InfoOverViewPageTest(infoTest: models[0],)
        )
    );
    expect(find.text(models[0].name), findsOneWidget);
    expect(find.text(models[0].bio), findsOneWidget);
    expect(find.text(models[0].bloodType), findsOneWidget);
  });

  test('blood type donate to', () async {
    expect(BloodTypeTest.donateTo("A+", "A-"), false);
    expect(BloodTypeTest.donateTo("B-", "O-"), false);
    expect(BloodTypeTest.donateTo("AB+", "AB+"), true);
  });

  test('blood type receive to', () async {
    expect(BloodTypeTest.receiveTo("A-", "B-"), false);
    expect(BloodTypeTest.receiveTo("B-", "A+"), false);
    expect(BloodTypeTest.receiveTo("O+", "O-"), true);
  });

  test('notifications test', () async {
    final notifications = NotificationTest();
    final amountNotificationsSent = await notifications.sendNotificationToNearbyUsersWithCompatibleBloodRequest(models[2], "Mock", "Test");
    expect(amountNotificationsSent, 1);
  });
}

config() async {
  $initGetIt(getIt);
  final user = await FirebaseAuthFacadeTest().getSignedInUser();
  final infoRepositoryTest = InfoRepositoryTest();

  final requestRepositoryTest = RequestRepositoryTest();
  final infoTest = InfoTest.mock(user);
  // Populate the mock database with signed user.
  infoRepositoryTest.create(infoTest);
  final infoOtherUser = InfoTest.mockFromName("Maria");
  // Populate the mock database with other user
  infoRepositoryTest.create(infoOtherUser);

  final requestTest = RequestTest.mock(infoTest);
  requestRepositoryTest.create(requestTest);
  return [infoTest, infoOtherUser, requestTest];
}