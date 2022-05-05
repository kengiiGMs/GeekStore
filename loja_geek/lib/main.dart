import 'package:flutter/material.dart';
import 'package:loja_geek/Conteudo.dart';

import 'carrosel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network('https://64.media.tumblr.com/a4b20acf9604445798b00c23ca8edddf/7bc9d88ab8bc0769-86/s400x600/67cde2e70a64895dea8d90fcb31a3ffdbc787731.jpg')
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
      ),

      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        child: BottomNavigationBar(
          currentIndex: 1,
          items: [
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
            backgroundColor: Colors.deepPurple,
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Carrinho',
            backgroundColor: Colors.deepPurple,
          ),
        ]
        ),
        ),
      /* Principal */
      body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Carrosel(),
            Conteudo(),
          ],
        ),/* FimPrincipal */
    );
  }
}

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
}