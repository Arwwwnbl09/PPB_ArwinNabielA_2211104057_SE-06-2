import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/data_controller.dart';

class HomepageScreen extends StatelessWidget {
  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API with GetX'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              if (dataController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              if (dataController.posts.isEmpty) {
                return const Text("Tekan tombol GET untuk mengambil data");
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: dataController.posts.length,
                  itemBuilder: (context, index) {
                    final post = dataController.posts[index];
                    return Card(
                      child: ListTile(
                        title: Text(post['title']),
                        subtitle: Text(post['body']),
                      ),
                    );
                  },
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await dataController.fetchPosts();
                      Get.snackbar('Berhasil', 'Data berhasil diambil');
                    },
                    child: const Text('GET'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await dataController.createPost();
                      Get.snackbar('Berhasil', 'Data berhasil ditambahkan');
                    },
                    child: const Text('POST'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await dataController.updatePost();
                      Get.snackbar('Berhasil', 'Data berhasil diperbarui');
                    },
                    child: const Text('UPDATE'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await dataController.deletePost();
                      Get.snackbar('Berhasil', 'Data berhasil dihapus');
                    },
                    child: const Text('DELETE'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
