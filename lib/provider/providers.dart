import 'package:provider/provider.dart';

import 'my_provider.dart';

final multiProviders = [
  ChangeNotifierProvider<MyProvider>(
    create: (_) => MyProvider(),
    lazy: true,
  ),
];
