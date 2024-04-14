import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/fundo.jpg'), //IMG DE FUNDO
                fit: BoxFit.cover)),
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/img/logo.png') //logo
                    )
              ],
            ),
            // CPF Text Field
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'CPF',
                labelStyle: TextStyle(
                    color: Colors.black), // Change text color to black
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(
                          255, 80, 80, 80)), // Change border color to black
                ),
              ),
            ),
            SizedBox(height: 15.0),
            // SENHA Text Field
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.black),
                // Change text color to black

                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(
                          255, 49, 49, 49)), // Change border color to black
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),
            // Login Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Principal()),
                );
              },
              child: Text('Entrar', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20.0),
                fixedSize: Size(300, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                foregroundColor: Color.fromARGB(255, 77, 77, 77),
              ),
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // PRIMEIRO ACESSO
                  },
                  child: Text(
                    'Primeiro Acesso',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // RECUPERAR SENHA
                  },
                  child: Text(
                    'Recuperar senha',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //DRAWER
          drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            child: ListView(children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 146, 121),
                ),
                accountName: Text('Maria Viviane Layla Silva Santos'),
                accountEmail: Text('maria.santos3329@aluno.ce.gov.br'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Color.fromARGB(255, 63, 146, 121)
                          : Colors.white,
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              //ICONES DO DRAWER
              ListTile(
                title: Text(
                  "Dados pessoais",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.person,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Horários",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.watch_later_outlined,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Calendário letivo",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.calendar_month_outlined,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Minhas turmas",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.person_add_alt_1,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Frequência",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.check_rounded,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Avaliações e notas",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.my_library_books_outlined,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Plano de ensino",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.edit_calendar_outlined,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Registro de aulas",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.list_rounded,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Atividades",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.menu_book_rounded,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),

              ListTile(
                title: Text(
                  "Sair da conta",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.exit_to_app_rounded,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),
              Divider(),
              ListTile(
                title: Text("Informações",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 112, 112, 112),
                    )),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Sincronizar",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.autorenew,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),
              ListTile(
                title: Text(
                  "Configuração",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.settings,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),
              ListTile(
                title: Text(
                  "Sobre",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 146, 121),
                  ),
                ),
                leading: Icon(
                  Icons.info_sharp,
                  size: 30,
                ),
                iconColor: Color.fromARGB(255, 63, 146, 121),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('Desenvolvido por SEDUC'),
                        SizedBox(width: 50),
                        Icon(
                          Icons.facebook,
                        ),
                        Icon(Icons.email),
                        Icon(Icons.reddit)
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 11, 141, 129),
            title: const Text('Professor Online'),
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
            actions: <Widget>[
              IconButton(
                padding: const EdgeInsets.only(left: 16),
                icon: Icon(
                  Icons.refresh,
                  size: 32,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ],
          ),

          body: Container(
            color: Color.fromARGB(255, 143, 219, 211),
            height: 90,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text(
                  "Professor Online SEDUC",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 109, 109, 109),
                  ),
                ),
                Text(' O portal do professor da rede estadual'),
                Center(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 150),
                            child: Icon(
                              Icons.inbox,
                              color: Color.fromRGBO(102, 102, 102, 100),
                              size: 150,
                            ),
                          ),
                          Text(
                            'Nenhum item encontrado!',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}