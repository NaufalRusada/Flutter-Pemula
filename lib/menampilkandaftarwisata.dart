import 'package:flutter/material.dart';
import 'package:flutter_pemula/detailwisata.dart';
import 'package:flutter_pemula/model/tourism_place.dart';

class ListDaftarWisata extends StatelessWidget {
  const ListDaftarWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Daftar Wisata"),
        ),
        body: ListView.builder(
          itemCount: tourismPlaceList.length,
          itemBuilder: (context, index) {
            final TourismPlace place = tourismPlaceList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailWisata(place: place);
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: Image.asset(place.imageAsset)),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            place.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            place.description,
                            style: TextStyle(
                                fontSize: 10, fontStyle: FontStyle.normal),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
