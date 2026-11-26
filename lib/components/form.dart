import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Form extends StatelessComponent {
  const Form({
    this.title = 'Sign up with your email address to receive news and '
    'updates from the Streams International Foundation',
    this.buttonText = 'Sign Up',
    super.key,
  });

  final String title;
  final String buttonText;

  @override
  Component build(BuildContext context) {
    return section(classes: 'signup', [
      h2([Component.text(title)]),
      form(classes: 'signup-form', action: '#', method: FormMethod.post, [
        input(type: InputType.text, name: 'first_name', attributes: {'placeholder': 'First Name', 'required': ''}),
        input(type: InputType.text, name: 'last_name', attributes: {'placeholder': 'Last Name', 'required': ''}),
        input(type: InputType.email, name: 'email', attributes: {'placeholder': 'Email Address', 'required': ''}),
        button(type: ButtonType.submit, [Component.text(buttonText)]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.signup').styles(raw: {
      'padding': '50px 20px 120px',
      'text-align': 'center',
      'background': '#f7fdfd',
    }),
    css('.signup h2').styles(raw: {
      'max-width': '1000px',
      'margin': '0 auto 36px',
      'font-size': '34px',
      'line-height': '1.3',
      'color': '#a59a3b',
    }),
    css('.signup-form').styles(raw: {
      'display': 'flex',
      'flex-wrap': 'wrap',
      'justify-content': 'center',
      'gap': '12px',
    }),
    css('.signup-form input').styles(raw: {
      'width': '280px',
      'padding': '22px 24px',
      'border': '1px solid #e3e8e8',
      'border-radius': '4px',
      'background': 'white',
    }),
    css('.signup-form button').styles(raw: {
      'padding': '0 34px',
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