import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/carousel.dart';

class BannerService {
  final bannersRef = FirebaseFirestore.instance.collection('banners').withConverter<CarouselModel>(
    fromFirestore: (snapshot, _) => CarouselModel.fromJson(snapshot.data()!),
    toFirestore: (data, _) => data.toJson(),
  );

  Future<List<CarouselModel>> getBanners() async {
    var querySnapshot = await bannersRef.get();
    var carouselItemList =  querySnapshot.docs.map((doc) => doc.data()).toList();
    return carouselItemList;
  }
}