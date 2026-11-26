import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:web_trail/components/partners.dart';
import '../components/form.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      // Section 1
      section(classes: 'challenge', [
        div(classes: 'challenge-text', [
          h1([Component.text('THE CHALLENGE')]),
          p([Component.text('Two billion people in the world today still know nothing about the gospel of Jesus Christ.')]),
        ]),
        div(classes: 'challenge-media', [
          iframe(
            src: 'https://www.youtube.com/embed/cj4C93xVfjs',
            
            attributes: {
              'title': 'The challenge',
              'style': 'display:block;width:100%;aspect-ratio:16/9;height:auto;border:0;border-radius:12px;',
              'allow': 'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture',
              'allowfullscreen': '',
            },
            [],
          ),
        ]),
      ]),

      // Section 2
      section(classes: 'hero-banner', [
        div(classes: 'hero-card', [
          h2([
            Component.text('Did you know that in this part of the world, there’s just '),
            span(classes: 'highlight', [Component.text('1')]),
            Component.text(' Christian missionary for every '),
            span(classes: 'highlight', [Component.text('400,000')]),
            Component.text(' people?'),
          ]),
          a(classes: 'btn', href: '/history', [Component.text('Learn More')]),
        ]),
      ]),

      const Partners(),

      // Section 3
      section(classes: 'text-section', [
        h2([Component.text('Our Mission')]),
        p([Component.text('We must work the works of him who sent me while it is day; night is coming, when no one can work.(John 9:4).')]),
      ]),

      const Form(title: 'Subscribe to the Streams Foundation newsletter.',
      buttonText: 'Subscribe')
    ]);
  }
  static const _waveTop =
      "url(\"data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1440 100' preserveAspectRatio='none'%3E%3Cpath d='M0,0 L1440,0 L1440,25 C1000,110 500,-10 0,60 Z' fill='%23f7fdfd'/%3E%3C/svg%3E\")";
  static const _waveBottom =
      "url(\"data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1440 100' preserveAspectRatio='none'%3E%3Cpath d='M0,100 L0,35 C400,110 950,-20 1440,45 L1440,100 Z' fill='%23f7fdfd'/%3E%3Cpath d='M0,35 C400,110 950,-20 1440,45' fill='none' stroke='%232a8c78' stroke-width='3'/%3E%3C/svg%3E\")";
   
    @css
  static List<StyleRule> get styles => [
    // Section 1
    css('.challenge').styles(raw: {
      'display': 'flex',
      'align-items': 'center',
      'gap': '48px',
      'max-width': '1200px',
      'margin': '0 auto',
      'padding': '60px max(40px, calc((100% - 1300px) / 2)) 140px',
    }),
    css('.challenge-text, .challenge-media').styles(raw: {'flex': '1'}),
    css('.challenge-media').styles(raw: {'flex': '1'}),
    css('.challenge-text h1').styles(raw: {
      'margin': '0 0 20px',
      'font-size': '52px',
      'letter-spacing': '2px',
      'color': '#0b3d5c',
    }),
    css('.challenge-text p').styles(raw: {
      'margin': '0',
      'font-size': '24px',
      'font-weight': '600',
      'line-height': '1.5',
      'color': '#a59a3b',
    }),
    css('.challenge-media img').styles(raw: {
      'width': '100%',
      'aspect-ratio': '16 / 9',
      'border': '0',
      'object-radius': '12px',
      'display': 'block',
    }),

    // Section 2
    css('.hero-banner').styles(raw: {
      'position': 'relative',
      'min-height': '520px',
      'display': 'flex',
      'align-items': 'center',
      'justify-content': 'center',
      'padding': '120px 20px',
      'background': "url('./images/giorgio-parravicini-12IHVEFRacQ-unsplash.jpg') center / cover no-repeat",
    }),
    css('.hero-banner::before').styles(raw: {
      'content': '""',
      'position': 'absolute',
      'top': '-1px',
      'left': '0',
      'width': '100%',
      'height': '90px',
      'background': '$_waveTop center / 100% 100% no-repeat',
    }),
    css('.hero-banner::after').styles(raw: {
      'content': '""',
      'position': 'absolute',
      'bottom': '-1px',
      'left': '0',
      'width': '100%',
      'height': '90px',
      'background': '$_waveBottom center / 100% 100% no-repeat',
    }),
    css('.hero-card').styles(raw: {
      'position': 'relative',
      'z-index': '1',
      'max-width': '600px',
      'padding': '36px 40px',
      'text-align': 'center',
      'background': 'rgba(247,253,253,0.92)',
      'border-radius': '32px',
    }),
    css('.hero-card h2').styles(raw: {
      'margin': '0 0 28px',
      'font-size': '32px',
      'line-height': '1.4',
      'color': '#0b3d5c',
    }),
    css('.highlight').styles(raw: {
      'font-style': 'italic',
      'text-decoration': 'underline',
      'text-decoration-color': '#9fd3e0',
    }),
    css('.btn').styles(raw: {
      'display': 'inline-block',
      'padding': '12px 24px',
      'font-weight': '700',
      'color': '#1d4d4f',
      'background': 'white',
      'border-radius': '8px',
      'box-shadow': '0 2px 8px rgba(0,0,0,0.12)',
    }),

    css('.text-section').styles(raw: {
      'padding': '70px 40px 30px',
      'text-align': 'center',
      'background': '#f7fdfd',
    }),
    css('.text-section h2').styles(raw: {'margin': '0 0 12px', 'font-size': '36px', 'color': '#0b3d5c'}),
    css('.text-section p').styles(raw: {
      'max-width': '800px',
      'margin': '0 auto',
      'font-size': '20px',
      'line-height': '1.7',
    }),

    // Section 3
    css('.text-section').styles(raw: {
      'max-width': '800px',
      'margin': '0 auto',
      'padding': '70px 40px',
      'text-align': 'center',
    }),

    css('.newsletter').styles(raw: {
      'padding': '40px 20px 140px',
      'text-align': 'center',
      'background': '#f7fdfd',
    }),

    css('.newsletter h2').styles(raw: {'margin': '0 0 10px', 'font-size': '30px', 'color': '#a59a3b'}),
    css('.newsletter p').styles(raw: {
      'max-width': '560px',
      'margin': '0 auto 24px',
      'font-size': '13px',
      'color': '#a59a3b',
    }),

    css('.newsletter-form').styles(raw: {
      'display': 'flex',
      'flex-wrap': 'wrap',
      'justify-content': 'center',
      'gap': '8px',
    }),
    css('.newsletter-form input').styles(raw: {
      'width': '190px',
      'padding': '12px 14px',
      'border': '1px solid #e3e8e8',
      'border-radius': '4px',
      'background': 'white',
    }),
    css('.newsletter-form button').styles(raw: {
      'padding': '12px 22px',
      'font-weight': '700',
      'color': 'white',
      'background': '#a59a3b',
      'border': '0',
      'border-radius': '8px',
      'cursor': 'pointer',
    }),
  ];
}