import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get/get.dart';
import '../../Models/cities_model.dart';
import '../../Services/cities_services.dart';

class LocationController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    // queryData();
    // searchedData(searchTextController.value);

    // uploadRandom();
    // update();
  }
  late final queryCity;
  RxString searchText = ''.obs;
  late QuerySnapshot querySnapshot;
  RxBool isExecuted = false.obs;

  queryData() {
    queryCity = FirebaseFirestore.instance
        .collection('Source')
        .withConverter<CitiesModel>(
          fromFirestore: (snapshot, _) =>
              CitiesModel.fromJson(snapshot.data()!),
          toFirestore: (post, _) => post.toJson(),
        );
  }

  searchedData() {
    return   searchText != ""
        ? FirebaseFirestore.instance
        .collection('Source')
        .where(
      "name",
      isEqualTo: searchText.value,
    )
        .snapshots()
        : FirebaseFirestore.instance.collection('Source').snapshots();
  }

  fetchMore(snapshot, int index) {
    final hasEndReached = snapshot.hasMore &&
        index + 1 == snapshot.docs.length &&
        !snapshot.isFetchingMore;
    if (hasEndReached) {
      snapshot.fetchMore();
    }
  }
/* Function used for one time to create a "Source" connection with dummy data */

// void uploadRandom() async {
//   final postCollection = FirebaseFirestore.instance
//       .collection('Source')
//       .withConverter<CitiesModel>(
//         fromFirestore: (snapshot, _) =>
//             CitiesModel.fromJson(snapshot.data()!),
//         toFirestore: (post, _) => post.toJson(),
//       );
//   final numbers = List.generate(100, (index) => index + 1);
//   for (final number in numbers) {
//     final post = CitiesModel(
//       name: "city $number",
//       lat: "${Random().nextInt(1000000)}",
//       lng: "${Random().nextInt(1000000)}",
//     );
//     postCollection.add(post);
//   }
//   print("completed");
// }

}
