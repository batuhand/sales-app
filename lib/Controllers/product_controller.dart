import 'package:e_commerce/Models/product.dart';
import 'package:e_commerce/Services/remote_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>().obs;
  var userProductList = List<Product>().obs;

  @override
  void onInit() {
    fetchProducts();
    //fetchUserProducts();
    super.onInit();
  }

  void fetchProducts() async {
    isLoading(true);
    try {
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
  void fetchUserProducts() async {
    isLoading(true);
    try {
      var products = await RemoteServices.fetchUserProducts();
      if (products != null) {
        userProductList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
