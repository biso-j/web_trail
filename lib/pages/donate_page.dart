import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class DonatePage extends StatelessComponent {
  const DonatePage({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'page', [
      h1([Component.text('Donate')]),
      p([Component.text('Thank you for supporting our work.')]),
    ]);
  }
}