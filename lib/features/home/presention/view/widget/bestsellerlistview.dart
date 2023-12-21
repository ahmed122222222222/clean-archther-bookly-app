import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styel.dart';
import 'package:flutter_application_1/features/home/presention/manager/feutther_boolk/fuether_cubit.dart';
import 'package:flutter_application_1/features/home/presention/manager/newsbook/newstbook_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import 'bestselleritemlisstview.dart';

class listviewbestseller extends StatefulWidget {
  const listviewbestseller({Key? key}) : super(key: key);

  @override
  State<listviewbestseller> createState() => _listviewbestsellerState();
}

class _listviewbestsellerState extends State<listviewbestseller> {
 final ScrollController _scrollController = ScrollController();
    int  pag=1;
   var isloading=false;
   List<BookModel>list=[];
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() async{
    if (_scrollController.position.pixels >=
        0.7 * _scrollController.position.maxScrollExtent) {
      // Trigger the request to fetch the bestseller
  if(!isloading)
  {
    isloading=true;
   await BlocProvider.of<FuetherCubit>(context).fatchfuterbook(page: pag);
  pag++;
  isloading=false;
  } 
    }
  }
  Widget build(BuildContext context) {
    return BlocConsumer<NewstbookCubit, NewstbookState>(
      listener: (context, state) {
      if(state is Newstbooksucess)
      {
        list.addAll(state.bok);

      }
      },
      builder: (context, state) {
        if (state is Newstbooksucess || state is Newstbookpagloading ||state is Newstpagfaulier)
      {
          return ListView.builder(
            itemCount: list.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 10),
                child: Bestselleritem(bookly: list[index],),
              );
            });
      }
      else if (state is Newstfaulier)
      {
        return Text(state.errmassss,style: styels.textStyle18,);
      }
      else {
        return CircularProgressIndicator();
      }
      },
    );
  }
}
