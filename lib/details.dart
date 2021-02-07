import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'videoClass.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              VideoClass(
                videoURL: 'https://www.youtube.com/watch?v=bJh2lr8o_CI',
                title: 'Demo pitch ',
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 18),
                child: Text(
                  'Winc',
                  style: theme.textTheme.headline1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.local_drink,
                            color: Colors.indigo[700],
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Drink',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '42 days left',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.person_pin_circle,
                              color: Colors.indigo[700]),
                          SizedBox(width: 5),
                          Text(
                            'NYC,NY',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  '"Winc is a data-driven winery that uses real-time customer feedback to make culturally relevant wines at speed & scale"',
                  style: theme.textTheme.headline5,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: <Widget>[
                    Text(
                      '\$357,000',
                      style: theme.textTheme.headline4,
                    ),
                    Text(
                      'raised',
                      style: theme.textTheme.headline4,
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '\$500,000',
                      style: theme.textTheme.headline4,
                    ),
                    Text(
                      'round size',
                      style: theme.textTheme.headline4,
                    )
                  ],
                )
              ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Fundraise Highlights',
                    style: theme.textTheme.headline3),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FundraiseCard(
                      theme: theme,
                      header: 'Total',
                      subheader: '   Investor   ',
                      data: '150'),
                  FundraiseCard(
                      theme: theme,
                      header: 'Raise',
                      subheader: 'Description',
                      data: 'Series C')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FundraiseCard(
                      theme: theme,
                      header: 'Minimum',
                      subheader: 'Investment',
                      data: '10'),
                  FundraiseCard(
                      theme: theme,
                      header: ' Pre-Money',
                      subheader: 'Valuation',
                      data: '\$3,000')
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Company Highlights',
                    style: theme.textTheme.headline3),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Amet ut eu quis eu minim aliqua ad ea deserunt exercitation tempor anim. Commodo ipsum ad ea excepteur cillum. Cillum ipsum laboris ex id sit irure amet amet adipisicing deserunt eiusmod eu ex.',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Amet ut eu quis eu minim aliqua ad ea deserunt exercitation tempor anim. Commodo ipsum ad ea excepteur cillum. Cillum ipsum laboris ex id sit irure amet amet adipisicing deserunt eiusmod eu ex.',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Amet ut eu quis eu minim aliqua ad ea deserunt exercitation tempor anim. Commodo ipsum ad ea excepteur cillum. Cillum ipsum laboris ex id sit irure amet amet adipisicing deserunt eiusmod eu ex.',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Team Story', style: theme.textTheme.headline3),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                      'Sunt veniam amet dolore qui adipisicing veniam qui ipsum Lorem proident aliquip elit. Labore irure enim ea occaecat non laborum ex deserunt veniam cillum tempor. Ullamco dolore ut velit nulla. Eu elit sit elit fugiat eiusmod pariatur tempor et sit dolor. Duis incididunt sint reprehenderit ea in elit culpa reprehenderit duis et duis. Nisi incididunt enim aliquip aute dolore pariatur Lorem irure anim consequat sint anim mollit occaecat. Eu aute consequat ea irure ipsum tempor incididunt ullamco.Enim duis sunt dolore aute sunt ut labore incididunt nulla exercitation. Officia sint id ad laboris. Consequat eu esse nostrud amet amet consectetur aliqua ullamco eiusmod officia pariatur. Ullamco eu adipisicing esse quis. Pariatur exercitation Lorem elit et irure labore reprehenderit quis eiusmod minim velit. Pariatur do non aliquip ex anim.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text('Founders', style: theme.textTheme.headline3),
                    SizedBox(width: 30),
                    Text('Learn More', style: theme.textTheme.headline4)
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  buildFounderRow(name: 'Helal Chowdary',position: 'CEO, CO-FOUNDER'),
                  buildFounderRow(name: 'Hero Chowdary',position: 'COO, CO-FOUNDER'),
                  buildFounderRow(name: 'Heroine Chowdary',position: 'CTO, CO-FOUNDER'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child:
                    Text('Use  of Proceeds', style: theme.textTheme.headline3),
              ),
              Card(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('If Minimum Amount is Raised'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(children: <Widget>[
                              Icon(Icons.local_drink),
                              Icon(Icons.tv)
                            ]),
                            Column(
                                children: <Widget>[Text('40%'), Text('60%')]),
                            Column(
                              children: <Widget>[
                                Text('Inventory'),
                                Text('Marketing')
                              ],
                            ),
                            CircularPercentIndicator(
                              radius: 120.0,
                              lineWidth: 13.0,
                              animation: true,
                              percent: 0.7,
                              center: new Text(
                                "70.0%",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              // footer: new Text(
                              //   "Sales this week",
                              //   style: new TextStyle(
                              //       fontWeight: FontWeight.bold, fontSize: 17.0),
                              // ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.cyan[200],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Prior Rounds', style: theme.textTheme.headline3),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'The graph below illustrated the valuation cap of Winc\'s pror rounds by year'),
                    )
                  ],
                ),
              ),
              Center(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Invest'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan)),
                ),
              ),
              Center(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Contact Founder'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildFounderRow({String name, String position}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.black,
            child: ClipOval(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("lib/images/person.png"),
              ),
            ),
          ),
          SizedBox(width: 30),
          Column(
            children: <Widget>[Text(name), Text(position)],
          ),
        ],
      ),
    );
  }
}

class FundraiseCard extends StatelessWidget {
  const FundraiseCard(
      {Key key,
      @required this.theme,
      @required this.header,
      @required this.subheader,
      @required this.data})
      : super(key: key);

  final ThemeData theme;
  final String header;
  final String subheader;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(children: [
          Text(header, style: theme.textTheme.headline4),
          Text(subheader, style: theme.textTheme.headline4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(data, style: theme.textTheme.headline3),
          )
        ]),
      ),
    );
  }
}
