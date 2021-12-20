import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newspaper/cubit/cubit.dart';
import 'package:newspaper/cubit/states.dart';
import 'package:newspaper/shared/component/componants.dart';

class SportsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener:(context,state){} ,
      builder:(context,state){
        var list =NewsCubit.get(context).sports;
        return articleBuilder(list,context);
      },
    ) ;
  }
}