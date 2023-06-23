import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: const Color(0xFF19DADF),
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.01, 0.6),
                child: ElevatedButton(
                  onPressed: () {
                    print('Diet tracker pressed ...');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(156, 119),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    backgroundColor: const Color(0xFF21D3CD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 3,
                  ),
                  child: const Text(
                    'Diet tracker',
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(1.03, 0.6),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'vehicle');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(161, 119),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    backgroundColor: const Color(0xFF14CAC5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 3,
                  ),
                  child: const Text(
                    'Vehicle tracking',
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, -0.74),
                child: CircularPercentIndicator(
                  percent: 0.5,
                  radius: 110,
                  lineWidth: 20,
                  animation: true,
                  progressColor: const Color(0xFF0AC8C4),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  center: const Text(
                    '50%',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
