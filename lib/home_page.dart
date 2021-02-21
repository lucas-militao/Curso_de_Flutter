import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.network('https://pbs.twimg.com/profile_images/1179504970976157698/pVszKS8A_400x400.jpg'),
              accountName: Text('Lucas Militão'), 
              accountEmail: Text('lucasmilitao@email.com')
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('inicio'),
              subtitle: Text('tela de início'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitcher(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            CustomSwitcher(),
            Container(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ],
            )
          ],),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
      },),
    );
  }

}

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
    },);
  }
}