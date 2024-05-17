import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:oil_palm_factories/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("full app test", (tester) async {
      app.main();
      await tester.pumpAndSettle();

      final phoneNumberFormField = find.byType(TextField);

      final getActivationCodeButton = find.byType(ElevatedButton);
      final checkTermsAndConditions = find.byType(Checkbox);

      await tester.enterText(phoneNumberFormField, "1114411863");
      await tester.pumpAndSettle();

      await tester.testTextInput.receiveAction(TextInputAction.done);

      await tester.tap(checkTermsAndConditions);
      await tester.pumpAndSettle();

      await tester.tap(getActivationCodeButton);
      await tester.pumpAndSettle();

      final otpFormField = find.byType(TextField);
      final activateButton = find.byType(ElevatedButton);

      await tester.enterText(otpFormField, "123456");
      await tester.pumpAndSettle();

      await tester.tap(activateButton);
      await tester.pumpAndSettle();

      final factoryButton1 = find.text("Factory 1").first;

      await tester.tap(factoryButton1);
      await tester.pumpAndSettle();

      final factoryButton2 = find.text("Factory 2").first;
      expect(factoryButton2, findsOneWidget);

      await tester.tap(factoryButton2);
      await tester.pumpAndSettle();

      final engineerList = find.byIcon(Icons.person);

      await tester.tap(engineerList);
      await tester.pumpAndSettle();

      await tester.tap(factoryButton1);
      await tester.pumpAndSettle();

      final add = find.byIcon(Icons.add);
      await tester.tap(add);
      await tester.pumpAndSettle();

      final ownerName = find.byType(TextField).first;
      await tester.enterText(ownerName, "Joeying");
      await tester.pumpAndSettle();

      final ownerPhone = find.byType(TextField).last;
      await tester.enterText(ownerPhone, "1114411863");
      await tester.pumpAndSettle();

      await tester.testTextInput.receiveAction(TextInputAction.done);

      final submitButton = find.byType(ElevatedButton);
      await tester.tap(submitButton);
      await tester.pumpAndSettle();

      final editList = find.byIcon(Icons.settings).last;
      await tester.tap(editList);
      await tester.pumpAndSettle();

      await tester.tap(factoryButton1);
      await tester.pumpAndSettle();

      await tester.tap(factoryButton2);
      await tester.pumpAndSettle();
    });
  });
}
