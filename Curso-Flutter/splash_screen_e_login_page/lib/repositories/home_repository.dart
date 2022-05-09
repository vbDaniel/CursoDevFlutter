import 'package:splash_screen_e_login_page/model/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
