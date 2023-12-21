import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/router.dart';
import 'package:flutter_application_1/core/utils/styel.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presention/manager/feutther_boolk/fuether_cubit.dart';
import 'package:flutter_application_1/features/home/presention/view/widget/customlistviewitem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
class ListViewBook extends StatefulWidget {
  const ListViewBook({Key? key}) : super(key: key);

  @override
  _ListViewBookState createState() => _ListViewBookState();
}

class _ListViewBookState extends State<ListViewBook> {
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
  {isloading=true;
   await BlocProvider.of<FuetherCubit>(context).fatchfuterbook(page: pag);
  pag++;
  isloading=false;
  } 
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FuetherCubit, FuetherState>(
      listener: (context, state) {
        if(state is Fuethersucess)
        {
          list.addAll(state.booka);
        } 
      },
      builder: (context, state) {
        if (state is Fuethersucess || state is Fuetherpagloding || state is Fuetherpagfaulier) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .push(router.kBookDetailsView, extra: list);
                    },
                    child: Listviewitem(url: list[index].img),
                  ),
                );
              },
            ),
          );
        } else if (state is Fuetherfaulier) {
          return Text(
            state.errmassss,
            style: styels.textStyle18,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}