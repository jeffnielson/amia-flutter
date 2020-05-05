import 'package:flutter/material.dart';
import 'package:amia_flutter/themes/theme.dart';

enum HasSymptom { yes, no }
HasSymptom hasCough = HasSymptom.yes;
HasSymptom hasSneeze = HasSymptom.no;

class SymptomRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Check-in'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context)),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Column(children: [
                    Text('Please enter your symptoms', style: AppTypography.h3),
                    const SizedBox(height: 1.1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.1),
                      child: Text(
                        "Yesterday, you had cough, short of breath, and body ache",
                        style: AppTypography.bodyRegular1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 1.1),
                    Text('  '),
                  ]),
                  Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      children: [
                        //<Widget>[...Symptom.values.map((s) => _buildSymptom(context, model, s)).toList()],

                        Row(
                          children: <Widget>[
                            Radio(
                              
                              value: HasSymptom.yes,
                              groupValue: hasCough,
                              onChanged: (val) {
                                print("Button: $val");
                                hasCough = toggle(hasCough);
                              },
                            ),
                            Text('Cough'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                              value: HasSymptom.yes,
                              groupValue: hasSneeze,
                              onChanged: (val) {
                                print("Button: $val");
                                hasSneeze = toggle(hasSneeze);
                              },
                              
                            ),
                            Text('Sneeze'),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
          ],
        ));
  }
}

HasSymptom toggle(HasSymptom x) {
  if (x == HasSymptom.yes)
    x = HasSymptom.no;
  else
    x = HasSymptom.yes;
  print("changing to $x");
  return x;
}
