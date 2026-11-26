import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      h3([Component.text('Streams International Foundation')]),
       p([
          Component.text('P. O. Box 131  |  Scandia, MN 55073  |  '),
          a(href: 'mailto:info@streamsinternational.org', [
          Component.text('info@streamsinternational.org'),
          ]),
        ]),
    ]);
    
  }
  static const _wave =
      "url(\"data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1440 100' preserveAspectRatio='none'%3E%3Cpath d='M0,45 C450,100 950,-20 1440,40 L1440,0 L0,0 Z' fill='%23f7fdfd'/%3E%3C/svg%3E\")";


  @css
  static List<StyleRule> get styles => [
    css('.site-footer').styles(raw: {
      'position': 'relative',
      'padding': '140px 20px 50px',
      'text-align': 'center',
      'color': 'white',
      'background': '#2a8c78',
    }),
    css('.site-footer::before').styles(raw: {
      'content': '""',
      'position': 'absolute',
      'top': '-1px',
      'left': '0',
      'width': '100%',
      'height': '90px',
      'background': '$_wave center / 100% 100% no-repeat',
    }),
    css('.site-footer h3').styles(raw: {'margin': '0 0 12px', 'font-size': '26px'}),
    css('.site-footer p').styles(raw: {'margin': '0', 'font-size': '13px'}),
    css('.site-footer a').styles(raw: {'color': 'white', 'text-decoration': 'none'}),
  ];
}