import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:web_trail/components/form.dart';


class HistoryPage extends StatelessComponent {
  const HistoryPage({super.key});

  @override
  Component build (BuildContext context){
    return div([
      section(classes: 'history-title',[
        div(classes: 'history-title-bg',[]),
        h1([Component.text('History of Streams of '),
        br(),
        Component.text('Living Water')
        ]),
      ]),
      section(classes: 'history-intro',[
        p([
          Component.text('Streams of Living Water began in 1984 in Sudan working mainly through evangelistic '
            'campaigns in refugee camps for the displaced people who fled from the war zone in the '
            'south and west of Sudan.',
          ),
        ])
      ]),

      section(classes: 'early-years', [
        div(classes: 'early-years-box', [
          h2([Component.text('The Early Years')]),
          p([Component.text('From 2000 to 2011, Streams operated The Good Shepherd Clinics in both northern and southern Sudan, offering compassionate care in conflict zones.')]),
          p([Component.text('In 2004, Streams launched the Egyptian movement to inspire Egyptian believers to reach their unreached Arab neighbors—birthing the annual Streams Conferences.')]),
          p([Component.text('Then in 2008, the first Tyrannus Missionary School opened in Sudan, training and sending Sudanese missionaries to the forgotten corners of Sudan, North Africa, and the Middle East.')]),
        ]),
        div(classes: 'early-years-img', [
          img(src: './images/early-years.jpg', alt: 'The early years'),
        ]),
      ]),

      section(classes: 'the-present', [
        div(classes: 'the-present-box', [
          h2([Component.text('The Present')]),
          p([Component.text('In 2019, Tyrannus expanded rapidly—opening schools in South Sudan, Chad, and other nations. By 2020, a second floor was added in Juba to host students from both Sudans.')]),
          p([Component.text('In 2021, the movement grew further: a school launched in Senegal to train nearby nations, Zoom-based schools began in North Africa, and new programs reached women in South Sudan, key leaders in the Middle East, and refugees in Central Asia.')]),
          p([Component.text('That same year, Basic Schools were reintroduced in remote South Sudan, and Egypt’s Impact School doubled, adding a youth track for teens.')]),
          p([Component.text('Tyrannus continues to grow as church leaders across regions embrace the vision and open doors to the unreached.')]),
        ]),
        div(classes: 'the-present-img', [
          img(src: './images/the-present.jpg', alt: 'The Present'),
        ]),
      ]),

      section(classes: 'what-next',[
        h2([Component.text('What Is Next?')]),
        p([Component.text('Streams hopes to start schools in the rest of Africa, and now praying about Asia and Europe (to reach the millions of refugees there) and any other country in Africa or the Middle East where doors are opened.')]),
        img(src: './images/what-next.jpg', alt: 'What Is Next'),
      ]),
      
      const Form(),
      
    ]);
  }
  
  @css
  static List<StyleRule> get styles => [
    css('.history-title').styles(raw: {
      'position': 'relative',
      'min-height': '360px',
      'display': 'flex',
      'align-items': 'center',
      'justify-content': 'center',
      'overflow': 'hidden',
      'padding': '60px 20px',
    }),
    css('.history-title-bg').styles(raw: {
      'position': 'absolute',
      'inset': '0',
      'background': "url('./images/title-bg.jpg') center / cover no-repeat",
      'filter': 'blur(8px)',
      'transform': 'scale(1.1)', 
    }),

    css('.history-title h1').styles(raw: {
      'position': 'relative',
      'z-index': '1',
      'margin': '0',
      'font-size': '60px',
      'text-align': 'center',
      'color': '#f7fdfd',
      'text-shadow': '0 2px 12px rgba(0,0,0,0.35)',
    }),

    css('.history-intro').styles(raw: {
      'padding': '60px 40px',
      'text-align': 'center',
      'background': '#bfe0e8',
    }),

    css('.history-intro p').styles(raw: {
      'max-width': '900px',
      'margin': '0 auto',
      'font-size': '34px',
      'font-weight': '700',
      'line-height': '1.3',
      'color': '#2a8c78',
    }),
     css('.early-years').styles(raw: {
      'display': 'flex',
      'align-items': 'flex-start',
      'max-width': '1200px',
      'margin': '0 auto',
      'padding': '60px 40px 40px',
      'background': '#f7fdfd',
    }),
    css('.early-years-box').styles(raw: {
      'position': 'relative',
      'z-index': '1',
      'flex': '0 0 340px',
      'margin-right': '-70px', // overlaps the image
      'padding': '28px 30px',
      'color': 'white',
      'background': '#a59a3b',
    }),
    css('.early-years-box h2').styles(raw: {'margin': '0 0 16px', 'font-size': '34px'}),
    css('.early-years-box p').styles(raw: {'margin': '0 0 14px', 'font-size': '15px', 'line-height': '1.5'}),
    css('.early-years-img').styles(raw: {'flex': '1', 'margin-top': '30px'}),
    css('.early-years-img img').styles(raw: {'display': 'block', 'width': '100%', 'height': 'auto'}),

    css('.the-present').styles(raw: {
      'display': 'flex',
      'align-items': 'flex-start',
      'max-width': '1200px',
      'margin': '0 auto',
      'padding': '60px 40px 40px',
      'background': '#f7fdfd',
    }),
    css('.the-present-box').styles(raw: {
      'position': 'relative',
      'z-index': '1',
      'flex': '0 0 340px',
      'margin-right': '-70px', 
      'padding': '28px 30px',
      'color': 'white',
      'background': '#a59a3b',
    }),
    css('.the-present-box h2').styles(raw: {'margin': '0 0 16px', 'font-size': '34px'}),
    css('.the-present-box p').styles(raw: {'margin': '0 0 14px', 'font-size': '15px', 'line-height': '1.5'}),
    css('.the-present-img').styles(raw: {'flex': '1', 'margin-top': '30px'}),
    css('.the-present-img img').styles(raw: {'display': 'block', 'width': '100%', 'height': 'auto'}),

    css('.what-next').styles(raw: {
      'padding': '50px 20px 80px',
      'text-align': 'center',
      'background': '#f7fdfd',
    }),
    css('.what-next h2').styles(raw: {
      'margin': '0 0 24px',
       'font-size': '48px',
        'color': '#a59a3b',
        }),

    css('.what-next p').styles(raw: {
      'max-width': '900px',
      'margin': '0 auto 50px',
      'font-size': '30px',
      'font-weight': '700',
      'line-height': '1.4',
      'color': '#a59a3b',
    }),
    css('.what-next img').styles(raw: {
      'display': 'block',
      'width': '130%',
      'max-width': '720px',
      'height': 'auto',
      'margin': '0 auto',
    }),

  ];
}
