import 'package:get/get.dart';
import '../services/api_service.dart';

class DataController extends GetxController {
  var posts = <dynamic>[].obs; // State untuk daftar postingan
  var isLoading = false.obs; // State untuk loading

  final ApiService _apiService = ApiService();

  // Fungsi untuk GET data
  Future<void> fetchPosts() async {
    try {
      isLoading.value = true;
      await _apiService.fetchPosts();
      posts.value = _apiService.posts;
    } catch (e) {
      throw Exception('Gagal mengambil data');
    } finally {
      isLoading.value = false;
    }
  }

  // Fungsi untuk POST data
  Future<void> createPost() async {
    try {
      await _apiService.createPost();
      posts.value = _apiService.posts;
    } catch (e) {
      throw Exception('Gagal menambah data');
    }
  }

  // Fungsi untuk UPDATE data
  Future<void> updatePost() async {
    try {
      await _apiService.updatePost();
      posts.value = _apiService.posts;
    } catch (e) {
      throw Exception('Gagal memperbarui data');
    }
  }

  // Fungsi untuk DELETE data
  Future<void> deletePost() async {
    try {
      await _apiService.deletePost();
      posts.value = _apiService.posts;
    } catch (e) {
      throw Exception('Gagal menghapus data');
    }
  }
}
