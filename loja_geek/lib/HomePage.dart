import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Conteudo.dart';
import 'carrosel.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    /* ItensBottomBar */
    final items = <Widget> [
      Icon(Icons.favorite, size: 40,color: Colors.white,),
      Icon(Icons.home, size: 40,color: Colors.white,),
      Icon(Icons.add_shopping_cart, size: 40,color: Colors.white,),  
    ];
    /* FimItensBottomBar */

    return Scaffold(
      extendBody: true,
      /* Appbar */
      extendBodyBehindAppBar: true,
      appBar: 
      PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
          centerTitle: true,
          flexibleSpace: 
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              gradient: LinearGradient(colors: [Colors.purple, Colors.deepPurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              ),
              ),
            ),
          title: Text('GeekStores'),
          actions: [
            IconButton(
            icon:  const Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
            ),          
          ],
        ),
      ),
      /* FimAppbar */
      /* Drawer */
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.asset('vivi.jpg')
                ),
                accountName: Text('Mahki'), 
                accountEmail: Text('Mahki@gmail.com'),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("perfil.jpg"), fit: BoxFit.cover)
                ),
                ),

              ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text('Ver Perfil'),
              onTap: () {},
            ),

               ExpansionTile(
        title: Text("Vestuário"),
        trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.deepPurple,),
        children: <Widget>[ListTile(
              title: Text('Chapéus'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Camisetas'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Calças'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Vestidos'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ],),

      ExpansionTile(
        title: Text("Acessórios"),
        trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.deepPurple,),
        children: <Widget>[ListTile(
              title: Text('Para celular'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Bolsas'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Máscaras'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Bijuterias'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ],),

             ExpansionTile(
        title: Text("Livros"),
        trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.deepPurple,),
        children: <Widget>[ListTile(
              title: Text('Mangás'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('HQ'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),ListTile(
              title: Text('Acessórios'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),ListTile(
              title: Text('Cadernos'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ],),

      ExpansionTile(
        title: Text("Colecionáveis"),
        trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.deepPurple,),
        children: <Widget>[ListTile(
              title: Text('Action Figures'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Estatuetas'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),ListTile(
              title: Text('Jogos'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),ListTile(
              title: Text('Pelúcias'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ],
      ),
            
            ListTile(
              leading: Icon(Icons.manage_accounts_outlined),
              title: Text('Configurações'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.backspace_outlined),
              title: Text('Sair'),
              onTap: () {},
            ),
          ],
        ),
      ),/* Fim Drawer */

    /* BottomBar */
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items:items,
        height: 60,
        index: 1,
        color: Colors.deepPurple,
      ), /* FimbottomBar */
    /* FimBottomBar */

      /* Principal */
      body: ListView(
          children: <Widget>[
            Carrosel(),
            Conteudo(), 
          ],
        ),
      /* FimPrincipal */

    );
  }
}

/* ClassSearch */
class MySearchDelegate extends SearchDelegate {
List<String> searchResults = [
      'Livros',
      'Roupas',         
      'Indicações de Animes',
      'Acessorios',
    ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context, null),
  );

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () {
        if(query.isEmpty) {
          close(context, null);
        }else{
          query = '';
        }
      },
    ),
  ];

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query,
      style: const TextStyle(fontSize: 64,),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResults) {
      final result = searchResults.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index){
        final suggestion = suggestions[index]; 
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}/* FimClassSearch */


