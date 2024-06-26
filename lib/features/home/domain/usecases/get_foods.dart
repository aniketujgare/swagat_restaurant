// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/food.dart';
import '../repositories/food_repository.dart';

class GetFoods implements UseCase<List<Food>, NoParams> {
  final FoodRepository foodRepository;

  GetFoods(this.foodRepository);
  @override
  Future<Either<Failure, List<Food>>> call(NoParams params) async {
    return await foodRepository.getFoodItems();
  }
}

class GetFoodItemsParams {
  String name;
  int id;
  GetFoodItemsParams({
    required this.name,
    required this.id,
  });
}
