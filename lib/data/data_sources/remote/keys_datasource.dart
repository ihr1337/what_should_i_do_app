import 'package:http/http.dart';

import '../../../domain/use_cases/get_activity.dart';
import '../../models/activity_model.dart';

abstract class ActivityDataSource {
  Future<ActivityModel> getActivity(NoParams params);
}

class ActivityDataSourceImpl implements ActivityDataSource {
  String jsonUrl = 'https://www.boredapi.com/api/activity';
  @override
  Future<ActivityModel> getActivity(NoParams params) async {
    Response response = await get(Uri.parse(jsonUrl));

    if (response.statusCode == 200) {
      response.body;

      final activityModel = activityModelFromJson(response.body);
      activityModel;
      return activityModel!;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
