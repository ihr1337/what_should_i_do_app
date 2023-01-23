import 'package:dartz/dartz.dart';
import 'package:what_should_i_do/domain/entities/result.dart';

import '../../data/data_sources/remote/keys_datasource.dart';
import '../../data/models/activity_model.dart';
import 'usecase.dart';

class GetActivity extends UseCase<ActivityModel, NoParams> {
  final ActivityDataSource activityDataSource;

  GetActivity(this.activityDataSource);

  @override
  Future<Result<ActivityModel>> call(NoParams params) async {
    return Future.value(
      Result(
        Right(
          await activityDataSource.getActivity(
            params,
          ),
        ),
      ),
    );
  }
}

class NoParams {}
