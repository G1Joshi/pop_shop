import 'package:flutter_test/flutter_test.dart';
import 'package:pop_shop/main.dart';

void main() {
  testWidgets('Shop test', (WidgetTester tester) async {
    await tester.pumpWidget(PopShop());

    expect(find.text('Pop Shop'), findsOneWidget);
  });
}
