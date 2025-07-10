import 'package:dio/dio.dart';
import 'package:nearme_fn/conf/dio/dioService.dart';
import 'package:nearme_fn/features/home/data/models/doc_item_model.dart';
import 'package:nearme_fn/features/home/data/models/place_item_model.dart';
import 'package:nearme_fn/features/home/data/models/subcategory_model.dart';

///
class HomeApiService {
  final Dio _dio = DioService.instance.dio;

  ///
  Future<List<SubcategoryModel>> fetchSubCategory(String categoryName) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/category/$categoryName',
      );

      final dataJson = response.data?['data'];

      if (dataJson != null && dataJson is List) {
        return dataJson
            .map(
              (json) => SubcategoryModel.fromMap(json as Map<String, dynamic>),
            )
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
  Future<List<PlaceItemModel>> fetchSubCategoryItems(
    String subCategoryName,
  ) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/category/subcategory/$subCategoryName',
      );

      final dataJson = response.data?['data'];

      if (dataJson != null && dataJson is List) {
        return dataJson
            .map((json) => PlaceItemModel.fromMap(json as Map<String, dynamic>))
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
  Future<List<DocItemModel>> fetchDocItems(String CategoryName) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/category/docitem/$CategoryName',
      );

      final dataJson = response.data?['data'];

      if (dataJson != null && dataJson is List) {
        return dataJson
            .map((json) => DocItemModel.fromMap(json as Map<String, dynamic>))
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
}
