import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/notes_cubit.dart';
import 'pages/notes_page.dart';
import '../screens/signIn_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => NotesCubit(), child: const HistoryPage())
      ],
      child: MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: SignInScreen(),
          debugShowCheckedModeBanner: false),
    );
  }
}
