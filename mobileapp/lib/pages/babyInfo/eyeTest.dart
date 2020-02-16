/*import 'package:flutter/material.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';

class EyeTest extends StatefulWidget {
  @override
  _EyeTestState createState() => _EyeTestState();
}

class _EyeTestState extends State<EyeTest> {
  bool switchVal = false;
  bool lightCheck = false;
  bool faceCheck = false;
  bool turnCheck = false;
  bool theneyesCheck = false;
  bool lookingCheck = false;
  bool touchCheck = false;
  bool squintCheck = false;
  bool ringCheck = false;
  bool askCheck = false;
  bool talkCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eye Test'),
        actions: <Widget>[
          Switch(
              activeColor: Colors.red,
              value: switchVal,
              onChanged: (bool newValue) {
                setState(() {
                  switchVal = !switchVal;
                });
              }),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*Switch(
                  activeColor: Colors.red,
                  value: switchVal,
                  onChanged: (bool newValue) {
                    setState(() {
                      switchVal = !switchVal;
                    });
                  }),*/
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('From the First Month of Birth'),
              ),
              SizedBox(
                height: 0.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Does the baby look at light? '),

                  Checkbox(
                      activeColor: Colors.red,
                      value: lightCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          lightCheck = !lightCheck;
                        });
                      }),

                  /*Radio(
                      value: lightRadio,
                      activeColor: Colors.red,
                      onChanged: (bool newValue) {
                        setState(() {
                          lightRadio = !lightRadio;
                          print(lightRadio);
                        });
                      }*/
                  // onChanged: (bool val) {
                  //   setState(() {
                  //     lightRadio = !lightRadio;
                  //     print(lightRadio);
                  //   });
                  // },
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Does the baby look at your face? '),
                  Checkbox(
                      activeColor: Colors.red,
                      value: faceCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          faceCheck = !faceCheck;
                        });
                      }),
                ],
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('When two months'),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'When you turn your head from side to side, the child smile in response while looking at your face?',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: turnCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          turnCheck = !turnCheck;
                        });
                      }),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Then eyes? '),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: theneyesCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          theneyesCheck = !theneyesCheck;
                        });
                      }),
                ],
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('When six months'),
              ),
              Row(
                children: <Widget>[
                  Text('look?'),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: lookingCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          lookingCheck = !lookingCheck;
                        });
                      }),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Touch?'),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: touchCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          touchCheck = !touchCheck;
                        });
                      }),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Squint?'),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: squintCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          squintCheck = !squintCheck;
                        });
                      }),
                ],
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('When ten months'),
              ),
              Row(
                children: <Widget>[
                  Text('Ring?'),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: ringCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          ringCheck = !ringCheck;
                        });
                      }),
                ],
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('When ten months'),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'Ask?',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: askCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          askCheck = !askCheck;
                        });
                      }),
                ],
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'Talk?',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: talkCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          talkCheck = !talkCheck;
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: (){},
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:fluttertoast/fluttertoast.dart' as prefix0;
import 'package:mobileapp/services/babyService/eyeTestService.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class EyeTest extends StatefulWidget {
  @override
  _EyeTestState createState() => _EyeTestState();
}

class _EyeTestState extends State<EyeTest> {
  Future<Baby> baby = fetchBaby();
  bool switchVal = false;
  bool lightCheck = false;
  bool faceCheck = false;
  bool turnCheck = false;
  bool theneyesCheck = false;
  bool lookingCheck = false;
  bool touchCheck = false;
  bool squintCheck = false;
  bool ringCheck = false;
  bool askCheck = false;
  bool talkCheck = false;

  // String switchValS = "no";
  // String lightCheckS = "no";
  // String faceCheckS = "no";
  // String turnCheckS = "no";
  // String theneyesCheckS = "no";
  // String lookingCheckS = "no";
  // String touchCheckS = "no";
  // String squintCheckS = "no";
  // String ringCheckS = "no";
  // String askCheckS = "no";
  // String talkCheckS = "no";

