import 'package:example_list_view/components/card.dart';
import 'package:example_list_view/models/country.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Countries> countries = [
    Countries(
      image: 'https://i.pinimg.com/originals/96/c9/85/96c98543e83dbc8838f2330bbb051948.gif', 
      country: 'Philippines', 
      continent: 'Asia', 
      language: 'Filipino'
    ),
    Countries(
      image: 'https://i.pinimg.com/564x/e4/79/bc/e479bcd4cc2b5435bbd8063efbd282d4.jpg', 
      country: 'Canada', 
      continent: 'North America', 
      language: 'English and French'
    ),
    Countries(
      image: 'https://i.pinimg.com/564x/95/49/47/9549475724c609dae42415c7d5e5d099.jpg', 
      country: 'Turkey', 
      continent: 'Europe and Asia', 
      language: 'Turkish'
    ),
    Countries(
      image: 'https://i.pinimg.com/564x/e3/74/93/e374939000af9b53a5cd01bdf5f7ffa1.jpg', 
      country: 'Greece', 
      continent: 'Europe', 
      language: 'Greek'
    ),
    Countries(
      image: 'https://i.pinimg.com/564x/86/3a/48/863a488b9ad34aa7bcf73286a8646cc1.jpg', 
      country: 'Malaysia', 
      continent: 'Asia', 
      language: 'Malay'
    ),
    Countries(
      image: 'https://i.pinimg.com/564x/46/6e/be/466ebef05f6a37ce8a47396ef0ce8dd4.jpg', 
      country: 'Mexico', 
      continent: 'North America', 
      language: 'Spanish'
    ),
    Countries(
      image: 'https://i.pinimg.com/564x/88/20/49/882049b7be3487aacc046ef86c627b1d.jpg', 
      country: 'China', 
      continent: 'Asia', 
      language: 'Mandarin Chinese'
    ),
    Countries(
      image: 'https://i.pinimg.com/564x/84/68/0b/84680be403f82ad972a71394b2be9d4d.jpg', 
      country: 'Brazil', 
      continent: 'South America', 
      language: 'Portuguese'
    ),
    Countries(
      image: 'https://i.pinimg.com/originals/e9/89/c5/e989c548fca12d740bb6b69cb44bbd2d.jpg', 
      country: 'South Korea', 
      continent: 'Asia', 
      language: 'Korean'
    ),
    Countries(
      image: 'https://i.pinimg.com/564x/39/d8/16/39d8166d7eb43154f009616e6f6735a9.jpg', 
      country: 'Hong Kong', 
      continent: 'Asia', 
      language: 'Chinese'
    ),
  ];

  // change someting
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Example ListView',
          style: TextStyle(
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisExtent: 232
          ),
          itemCount: countries.length,
          itemBuilder: (context, index){
            return CardWidget(
              image: countries[index].image, 
              country: countries[index].country, 
              continent: countries[index].continent, 
              language: countries[index].language,
            );
          },
        ),
      ),
    );
  }
}