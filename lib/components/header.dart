import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return nav(classes: 'navbar', [
      a(classes: 'logo', href: '/', [img(src: '/images/slw_logo.svg')]),
      div(classes: 'nav-links', [
        a(href: '/', [Component.text('Home')]),
        div(classes: 'dropdown', [
          span([Component.text('About ▾')]),
          div(classes: 'dropdown-menu', [
            a(href: '/history', [Component.text('History')]),
            a(href: '/contactus', [Component.text('Contact us')]),
          ]),
        ]),
        a(classes: 'donate-btn', href: '/donate', [Component.text('DONATE')]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.navbar').styles(raw: {
      'position': 'sticky',
      'top': '0',
      'z-index': '10',
      'display': 'grid',
      'grid-template-columns': '1fr auto 1fr',
      'align-items': 'center',
      'padding': '8px 40px',
      'background': '#f7fdfd',
      'box-shadow': '0 6px 20px rgba(0,0,0,0.08)',
    }),
    css('.navbar .logo').styles(raw: {'justify-self': 'start', 'display': 'flex'}),
    css('.navbar .logo img').styles(raw: {'height': '36px','max-width': '100%', 'width': 'auto', 'display': 'block'}),
    css('.nav-links').styles(raw: {'display': 'flex', 'align-items': 'center', 'gap': '24px'}),
    css('.nav-links a, .dropdown > span').styles(raw: {
      'font-weight': '600',
      'font-size': '18px',
      'cursor': 'pointer',
    }),
    css('.dropdown').styles(raw: {'position': 'relative'}),
    css('.dropdown-menu').styles(raw: {
      'display': 'none',
      'position': 'absolute',
      'top': '100%',
      'left': '0',
      'min-width': '160px',
      'padding': '8px 0',
      'background': 'white',
      'border-radius': '8px',
      'box-shadow': '0 8px 24px rgba(0,0,0,0.15)',
    }),
    css('.dropdown:hover .dropdown-menu').styles(raw: {'display': 'block'}),
    css('.dropdown-menu a').styles(raw: {'display': 'block', 'padding': '10px 18px', 'font-size': '16px'}),
    css('.donate-btn').styles(raw: {
      'background': '#a59a3b',
      'color': 'white',
      'padding': '10px 22px',
      'border-radius': '8px',
      'font-size': '16px',
    }),
  ];
}