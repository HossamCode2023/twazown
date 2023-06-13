import 'package:myapp/api/class/crud.dart';
import 'package:myapp/api/link/link_api.dart';

class TestGoldData {
  Crud crud;
  TestGoldData(this.crud);

  Map<String, String>? headers = {
          'Content-Type': 'application/json',
          'x-access-token':'goldapi-t9920rlimna7nr-io'
        };

  getGoldData() async {
    var response = await crud.getRequest('${AppLink.server}/${AppLink.gold}', headers);
    return response.fold((l) => l, (r) => r);
  }
}