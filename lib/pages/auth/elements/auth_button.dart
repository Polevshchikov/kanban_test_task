// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:kanban_test_task/domain/cubit/user/user_cubit.dart';
// import 'package:kanban_test_task/domain/cubit/user/user_state.dart';
// import 'package:kanban_test_task/generated/l10n.dart';

// class AuthButton extends StatelessWidget {
//   final String username;
//   final String password;

//   const AuthButton({
//     Key? key,
//     required this.username,
//     required this.password,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     print(username);
//     return BlocBuilder<UserCubit, UserState>(builder: (context, state) {
//       return Column(
//         children: [
//           MaterialButton(
//             minWidth: MediaQuery.of(context).size.width,
//             height: 55.0,
//             onPressed: () async {
//               print('$username $password');
//               await context.read<UserCubit>().getToken(username, password);
//               if (state is UserLoadedState) {
//                 Navigator.pushReplacementNamed(context, '/task',
//                     arguments: state.token);
//               }
//             },
//             color: Colors.teal,
//             child: Text(
//               S.of(context).auth_button_text,
//               style: TextStyle(
//                 fontSize: 16.0,
//               ),
//             ),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(25),
//             ),
//           ),
//         ],
//       );
//     });
//   }
// }
