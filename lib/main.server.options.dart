// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:web_trail/components/footer.dart' as _footer;
import 'package:web_trail/components/form.dart' as _form;
import 'package:web_trail/components/header.dart' as _header;
import 'package:web_trail/components/partners.dart' as _partners;
import 'package:web_trail/constants/theme.dart' as _theme;
import 'package:web_trail/pages/contactus_page.dart' as _contactus_page;
import 'package:web_trail/pages/history_page.dart' as _history_page;
import 'package:web_trail/pages/home_page.dart' as _home_page;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  styles: () => [
    ..._theme.styles,
    ..._footer.Footer.styles,
    ..._form.Form.styles,
    ..._header.Header.styles,
    ..._partners.Partners.styles,
    ..._contactus_page.ContactUsPage.styles,
    ..._history_page.HistoryPage.styles,
    ..._home_page.HomePage.styles,
  ],
);
