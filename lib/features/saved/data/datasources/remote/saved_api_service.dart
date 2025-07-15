import 'package:dio/dio.dart';
import 'package:nearme_fn/conf/dio/dioService.dart';
import 'package:nearme_fn/features/saved/data/models/saved_model.dart';

///
class SavedApiService {
  ///
  final Dio dio = DioService.instance.dio;

  ///
  Future<List<SavedModel>> fetchingAllSavedItems(String CategoryName) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        '/saved/$CategoryName',
      );
      final dataJson = response.data?['data'];

      if (dataJson != null && dataJson is List) {
        return dataJson
            .map((json) => SavedModel.fromMap(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Expected a list but got ${dataJson.runtimeType}');
      }
    } on DioException catch (e) {
      throw Exception('Something went wrong: $e');
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }

  ///
  Future<dynamic> saveItem(int? docItemId, int? placeItemId) async {
    try {
      final response = await dio.post<Map<String, dynamic>>(
        '/saved',
        data: {'docItemId': docItemId, 'placeItemId': placeItemId},
      );
      final dataJson = response.data?['data'];
      return dataJson;
    } on DioException catch (e) {
      throw Exception('Something went wrong: $e');
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }
}