  initState() {
    super.initState();
    baby.then((it) {
      if (it.faceCheck.toString() == "no" || it.faceCheck == null) {  //this gives the error
        faceCheck = false;
      } else {
        faceCheck = true;
      }
      if (it.lightCheck.toString() == "no" || it.lightCheck == null) {
        lightCheck = false;
      } else {
        lightCheck = true;
      }
      if (it.turnCheck.toString() == "no" || it.turnCheck == null) {
        turnCheck = false;
      } else {
        turnCheck = true;
      }
      if (it.theneyesCheck.toString() == "no" || it.theneyesCheck == null) {
        theneyesCheck = false;
      } else {
        theneyesCheck = true;
      }
      if (it.lookingCheck.toString() == "no" || it.lookingCheck == null) {
        lookingCheck = false;
      } else {
        lookingCheck = true;
      }
      if (it.touchCheck.toString() == "no" || it.touchCheck == null) {
        touchCheck = false;
      } else {
        touchCheck = true;
      }
      if (it.squintCheck.toString() == "no" || it.squintCheck == null) {
        squintCheck = false;
      } else {
        squintCheck = true;
      }
      if (it.ringCheck.toString() == "no" || it.ringCheck == null) {
        ringCheck = false;
      } else {
        ringCheck = true;
      }
      if (it.askCheck.toString() == "no" || it.askCheck == null) {
        askCheck = false;
      } else {
        askCheck = true;
      }
      if (it.talkCheck.toString() == "no" || it.talkCheck == null) {
        talkCheck = false;
      } else {
        talkCheck = true;
      }
    });

    // print(faceCheck);
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    try {
      return EasyLocalizationProvider(
        data: data,
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).tr('eyetest')),
            actions: <Widget>[
              Switch(
                  activeColor: Colors.red,
                  value: switchVal,
                  onChanged: (bool newValue) {
                    setState(() {
                      switchVal = !switchVal;
                    });
                  }),
            ],
          ),
          body: SingleChildScrollView(
            child: FutureBuilder<Baby>(
              future: fetchBaby(),
              builder: (context, snapshot) {
                logger.i('light check');
                //  logger.i(snapshot.data.ringCheck);

                // if (snapshot.data.lightCheck == "no" ||
                //     snapshot.data.lightCheck == null) {
                //   lightCheck = false;
                //   logger.e('***');
                // } else {
                //   lightCheck = true;
                // }
                // if (snapshot.data.faceCheck == "no") {
                //   faceCheck = false;
                // } else {
                //   faceCheck = true;
                // }
                // if (snapshot.data.turnCheck == "no") {
                //   turnCheck = false;
                // } else {
                //   turnCheck = true;
                // }
                // if (snapshot.data.theneyesCheck == "no") {
                //   theneyesCheck = false;
                // } else {
                //   theneyesCheck = true;
                // }
                // if (snapshot.data.lookingCheck == "no") {
                //   lookingCheck = false;
                // } else {
                //   lookingCheck = true;
                // }
                // if (snapshot.data.touchCheck == "no") {
                //   touchCheck = false;
                // } else {
                //   touchCheck = true;
                // }
                // if (snapshot.data.squintCheck == "no") {
                //   squintCheck = false;
                // } else {
                //   squintCheck = true;
                // }
                // if (snapshot.data.ringCheck == "no") {
                //   lookingCheck = false;
                // } else {
                //   lookingCheck = true;
                // }
                // if (snapshot.data.lookingCheck == "no") {
                //   ringCheck = false;
                // } else {
                //   ringCheck = true;
                // }
                // if (snapshot.data.askCheck == "no") {
                //   askCheck = false;
                // } else {
                //   askCheck = true;
                // }
                // if (snapshot.data.talkCheck == "no") {
                //   talkCheck = false;
                // } else {
                //   talkCheck = true;
                // }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  //logger.i(snapshot.data.lightCheck);
                  //print('faceCheck');
                  // print(snapshot.data.faceCheck);
                  return SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Chip(
                            avatar: CircleAvatar(
                              backgroundImage: AssetImage("images/mother.png"),
                              backgroundColor: Colors.grey.shade800,
                              //child: Text('From the First Month of Birth'),
                            ),
                            label: Text(AppLocalizations.of(context)
                                .tr('fromthefirstmonth')),
                          ),
                          SizedBox(
                            height: 0.0,
                          ),
                          Card(
                              child: ListTile(
                            title: Text(AppLocalizations.of(context)
                                .tr('does_child_eyes_toward_the_light')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: lightCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      lightCheck = !lightCheck;
                                      if (snapshot.data.lightCheck.toString() ==
                                          'yes') {
                                        lightCheck = true;
                                      } else {
                                        lightCheck = false;
                                      }
                                      // lightCheck = snapshot.data.lightCheck;
                                      // faceCheck = !faceCheck;
                                    });
                                  } else {
                                    return null;
                                  }
                                }),
                          )),
                          Card(
                              child: ListTile(
                            title: Text(AppLocalizations.of(context)
                                .tr('does_the_child_look_good_on_your_face')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: faceCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      faceCheck = !faceCheck;
                                      if (snapshot.data.faceCheck.toString() ==
                                          'yes') {
                                        faceCheck = true;
                                      } else {
                                        faceCheck = false;
                                      }
                                      // faceCheck = snapshot.data.faceCheck;
                                      // faceCheck = !faceCheck;
                                    });
                                  } else {
                                    return null;
                                  }
                                }),
                          )),
                          Chip(
                            avatar: CircleAvatar(
                              backgroundImage: AssetImage("images/mother.png"),
                              backgroundColor: Colors.grey.shade800,
                              //child: Text('From the First Month of Birth'),
                            ),
                            label: Text(AppLocalizations.of(context)
                                .tr('whentwomonths')),
                          ),
                          Card(
                              child: ListTile(
                            title: Text(AppLocalizations.of(context).tr(
                                'when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: turnCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      turnCheck = !turnCheck;
                                      if (snapshot.data.turnCheck.toString() ==
                                          'yes') {
                                        turnCheck = true;
                                      } else {
                                        turnCheck = false;
                                      }
                                      //turnCheck = snapshot.data.turnCheck;
                                      // faceCheck = !faceCheck;
                                    });
                                  } else {
                                    return null;
                                  }
                                }),
                          )),
                          Card(
                            child: ListTile(
                              title: Text(AppLocalizations.of(context)
                                  .tr('then_the_baby_eyes_move')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: theneyesCheck,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        theneyesCheck = !theneyesCheck;
                                        if (snapshot.data.theneyesCheck
                                                .toString() ==
                                            'yes') {
                                          theneyesCheck = true;
                                        } else {
                                          theneyesCheck = false;
                                        }
                                        //theneyesCheck =
                                        //snapshot.data.theneyesCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
                                    }
                                  }),
                            ),
                          ),
                          Chip(
                            avatar: CircleAvatar(
                              backgroundImage: AssetImage("images/mother.png"),
                              backgroundColor: Colors.grey.shade800,
                              //child: Text('From the First Month of Birth'),
                            ),
                            label: Text(AppLocalizations.of(context)
                                .tr('whensixmonths')),
                          ),
                          Card(
                            child: ListTile(
                              title: Text(AppLocalizations.of(context)
                                  .tr('does_the_child_look_arround')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: lookingCheck,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        lookingCheck = !lookingCheck;
                                        if (snapshot.data.lookingCheck
                                                .toString() ==
                                            'yes') {
                                          lookingCheck = true;
                                        } else {
                                          lookingCheck = false;
                                        }
                                        // lookingCheck =
                                        //     snapshot.data.lookingCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
                                    }
                                  }),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text(AppLocalizations.of(context).tr(
                                  'is_child_streching_out_his_hand_and_trying_to_touch_something')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: touchCheck,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        touchCheck = !touchCheck;
                                        if (snapshot.data.touchCheck
                                                .toString() ==
                                            'yes') {
                                          touchCheck = true;
                                        } else {
                                          touchCheck = false;
                                        }
                                        //touchCheck = snapshot.data.touchCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
                                    }
                                  }),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text(AppLocalizations.of(context).tr(
                                  'do_you_suspect_that_your_child_has_a_problem')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: squintCheck,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        squintCheck = !squintCheck;
                                        if (snapshot.data.squintCheck
                                                .toString() ==
                                            'yes') {
                                          squintCheck = true;
                                        } else {
                                          squintCheck = false;
                                        }
                                        //squintCheck = snapshot.data.squintCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
                                    }
                                  }),
                            ),
                          ),
                          Chip(
                            avatar: CircleAvatar(
                              backgroundImage: AssetImage("images/mother.png"),
                              backgroundColor: Colors.grey.shade800,
                              //child: Text('From the First Month of Birth'),
                            ),
                            label: Text(AppLocalizations.of(context)
                                .tr('whentenmonths')),
                          ),
                          Card(
                            child: ListTile(
                              title: Text(AppLocalizations.of(context).tr(
                                  'is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: ringCheck,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        ringCheck = !ringCheck;
                                        if (snapshot.data.ringCheck
                                                .toString() ==
                                            'yes') {
                                          ringCheck = true;
                                        } else {
                                          ringCheck = false;
                                        }
                                        //ringCheck = snapshot.data.ringCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
                                    }
                                  }),
                            ),
                          ),
                          Chip(
                            avatar: CircleAvatar(
                              backgroundImage: AssetImage("images/mother.png"),
                              backgroundColor: Colors.grey.shade800,
                              //child: Text('From the First Month of Birth'),
                            ),
                            label: Text(AppLocalizations.of(context)
                                .tr('whentwelvemonths')),
                          ),
                          Card(
                            child: ListTile(
                              title: Text(AppLocalizations.of(context).tr(
                                  'have_your_child_strech_out_his_hand_and_touch_them')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: askCheck,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        askCheck = !askCheck;
                                        if (snapshot.data.askCheck.toString() ==
                                            'yes') {
                                          askCheck = true;
                                        } else {
                                          askCheck = false;
                                        }
                                        //askCheck = snapshot.data.askCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
                                    }
                                  }),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text(AppLocalizations.of(context).tr(
                                  'if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: talkCheck,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        talkCheck = !talkCheck;
                                        if (snapshot.data.talkCheck
                                                .toString() ==
                                            'yes') {
                                          talkCheck = true;
                                        } else {
                                          talkCheck = false;
                                        }
                                        // talkCheck = snapshot.data.talkCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
                                    }
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            AppLocalizations.of(context).tr('specialnoteeye'),
                            style: TextStyle(color: Colors.red[200]),
                          ),
                          SizedBox(
                            height: 70.0,
                          )
                        ],
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  logger.e(snapshot.error);
                  return Text('No Data');
                }
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.done),
            onPressed: () {
              updateDetails(
                      lightCheck,
                      faceCheck,
                      turnCheck,
                      theneyesCheck,
                      lookingCheck,
                      touchCheck,
                      squintCheck,
                      ringCheck,
                      askCheck,
                      talkCheck)
                  .then((res) {
                Toast.show("Done", context,
                    duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                /* Fluttertoast.showToast(
            msg: "Done",
            toastLength: prefix0.Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIos: 1,
            backgroundColor: Colors.black54,
            textColor: Colors.white,
            fontSize: 16.0);*/
              }).catchError((e) {
                Toast.show("An Error Has Occured", context,
                    duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                /* Fluttertoast.showToast(
            msg: "Done",
            toastLength: prefix0.Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIos: 1,
            backgroundColor: Colors.black54,
            textColor: Colors.white,
            fontSize: 16.0);*/
              });
            },
          ),
        ),
      );
    } catch (e) {
      logger.e(e);
      return Text('No data');
    }
  }

//  updateDetails(String name)async{
//     Map data = {'name_of_child': name};
//     print('***face***');
//     print(name);
//     var response = await http.put(
//         "https://protected-bayou-52277.herokuapp.com/babies/update/A0000101",
//         body: data);
//     print("****status");
//     print(response.statusCode);
//     if(response.statusCode == 200){
//       print("Done");
//     }
//   }
//}

}
