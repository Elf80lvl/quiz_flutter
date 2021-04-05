import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          // WebsafeSvg.asset(
          //   'assets/icons/bg.svg',
          //   width: MediaQuery.of(context).size.width,
          //   //height: MediaQuery.of(context).size.height,
          // ),
          // SvgPicture.asset(
          //   'assets/icons/bg.svg',
          //   alignment: Alignment.center,
          //   width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          // ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    'Let\'s play quiz,',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text('Enter your info below'),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      filled: true,
                      fillColor: Color(0xff1c2341),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Start Quiz',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
