import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactUsPage extends StatelessComponent {
  const ContactUsPage({super.key});

  // A label (with optional "(required)") on top of a control
  Component _field(String id, String text, Component control, {bool required = false, String? classes}) {
    return div(classes: 'contact-field ${classes ?? ''}', [
      label(attributes: {'for': id}, [
        Component.text(text),
        if (required) span(classes: 'req', [Component.text(' (required)')]),
      ]),
      control,
    ]);
  }

  @override
  Component build(BuildContext context) {
    return section(classes: 'contact', [
      // Left: tall photo
      div(classes: 'contact-img', [
        img(src: '/images/contact-us.jpg', alt: 'Contact us'),
      ]),

      // Right: form
      form(classes: 'contact-form', action: '#', method: FormMethod.post, [
        div(classes: 'contact-row', [
          _field('first_name', 'First Name',
              input(type: InputType.text, id: 'first_name', name: 'first_name', attributes: {'required': ''}),
              required: true),
          _field('last_name', 'Last Name',
              input(type: InputType.text, id: 'last_name', name: 'last_name', attributes: {'required': ''}),
              required: true),
        ]),
        _field('email', 'Email',
            input(type: InputType.email, id: 'email', name: 'email', attributes: {'required': ''}),
            required: true),
        div(classes: 'contact-check', [
          input(type: InputType.checkbox, id: 'newsletter', name: 'newsletter'),
          label(attributes: {'for': 'newsletter'}, [Component.text('Sign up for news and updates')]),
        ]),
        _field('phone', 'Phone',
            input(type: InputType.text, id: 'phone', name: 'phone')),
        _field('heard', 'How did you hear about us?',
            select(id: 'heard', name: 'heard', [
              option(attributes: {'value': ''}, [Component.text('Select an option')]),
              option(attributes: {'value': 'friend'}, [Component.text('A friend')]),
              option(attributes: {'value': 'church'}, [Component.text('Church')]),
              option(attributes: {'value': 'social'}, [Component.text('Social media')]),
              option(attributes: {'value': 'search'}, [Component.text('Web search')]),
              option(attributes: {'value': 'other'}, [Component.text('Other')]),
            ])),
        _field('message', 'Message',
            textarea(id: 'message', name: 'message', attributes: {'rows': '4', 'required': ''}, []),
            required: true),
        button(type: ButtonType.submit, classes: 'contact-submit', [Component.text('Submit')]),
      ]),
    ]);
  }

  static const _chevron =
    "url(\"data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%231d4d4f' stroke-width='2.5' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'/%3E%3C/svg%3E\")";
  @css
  static List<StyleRule> get styles => [
    css('.contact').styles(raw: {
      'display': 'grid',
      'grid-template-columns': '1fr 1.7fr',
      'gap': '50px',
      'align-items': 'stretch',
      'max-width': '1200px',
      'margin': '0 auto',
      'padding': '60px 40px 90px',
      'background': '#f7fdfd',
    }),

    // Photo fills the full height of the form
    css('.contact-img img').styles(raw: {
      'display': 'block',
      'width': '100%',
      'height': '100%',
      'min-height': '500px',
      'object-fit': 'cover',
    }),

    // Form
    css('.contact-form').styles(raw: {'display': 'flex', 'flex-direction': 'column', 'gap': '22px'}),
    css('.contact-row').styles(raw: {'display': 'flex', 'gap': '12px'}),
    css('.contact-row .contact-field').styles(raw: {'flex': '1'}),
    css('.contact-field').styles(raw: {'display': 'flex', 'flex-direction': 'column', 'gap': '6px'}),
    css('.contact-field label, .contact-check label').styles(raw: {
      'font-size': '15px',
      'color': '#1d4d4f',
    }),
    css('.req').styles(raw: {'font-size': '13px', 'color': '#7a9a9c'}),

    css('.contact-field input, .contact-field select, .contact-field textarea').styles(raw: {
      'width': '100%',
      'box-sizing': 'border-box',
      'padding': '12px 18px',
      'font-family': 'inherit',
      'font-size': '16px',
      'color': '#1d4d4f',
      'background-color': '#f1eecf',
      'border': '1.5px solid#a59a3b',
      'border-radius': '10px',
      'outline': 'none',
    }),
    css('.contact-field select').styles(raw: {
      'appearance': 'none',
      'background-image': _chevron,
      'background-repeat': 'no-repeat',
      'background-position': 'right 16px center',
      'padding-right': '44px',
    }),
    css('.contact-field textarea').styles(raw: {'min-height': '110px', 'resize': 'vertical'}),
    css('.contact-field input:focus, .contact-field select:focus, .contact-field textarea:focus').styles(raw: {
      'border-color': '#2a8c78',
    }),

    // Round checkbox
    css('.contact-check').styles(raw: {'display': 'flex', 'align-items': 'center', 'gap': '10px'}),
    css('.contact-check input').styles(raw: {
      'appearance': 'none',
      'width': '22px',
      'height': '22px',
      'margin': '0',
      'border': '1.5px solid #a59a3b',
      'border-radius': '50%',
      'background': '#f1eecf',
      'cursor': 'pointer',
    }),
    css('.contact-check input:checked').styles(raw: {'background': '#2a8c78'}),

    css('.contact-submit').styles(raw: {
      'align-self': 'flex-start',
      'padding': '12px 28px',
      'font-size': '18px',
      'font-weight': '700',
      'color': 'white',
      'background': '#a59a3b',
      'border': '0',
      'border-radius': '10px',
      'cursor': 'pointer',
    }),
  ];
}