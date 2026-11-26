import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Partners extends StatelessComponent {
  const Partners({super.key});

  // Edit this list: file name + partner name (used as alt text)
  static const _logos = [
    ('columbia.webp', 'Columbia Presbyterian Church'),
    ('Impact Logo.svg', 'Impact'),
    ('Tyrannus Logo.svg', 'Tyrannus'),
    ('Ushers SLW.svg', 'The Ushers'),
    ('Weekend Training SLW.svg', 'Weekend Training'),
    ('Youth SLW.svg', 'Youth'),
  ];

  static const _next =
      "var t=document.getElementById('partners-track');"
      "if(t._busy)return;t._busy=true;"
      "var w=t.firstElementChild.offsetWidth;"
      "t.scrollBy({left:w,behavior:'smooth'});"
      "setTimeout(function(){"
      "t.appendChild(t.firstElementChild);"
      "t.scrollLeft=0;t._busy=false;},500);";

  static const _prev =
      "var t=document.getElementById('partners-track');"
      "if(t._busy)return;t._busy=true;"
      "var w=t.firstElementChild.offsetWidth;"
      "t.insertBefore(t.lastElementChild,t.firstElementChild);"
      "t.scrollLeft=w;"
      "t.scrollBy({left:-w,behavior:'smooth'});"
      "setTimeout(function(){t._busy=false;},500);";

  @override
  Component build(BuildContext context) {
    return section(classes: 'partners', [
      h2([Component.text('OUR PARTNERS')]),
      div(id: 'partners-track', classes: 'partners-track', [
        for (final logo in _logos)
          div(classes: 'partner-item', [
            img(src: 'images/partners/${logo.$1}', alt: logo.$2),
          ]),
      ]),
      div(classes: 'partners-arrows', [
        button(
          classes: 'partners-arrow',
          attributes: {'type': 'button', 'aria-label': 'Previous', 'onclick': _prev},
          [Component.text('←')],
        ),
        button(
          classes: 'partners-arrow',
          attributes: {'type': 'button', 'aria-label': 'Next', 'onclick': _next},
          [Component.text('→')],
        ),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.partners').styles(raw: {
      'padding': '40px 40px 60px',
      'background': '#f7fdfd',
      'text-align': 'center',
    }),
    css('.partners h2').styles(raw: {
      'margin': '0 0 40px',
      'font-size': '44px',
      'letter-spacing': '1px',
      'color': '#1d4d4f',
    }),
    css('.partners-track').styles(raw: {
      'display': 'flex',
      'overflow-x': 'auto',
      'scrollbar-width': 'none',
      'max-width': '1200px',
      'margin': '0 auto',
    }),
    css('.partners-track::-webkit-scrollbar').styles(raw: {'display': 'none'}),
    css('.partner-item').styles(raw: {
      'flex': '0 0 25%', // 4 logos visible; use 33.333% for 3
      'box-sizing': 'border-box',
      'padding': '0 20px',
      'display': 'flex',
      'align-items': 'center',
      'justify-content': 'center',
      'height': '180px',
      'scroll-snap-align': 'start',
    }),
    css('.partner-item img').styles(raw: {
      'max-width': '100%',
      'max-height': '110px',
      'object-fit': 'contain',
    }),
    css('.partners-arrows').styles(raw: {
      'display': 'flex',
      'justify-content': 'center',
      'gap': '20px',
      'margin-top': '30px',
    }),
    css('.partners-arrow').styles(raw: {
      'width': '60px',
      'height': '60px',
      'border': '0',
      'border-radius': '50%',
      'background': '#b9b573',
      'color': 'white',
      'font-size': '28px',
      'cursor': 'pointer',
    }),
  ];
}