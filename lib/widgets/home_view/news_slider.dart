import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flawtrack/const.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _img = 'assets/home/news3.jpeg';
    String _title = 'Казахстан получил доступ к внутренней системе Facebook';

    _launchURLApp() async {
      const url =
          'https://tengrinews.kz/kazakhstan_news/kazahstan-poluchil-dostup-k-vnutrenney-sisteme-facebook-452720/';
      if (await canLaunch(url)) {
        await launch(url, forceSafariVC: true, forceWebView: true);
      } else {
        throw 'Could not launch $url';
      }
    }

    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 27.0),
        child: Container(
          height: 184,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 184,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 239, 239, 1),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 30,
                        color: Color.fromRGBO(98, 98, 98, 1),
                      ))),
              Expanded(
                  flex: 8,
                  child: Container(
                    height: 184,
                    margin: EdgeInsets.fromLTRB(11, 0, 11, 0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage('$_img'),
                            fit: BoxFit.cover,
                          )),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                          child: Container(
                            height: 184,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: _launchURLApp,
                                        child: Icon(
                                          Icons.language,
                                          size: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                        child: Icon(
                                          Icons.share,
                                          size: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 130,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 90,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          '$_title',
                                          maxLines: 2,
                                          style: TextStyle(
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 2,
                                                  color: Colors.black
                                                      .withOpacity(0.85),
                                                  offset: Offset(0, 1),
                                                ),
                                              ],
                                              color: white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      _img = 'assets/home/news4.jpeg';
                      _title = 'Скончался Темирхан Досмухамбетов';
                    },
                    child: Container(
                        height: 184,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 239, 239, 1),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 30,
                          color: Color.fromRGBO(98, 98, 98, 1),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
