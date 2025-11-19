import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/api_request/models.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:http/http.dart' as http;


class ApiAssignment extends StatefulWidget {
  const ApiAssignment({super.key});

  @override
  State<ApiAssignment> createState() => _ApiAssignmentState();
}

class _ApiAssignmentState extends State<ApiAssignment> {
  // Hit Api request

  Future<List<CountryModel>> getAllCountry() async {
    List<CountryModel> allCountry = [];
    String url = 'https://countriesnow.space/api/v0.1/countries/flag/images';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonArrayResponse = jsonDecode(response.body);
      var jasonCountries = jsonArrayResponse['data'];
      for (var country in jasonCountries) {
        CountryModel countries = CountryModel.fromJson(country);
        allCountry.add(countries);
      }
      // await Future.delayed(Duration(seconds: 3));
      print(response.body);
      return allCountry;
    }
    return  allCountry;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<CountryModel>>(
          future: getAllCountry(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<CountryModel> country = snapshot.data!;
              return ListView.builder(
                itemCount: country.length,
                  itemBuilder: (BuildContext context,index){
                return Container(

                  height: 100,
                  child: Card(
                    child: ListTile(
                      leading:Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.amber
                          ),
                          height:100,
                          width: 100,
                          child: SvgPicture.network(country[index].flag.toString(),fit: BoxFit.cover,)),
                      title: Text(country[index].name.toString()),
                      subtitle: Text(country[index].iso3.toString()),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                );
              });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
