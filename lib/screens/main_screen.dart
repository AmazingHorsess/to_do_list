import 'package:flutter/material.dart';
import 'package:to_do_list/constants/colors.dart';

import '../model/todo.dart';
import '../widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: __buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50, bottom: 20),
                        child: const Text(
                          "All ToDos",
                          style:
                              TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                      ),
                      for (ToDo todoo in todoList)
                        ToDoItem(
                          todo: todoo,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(child: Container(
                margin: const EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                  left: 20,
                ),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                decoration: BoxDecoration(color: Colors.white,
                    boxShadow: const [BoxShadow(color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                        spreadRadius: 0.0
                ),],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(

                  decoration: InputDecoration(hintText: 'Add a new ToDo',
                  border: InputBorder.none),

                ),


              ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, right: 20),
                padding: EdgeInsets.symmetric(vertical: 5) ,
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(

                      primary: tdBlue,
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                    child:
                    Text('+',style: TextStyle(color: Colors.white,fontSize: 40),)),
              )
            ],


            ),
          )
        ],
      ),
    );
  }

  Container searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }

  AppBar __buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: tdBlack,
            size: 35,
          ),
          Container(
            height: 40,
            width: 40,
            child: const Icon(
              Icons.supervised_user_circle_rounded,
              color: tdGrey,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
