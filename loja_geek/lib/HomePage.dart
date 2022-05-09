import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Conteudo.dart';
import 'carrosel.dart';
import 'extendmenu.dart';

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
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text('teste')) ,
        actions: [
        IconButton(
          icon:  const Icon(Icons.search),
          onPressed: () {
            showSearch(
              context: context,
              delegate: MySearchDelegate(),
            );
          },
        )          
        ],
      ),
      /* Drawer */
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.asset('LuffyIMG.jpg')
                ),
                accountName: Text('Teste'), 
                accountEmail: Text('Teste@email.com')
                ),
            ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text('Ver Perfil'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.manage_accounts_outlined),
              title: Text('Configurações'),
              onTap: () {},
            ),
            /* Icons Categoria */
            ListTile(
              title: Text('Vestuário'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,),
              onTap: () {},
            ),
            ListTile(
              title: Text('Acessórios'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Livros'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
              onTap: () {},
            ),
            ListTile(
              title: Text('Colecionários'),
              trailing: Icon(Icons.arrow_right,color: Colors.deepPurple,), 
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

      /* Principal */
      body: ListView(
          children: <Widget>[
            ExtendMenu(),
            Carrosel(),
            Conteudo(),
          ],
        ),/* FimPrincipal */

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

