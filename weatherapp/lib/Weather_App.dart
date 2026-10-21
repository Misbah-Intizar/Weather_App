import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weatherapp/Additional_Information';

import 'package:weatherapp/Hourly_Forecast_Item';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          ),
        ],
      ), //appbar is interconstant
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Rain",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              'Weather Forecast',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForeCastItem(
                    time: '00:00',
                    icon: Icons.cloud,
                    temperature: '301.22',
                  ),
                  HourlyForeCastItem(
                    time: '03:00',
                    icon: Icons.sunny,
                    temperature: '300.52',
                  ),
                  HourlyForeCastItem(
                    time: '06:00',
                    icon: Icons.cloud,
                    temperature: '302.22',
                  ),
                  HourlyForeCastItem(
                    time: '09:00',
                    icon: Icons.sunny,
                    temperature: '300.12',
                  ),
                  HourlyForeCastItem(
                    time: '12:00',
                    icon: Icons.cloud,
                    temperature: '304.22',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Additional Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInformation(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '91',
                ),
                AdditionalInformation(
                    icon: Icons.air, label: 'Wind space', value: '7'),
                AdditionalInformation(
                  icon: Icons.beach_access,
                  label: 'Presure',
                  value: '1000',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
