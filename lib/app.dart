import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'pages/contactus_page.dart';
import 'pages/donate_page.dart';
import 'pages/history_page.dart';
import 'pages/home_page.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      const Header(),
      Router(routes: [
        Route(path: '/', title: 'Streams International Foundation', builder: (context, state) => const HomePage()),
        Route(path: '/history', title: 'History', builder: (context, state) => const HistoryPage()),
        Route(path: '/contactus', title: 'Contact us', builder: (context, state) => const ContactUsPage()),
        Route(path: '/donate', title: 'Donate', builder: (context, state) => const DonatePage()),
      ]),
      const Footer(),
    ]);
  }
}