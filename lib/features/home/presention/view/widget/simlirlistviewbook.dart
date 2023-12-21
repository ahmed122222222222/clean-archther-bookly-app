import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styel.dart';
import 'package:flutter_application_1/features/home/presention/manager/cubit/similercubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'itemdetails.dart';

class Listviewbooklydetails extends StatelessWidget {
  const Listviewbooklydetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SimilercubitCubit, SimilercubitState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
       if (state is Similercubitsucess )
       {
         return ListView.builder(
          itemCount:state.list.length ,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  Expanded(
                child: Padding(
                  padding:const EdgeInsets.only(left: 10),
                  child: itemdetails( img: state.list[index].img,),
                ),
              );
            });

       }
       else if (state is Similercubittfaulier)
       {
        return Text(state.err,style: styels.textStyle18,);
       }
       else {
        return CircularProgressIndicator();
       }
       
             },
    );
  }
}
