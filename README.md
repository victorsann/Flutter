
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120003533-38040600-bfac-11eb-9ead-49cf1dc50c62.png">
</div>
<br>
<img src="https://img.shields.io/static/v1?label=flutter&message=Framework&color=blue&style=for-the-badge&logo=Flutter"/>


O Flutter é um conjunto de ferramentas para o desenvolvimento de User Interfaces(Ui), criado e mantido pela google. Sendo apresentado pela primeira vez em 2015, a ferramenta foi aprimorada desde então, sendo o Flutter 1.0 a sua primeira versão estável, lançada em 2018. 

Desenvolvido em C, C++, Dart e Skia Graphics Engine, o Flutter utiliza o [Dart](https://github.com/VictorSantos12/Dart#maps) como linguagem de desenvolvimento. Além disso, outra característica muito importante da ferramenta é sua capacidade de criar aplicações híbridas, mantendo uma performance nativa independente do sistema operacional, e um código fonte único

Outras características importantes da ferramenta são:

- Dispõe de um Stateful Hot Reload
- Utiliza Widgets Reativos Customizaveis
- É compatível em diversas IDE's
- Utiliza a GPU e permite acesso as API'S das plataformas android e IOS
- Pode se integrar a aplicações já desenvolvidas


<h2>Instalação</h2>


Antes de iniciar o processo de instalação, é importante frisar que há mais de uma forma de instalar e utilizar o Flutter, porém, há formas mais recomendadas que evitam um maior número de erros durante a execução; os passos aqui descritos são os mais recomendados pela documentação e comunidade Flutter. Para instalar e usar o Flutter, é preciso seguir alguns passos:

- Crie uma pasta src no disco local da sua máquina
- Acesse [Flutter.dev](https://flutter.dev/docs/get-started/install/windows) e copie o Flutter repo Link
- Acesse o cmd e crie um git clone do Flutter repo na pasta src anteriormente criada

A partir deste ponto as ferramentas que Flutter disponibiliza já estão instalas e acessíveis. Porém, antes do processo de desenvolvimento começar é preciso fazer mais alguns ajustes


<h2>Atualizando Path</h2>


Para que as ferramentas do Flutter possam ser acessadas em qualquer lugar do sistema, é preciso criar uma variável de ambiente contendo o caminho para o arquivo bin, contido na pasta flutter. Para isso, acesse as variáveis de ambiente do Windows, e em Variáveis de usuário crie uma nova variável com as seguintes definições

    Nome da Variável: FLUTTER_HOME
    Valor da Variável: C:\src\flutter

A variável criada serve como um camfinho padrão de acesso aos recursos Flutter, como por exemplo a pasta bin. A declaração de um path irá definir o acesso a esta pasta em específico. Ainda nas variáveis de ambiente do Windows, e em Path, selecione a opção editar e adicione a seguinte linha

    %FLUTTER_HOME%\bin

Após esse processo é possível executar o Flutter no cmd do Windows. E para verificar se tudo foi devidamente instalado, utilize o seguinte comando:

    flutter doctor

O comando acessa a ferramenta de gestão do Flutter, retornando o status do ambiente criado, definindo se ele está ou não dentro do esperado. Nesse ponto, é provável que o retorno seja algo parecido com o seguinte:

    [√] Flutter (Channel stable, 2.2.1, on Microsoft Windows [versÃ£o 10.0.19042.985], locale pt-BR)
    [!] Android toolchain - develop for Android devices (Android SDK version 30.0.3)
        ! Some Android licenses not accepted.  To resolve this, run: flutter doctor --android-licenses
    [√] Chrome - develop for the web
    [!] Android Studio (not installed)
    [!] VS Code (not installed)
    [!] Connected device 
        ! no devices available
    
    ! Doctor found issues in 4 categories.

Os issues encontrados definem o que ainda não foi instalado ou que ainda não foi identificado como instalado. Os próximos passos corrigem estas faltas


<h2>Ambiente de Desenvolvimento</h2>


Tendo o Flutter instalado, o próximo passo é preparar o ambiente de desenvolvimento, sendo necessário instalar alguns recursos e definir algumas modificações:

- [Android Studio](https://developer.android.com/studio?hl=pt&gclid=Cj0KCQjw78yFBhCZARIsAOxgSx2xS0_FUoAlFg9Z-jqoOf8YJY3ihAhi8Uho_jdZNWmSZgPfLT93FlEaAsJvEALw_wcB&gclsrc=aw.ds)
- [VScode](https://code.visualstudio.com/) (Recomendado)


<h2>Android Studio</h2>


O android studio dispõe de recursos essenciais para o desenvolvimento de aplicações android. Apesar de suprir bem estas necessidades, a IDE não será utilizada como exemplo de ambiente de desenvolvimento, devido a seu consumo excessivo de mémoria. O recurso visado aqui é a criação e uso de um ou mais emuladores, processo visto adiante. Abaixo estão dispostas algumas configurações do ambiente android, sendo econtradas no menu de configurações da ferramenta


<h2>SDK Platforms</h2>


Sendo a primeira modificação, o SDK Platform nada mais é que uma lista de sistemas operacionais para os quais é possível desenvolver dentro do android studio. No momento a versão mais recente do android é a 11.0, portanto, os exemplos criados aqui serão desenvolvidos nesta versão


<h2>Configurando Android SDK</h2>


O android SDK, ou Android Development Kit, é um conjunto de ferramentas que o android studio disponibiliza para seus usuários. O importante neste ponto é a configuração do SDK Tools, sendo as ferramentas a seguir as mais recomendadas:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120892355-41acef80-c5e4-11eb-9a47-2e9468d74e65.png">
</div>


<h2>Flutter Plugin</h2>


A instalação de plugins torna muito mais viável a compilação e desenvolvimento do código e da tecnologia utilizada. O Flutter plugin está disponível no menu de Plugins nas configurações do android studio, tendo como adicional um Dart plugin:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120892754-2fcc4c00-c5e6-11eb-9d3e-c5cff646e9f7.png">
</div>


<h2>Atualizando Path</h2>


Como foi definido, o android studio não será a ferramenta na qual os exemplos serão desenvolvidos, portanto, para que haja uma melhor interação entre os exemplos e os resultados, é recomendável que isto seja replicado. Com isso, para que as ferremantas do SDK que foram instaladas possam ser utilizadas fora do ambiente android, é preciso fazer as seguintes alterações:

- Torne a acessar o menu SDK Manager
- Copie o caminho correspondente ao Android SDK Location

Após isso, será criada uma nova variável de ambiente, específica para o acesso às SDK Tools

    Nome da Variável: ANDROID_HOME
    Valor da Variável: Android SDK Location (C:\...\...)

Para acessar as ferramentas pré instaladas do SDK, é preciso fazer mais duas atualizações no path das variáveis de ambiente. Dessa vez correspondentes a variável ANDROID_HOME anteriormente criada:

    %ANDROID_HOME%\tools\bin
    
<br>

    %ANDROID_HOME%\platform-tools

Tendo finalizado, já é possível acessar os recursos do SDK fora do ambiente android


<h2>jdk8</h2>


Qualquer aplicação android depende essencialmente de um Java Development Kit ou jdk. Sendo um framework que desenvolve aplicações híbridas, o Flutter não é exceção, sendo estritamente necessário tê-lo instalado e operando. A seguir está listado o processo de instalação do jdk8:


<h2>Chocolatey</h2>


O [Chocolatey](https://chocolatey.org/) é um gerenciador de pacotes do window. Para instalá-lo execute o PowerShell como administrador e efetue o seguinte comando:

    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]     ::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Para verificar a instalação execute:

    choco --version
  
Tendo a versão retornada é possível confirmar a instalação. Em seguida, instale o jdk com o seguinte comando: 

    choco install jdk8 

Para verificar a instalaçao execute:

    java -version

Obs: É extremamente importante que a versão instalada seja a 1.8.0_211, isso garante que seus resultados serão semelhantes aos dos futuros exemplos


<h2>Android Device</h2>


Sendo o último passo da preparação do ambiente android, é preciso ter acesso a uma máquina virtual, também chamada de android device ou emulador, ferramenta extremamente importante no desenvolvimento mobile. O android studio disponibiliza uma série de dispositivos, como smartphones, smartwatches e TV's, sendo utilizados de acordo com o projeto a ser desenvolvido. O passo a passo do processo de criação e configuração do AVD pode ser acessado na documentação oficial do [developer.android.com](https://developer.android.com/studio/run/managing-avds?hl=pt-br)

Tendo seguido as indicações da documentação, é possível verificar a instalação do emulador criado através do comando a seguir

    flutter emulators

O resultado deve conter o AVD Name, definido no precesso de criação. Exemplo:

    Pixel_4_API_30 • Pixel 4 API 30 • Google • android

Tendo esse resultado, é possível inicializar o emulador através do terminal de comando da seguinte forma:

    flutter emulators --launch Pixel_4_API_30

Com o dispositivo escolhido no exemplo, temos o seguinte resultado:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120123175-c2529280-c183-11eb-92f0-7b6b081ab394.png">
</div>


<h2>Dispositivo Real</h2>


Há casos em que desenvolver utilizando um emulador se torna inviável devido a limitações no hardware do desenvolvedor. Essa falta pode ser resolvida com o uso de um dispositivo em alternativa. A execução de aplicações em Smartphones é um recurso disponibilizado em qualquer aparelho android moderno, sendo possível ativa-lo caso o mesmo já não esteja ativo. A seguir estão descritos os passos para a ativações, podendo variar de dispositivos para dispositivos:

- Acesse as configurações do dispositivo
- Ative o modo de desenvolvedor atráves do build number, clicando multiplas vezes no mesmo até ativar a função

Em seguida é possível ter acesso as configurações de desenvolvedor no dispositivo. Acessando esse recurso, é possível definir as seguintes configurações:

- Permanecer Ativo
- Depuração USB

A primeira opção define que o aparelho não irá se desligar enquanto a aplicação estiver rodando. Já a segunda opção define que a depuração do código será feita via conexão USB. Adiante será explicado o processo de execução de um projeto tanto no androd device, quanto em um dispositivo real


<h2>VSCode</h2>


Assim como o Android Studio, o VSCode possibilida a criação de um ambiente de desenvolvimento completo, tendo a vantagem de possuir recursos mais customizáveis e consumir menos memória no processo de execução. O passo a passo da criação do ambiente de desenvolvimento Flutter no VSCode será visto a seguir


<h2>Plugins</h2>


Há uma série de recursos que tornam desenvolver uma aplicação Flutter muito mais fácil. Disponibilizadas pelo VSCode, os plugins dão acesso a funcionalidades que compõem o ambiente de desenvolvimento. Eles são:

* <strong>Flutter</strong> - O Flutter plugin adiciona suporte para edição, refatoração, execução e recarga de aplicações mobile Flutter de maneira eficaz, assim como suporte para o Dart

<!-- <div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120417267-f7521700-c334-11eb-8ade-49fa71965d84.png">
</div> -->

* <strong>Flutter Widgets Snippets</strong> - Traz um conjunto de Widgets Flutter e Dart úteis para o desenvolvimento de aplicações Flutter

<!-- <div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120417507-544dcd00-c335-11eb-8474-4eaf7654bdf7.png">
</div> -->

* <strong>Awesome Flutter Snippets</strong> - O Awesome Flutter Snippets é uma coleção de classes e métodos comumente utilizados no Flutter. Ele aumenta a velocidade de desenvolvimento, eliminando a maior parte do código clichê associado à criação de um widget

<!-- <div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120417751-bd354500-c335-11eb-9516-20ef2ed9d4a0.png">
</div> -->

* <strong>Dart Data Class Generator</strong> - O Dart Data Class Generator cria classes de dados dart com facilidade sem escrever boilerplate ou executar a geração de código

<!-- <div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120418464-f6ba8000-c336-11eb-855d-f3e4a8da4ec6.png">
</div> -->


<h2>Primeiro Projeto</h2>


Tendo configurado o ambiente, é possível gerar um novo projeto Flutter. Todo o passo a passo de criação, execução e configuração de um projeto será visto a frente, além de um overview dos arquivos que são gerados na criação


<h2>Gerando um Projeto Flutter</h2>


Para gerar um novo projeto, crie um diretório no qual o projeto será alocado, em seguida abra o VSCode. Com o terminal aberto, acesse o diretório criado e executando o seguinte comando:

    flutter create primeiro_projeto

Após a execução, uma série de arquivos referentes ao primeiro_projeto serão gerados em uma pasta de mesmo nome, sendo esta a file geral do projeto. Estes arquivos consitem em:


<h2>Executando no Emulador</h2>


Como foi dito anteriormente, agora veremos o processo de execução do projeto tanto no emulador quanto em um dipositivo real. O primeiro passo é executar o emulador definido nas configurações do ambiente android. Como foi já foi mostrado, é possível executar o emulador através da linha de comando, o que acaba sendo custoso em tempo, tendo formas mais simples de efetuar a inicialização. Para tal, o VSCode permite executar qualquer device no ambinte de desenvolvimento da seguinte forma:

- Na lista de ferramentas executáveis do VSCode é possível acessar o menu de Devices

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120896193-dddff200-c5f6-11eb-88d3-7977f0806e41.png">
</div>

<br>

Nele é possível acessar o emulador anteriomente instalado e configurado, sendo possível identificar o AVD Name, tambem já mencionado. Além disso, também estão o Chrome, o Edge, e também há a opção de criação de uma novo emulador. Após executar o android device, vá até a pasta lib dos arquivos do projeto e execute o projeto com F5. O resultado é o seguinte:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120896767-48922d00-c5f9-11eb-82f6-dbc288132c1e.png">
</div>

<br>

Um app padão é executado como resposta, sendo possível customizá-lo e ver o resultado ser compilado em tela após o save de forma instantânea. Nele é possível ver a definição de alguns Widgets, esctruturas base de uma aplicação Flutter, as quais serão mais bem abordadas no futuro


<h2>Executando no Dispositivo Real</h2>


O processo de execução da app em um dispositivo real é semelhante ao anteriomente descrito. Somente diferenciando na necessidade de conectar o aparelho via cabo USB, e assim podendo acessá-lo no menu de Devices de forma imediata: 

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120897316-d4a55400-c5fb-11eb-8e3f-e93e9b0c9ee8.png">
</div>

<br>

O resultado é semelhante ao anteriormente visto em um android device. E como já foi dito, utilizar um aparelho real é uma alternativa ao uso dos emuladores, sendo importante também para que o desenvolvedor tenha contato com a aplicação desenvolvida de forma que o mesmo sinta a experiência do usuário. Tendo isto dito, deste ponto em diante, os exemplos irão permanecer restritos ao andorid device


<h2>Main.dart</h2>


O arquivo main.dart executa uma aplicação padrão, criada como base de qualquer projeto Flutter. Para entender melhor a estrutura de uma aplicação mobile Flutter, é importante entender o que ocorre neste arquivo. A seguir há uma definição básica da estrutura padão no main.dart:


<h2>Estrutura Básica</h2>


    import 'package:flutter/material.dart';
    
    void main() {
      runApp(MyApp());
    }
    
    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
    }


A estrutura padão no main.dar consiste em:

    import 'package:flutter/material.dart';

<div align="center">
 <h5>Define o acesso a classes e métodos essenciais para gerar e rodar uma aplicação;</h5></h5>
</div>

    void main() {}

<div align="center">
 <h5>Principal método do projeto;</h5>
</div>

    runApp();

<div align="center">
 <h5>infla o widget fornecido e o anexa à tela;</h5>
</div>

    MyApp

<div align="center">
 <h5>Class correspondente a toda a aplicação, onde features padão são definidas;</h5>
</div>

    Widget build(BuildContext context) {}

<div align="center">
 <h5>Descreve a parte da interface do usuário representada pelo widget, retornando uma instância da classe MaterialApp</h5>
 </div>

    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );

<div align="center">
  <h5>
  Instância da classe MaterialApp, responsável por gerar os Widgets e customizá-los em projetos baseados em Widgets. O  MaterialApp é uma classe de definição de layout baseada no Material Design do Google. Ele possui uma série de atributos que definem características gerais da aplicação. Os atributos do exemplo correspondem a um title do projeto, uma definição de tema e tela inicial, definida como home.
  </h5>
</div>

<div align="center">
 Os demais componetes do código presentes no main.dart são específicos da estrutura criada por padrão. Os mesmos serão mais bem abordados futuramente
</div>
  
<br>

<h1>Catálogo de Widgets</h1>

<br>

Sendo uma ferramenta de construção de interfaces, o Flutter conta com uma biblioteca de recursos de estruturação e customização de interfaces gráficas gigantesca. Este conjunto gera um ambiente totalmente otimizado para construir interfaces de usuário pensando na experiência decorrente disso, contando com uma arquitetura concentrada baseada em widgets


<h2>Widgets</h2>


Baseados no [Material Design](https://material.io/design), os Widgets são a base de desenvolvimento do Flutter. Cada estrutura que compõe a tela de uma aplicação Flutter é ou faz parte de um Widget. Eles possuem um alto nível de customização, dando a liberdade necessária ao desenvolvedor para criar e estilizar sua aplicação. Um Widget em si é uma classe, ou conjunto de classes, esta possuindo propriedades e métodos usuais, capazes de redefinir a informação de formas diversas. Para entender o conceito de Widget é importante entender sua estrutura e formas de uso. Com isso, a seguir estão listados categoricamente widgets visuais, estruturais, de plataforma e interativos, dos mais básicos aos mais complexos:


<h2>Material Components</h2>


Widgets visuais, comportamentais e de movimento que implementam as diretrizes do Material Design. Diretrizes esssa que se baseam em padrões de desenvolvimento e estruturação de aplicações modernas, as quais disponibilizam diferentes formas de interação com a interface. Elas são:


<h2>Scaffold</h2>


A classe Scaffold, que literalmente significa andaime, é um Widget que permite a criação de uma estrutura de layout baseado no Material Design, disponibilizando style API's que contam com componentes comuns a aplicações mobile. Além disso, conta com propriedades que separam a estrutura em blocos. A seguir há um exemplo de definição do Scaffold:

    Scaffold(
      appBar: AppBar( ),
      body: Container( ),
      drawer: Drawer( ),
      floatingActionButton: FloatingActionButton( ),
      bottomNavigationBar: BottomAppBar( )
    )


O Scaffold é muito utilizado como estrutura padrão de telas em aplicações Flutter, isso graças a sua estrutura, que é bastante eficaz. A seguir estão descritos algumas das pripriedades que compõem o Scaffold Widget:

  * <strong>appBar</strong> - AppBar da tela, exibido no topo do Scaffold
  * <strong>body</strong> - Primeiro conteúdo a ser exibido no Scaffold
  * <strong>drawer</strong> - Um painel exibido ao lado do body, acionado por uma ação de swipe
  * <strong>floatingActionButton</strong> - Botão flutuante exibido sobre o body do Scaffold
  * <strong>bottomNavigationBar</strong> - Barra de navegação do rodapé do Scaffold

  
<h2>Appbar</h2>


Um Appbar consiste em um toolbar, Widget comum a muitas aplicações, que pode conter outros Widgets em si. Um Appbar normalmente é associado a ações em conjunto com IconButtons ligados a navegação entre partes da aplicação. Também é comumente usado em conjunto com a propriedade appBar do Widger Scaffold, que será explicado mais a frente.  A seguir temos um exemplo de uso da Appbar:


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('AppBar'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
        ],
      )
      );
    }
  
A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/126220250-929ef219-8699-4449-b157-12fe5a6f99aa.png">
</div>


Os principais atributos da BottomNavigationBar são:


* <strong>leading</strong> - Um Widget definido antes do title<br>
* <strong>title</strong> - O primeiro Widget exibido no Appbar<br>
* <strong>actions</strong> - Uma lista de Widgets agrupados em linha após o title<br>
* <strong>flexibleSpace</strong> - Trecho entre a toolbar e o bottom da Appbar<br>
* <strong>bottom</strong> - Define o bottom do Appbar


<h2>Body</h2>


<h2>Drawer</h2>


<h2>BottomNavigationBar</h2>


Um widget de material que é exibido na parte inferior de um aplicativo para selecionar entre um pequeno número de visualizações, normalmente entre três e cinco. A seguir temos um exemplo de uso da BottomNavigationBar:


    class MyBottomNavigationBar extends StatefulWidget {
      @override
      State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
    }
    
    class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
      int _selectedIndex = 0;
    
      static const TextStyle optionStyle =
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    
      List<Widget> _index = <Widget>[
        Text('Home', style: optionStyle),
        Text('Search', style: optionStyle),
        Text('Profile', style: optionStyle),
      ];
    
      void _onItemTapped(int index) {
        setState(() {
          _selectedIndex = index;
        });
      }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('BottomNavigationBar'),
          ),
          body: Center(child: _index.elementAt(_selectedIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue[800],
            onTap: _onItemTapped,
          ), //BottomNavigationBar
        ); 
      }
    }


O exemplo acima consiste na definição básica de uso de uma BottomNavigationBar. Nela criamos um statefulWidget onde iremos tratar cada state(item) da barra e a reação a sua seleção. Além disso, criamos um List que define um resultado em tela para cada item selecionado. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/126219865-efd7587e-e51c-413e-80ac-755fdbc74051.png">
</div>


Os principais atributos da BottomNavigationBar são:


* <strong>items</strong> - Itens que definem as possíveis seleções<br>
* <strong>currentIndex</strong> - Define o item de seleção padrão<br>
* <strong>selectedItemColor</strong> - Cor padrão do item selecionado<br>
* <strong>onTap</strong> - Define uma reação a cada mudança de seleção<br>


<h2>Buttons</h2>


<h2>ElevatedButtons</h2>


Um ElevatedButton é um rótulo child exibido em um Material Widget cujo Material.elevation aumenta quando clicado, revelando um efeito de clique. Ele também possui um padrão de estilo que pode ser sobrescrito quando a propriedade style é utilizada. Além disso, uma série de outras propriedades definem a possibilidade de várias outras definições de estilo. A seguir há um exemplo de criação de um ElevatedButton:

    Column(
      children: <Widget>[
        ElevatedButton(
        style: ButtonStyle( ... ),
        onPressed: null,
        child: Text('ElevatedButton'),
       ),
        ElevatedButton(
        style: ButtonStyle( ... ),
        onPressed: () {},
        child: Text('ElevatedButton'),
       )
      ]
    )


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121429593-78b93300-c94d-11eb-9709-493825aa44d8.png">
</div>

Apesar de não ser a única definição de button disponibilizada pelo MaterialApp, o Widget ElevatedButton é bastante utilizado. A seguir estão alguns dos atributos aceitos por ele:

* <strong>style</strong> - Define style do ElevatedButton
* <strong>child</strong> - Elemento cintido dentro do ElevaitedButton, seja um texto ou icon
* <strong>onPressed</strong> - Define uma chamada quando o botão é clicado
* <strong>onLongPressed</strong> - Define uma chamda quando o botão é precionado por muito tempo


<h2>Container</h2>


Um Container é um Widget de estruturação que combina widgets comuns de pinting, posicionamento e dimensionamento, de forma parecida a uma Column ou Row. Um container provê definições para os Widgets que ele contém, por isso é definido como um Widget de estruturação, essas definições incluem margens, paddings, cor, width, height etc. Exemplo de declaração de um Container:

    Center(
      child: Container(
        alignment: Alignment.center,
        child: Center(child: Text("Children")),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        height: 300,
        width: 300,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
      ),
    )

Neste caso o Container define um espaçamento padrão e um cor para si. Para criar um novo Widget dependente do Container, basta definir para ele um child. Resultado do exemplo acima:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121446422-d9eeff80-c969-11eb-8dd6-3b1e0d786ed9.png">
</div>

Por se trantar de uma estrutura, um Container possui propriedades bastantes cooperativas no sentido de customização de estruturas de inteface. Algumas delas são:

* <strong>alignment</strong> - Alinhamento do child dentro do Container
* <strong>child</strong> - Define o child contido
* <strong>color</strong> - Definição de cor do Container
* <strong>constraints</strong> - Restrições adicionais a serem aplicadas ao child
* <strong>decoration</strong> - Definição de estilo do Container
* <strong>margin</strong> - Espaço vazio que rodeia o child e seu decoration
* <strong>padding</strong> - Espaço vazio definido dentro Container, o separando internamente do child 


<h2>Decoration</h2>


O decoration é uma propriedade do Container que define uma camada de style anterior ao child, e em conjunto com o BoxContainer ou InputDecoration, e entre outros, tem suas próprias propriedades, dando um maior nível de customização ao container. Algumas delas são: 

* <strong>borderRadius</strong> - Curvatura das bordas do container, aplicável individualmente
* <strong>color</strong> - Cor de definição Container
* <strong>boxShadow</strong> - List de definições de sombreamento do Container
* <strong>gradient</strong> - Gradiente de preenchimento do container
* <strong>image</strong> - Definição de uma imagem contida


<h2>Column</h2>


Uma Column é definida como um Widget de estruturação, cuja função é agrupar elementos verticalmente. Esses elementos são agrupados em um List de Widgets associado a propriedade children da Column. A seguir há um exemplo de declaração de uma Column:

    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(...),
        ),
        Expanded(
          child: Container(...),
        ),
        Expanded(
          child: Row(
            children:  <Widget> [
              Flexible(
               child: Container(...),
             ),
              Expanded(
               child: Container(...),
             ),
            ], // <Widget>[]
          ), // Row
        ),
        Flexible(
          child: Container(...),
        ),
        Flexible(
          child: Container(...),
        )
       ], // <Widget>[]

    ) // Column

O Widget Column conta com definições de prioridade, onde um children pode ocupar mais ou menos espaço no vetor. Isso é definido pelos tipos Expanded(oculpa o espaço restante) e Flexible(cede espaço dentro da coluna). A imagem abaixo ilustra como o exemplo irá se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121446097-2ede4600-c969-11eb-9f11-ee271e7ae79e.png">
</div>

Há uma série de Widgets que podem ser associados a uma Column. A seguir estão definidos alguns deles:

* <strong>children</strong> - Lista de Widgets definidos como parte da Column
* <strong>mainAxisSize</strong> - Define quanto espaço deve ser ocupado no eixo principal
* <strong>mainAxisAlignment</strong> - Define o posicionamento dos Widgets children em paralelo ao eixo 
* <strong>verticalDirection</strong> - Determina a ordem de disposição dos Widgets children verticalmente e como interpretar o início e o fim na direção vertical


<h2>Row</h2>


Uma Row também é definida como um Widget de estruturação, cuja função é agrupar elementos horizontalmente. Esses elementos são agrupados em um List de Widgets associado a propriedade children da Row. A seguir há um exemplo de declaração de uma Row:

    Row(
      children: <Widget>[
       Flexible(
          child: Container( ... ),
        ),
       Expanded(
          child: Container( ... ),
        ),
       Flexible(
          child: Container( ... ),
        ),
      ], // <Widget>[]
    ) 

Um Row também conta com definições de prioridade, onde um children pode ocupar mais ou menos espaço dentro do vetor. Isso é definido pelos tipos Expanded(oculpa o espaço restante) e Flexible(cede espaço dentro da linha). A imagem abaixo ilustra como o exemplo irá se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121446402-cb084d00-c969-11eb-9645-4f8e5c212f9d.png">
</div>

* <strong>children</strong> - Lista de Widgets definidos como parte da Row
* <strong>mainAxisSize</strong> - Define quanto espaço deve ser ocupado no eixo principal
* <strong>mainAxisAlignment</strong> - Define o posicionamento dos Widgets children em paralelo ao eixo 
* <strong>verticalDirection</strong> - Determina a ordem de disposição dos Widgets children verticalmente e como interpretar o início e o fim na direção vertical


<h2>Assets, Images, Icons e Text</h2>

Os assets se tratam dos ativos(recursos) de uma aplicação, geralmente associado a View. O conceito de assets é bastante comum no desenvolvimento de interfaces, e o Flutter não foge à regra. Aqui os assets também são Widgets ou classes, que possuem definições de exibição determinados por propriedades individuais. Para isso o Flutter conta com a Class AssetsBundle, cunja função é gerir uma coleção de recurso usados pela aplicação.

Qualquer aplicação Flutter possui um rootBundle definido por padrão, o qual contém os recuros já citados. Para adicionar novos recuros ao rootBundle é preciso editar a subseção flutter => assets no arquivo pubspec.yaml, onde são definidas dependências tanto do Material design(android) quanto do cupertino(ios). Exemplo:

    flutter:
      uses-material-design: true
     // Para adicionar assets a sua aplicação, crie uma assets section:
      assets:
        - assets/images/
        - assets/icons/

É comum definir uma pasta assets no root da aplicação. Nela são declaradas as imagens e ícones que serão utilizados em pontos específicos do app. A seguir temos a descrição dos principais assests Widgets:  


<h2>Images</h2>


O Widget Image gera uma imagem e a exibe a partir de uma Url, arquivo, network ou asset disponibilizado, contando com uma série de classes com atributos próprios, utilizadas em situações distintas. As situações são definidas pela forma em que a imagem é disponibilizada. A seguir há uma definição padrão do Widget Image:

    Image(
      image: NetworkImage(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
      ),
    )

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121402504-58c74680-c930-11eb-8427-0d367448f900.png">
</div>


Além do Image propriamente dito, há uma série de classes(contructors) com definições distintas de fontes de imagens, usadas em situações difentes. A seguir estão algumas delas:

Obter imagens a partir de um asset bundler

    Image.asset(String name, { ... })

Obter imagens a partir de arquivos

    Image.file(File file, { ... })

Obter imagens a partir de um Uint8List

    Image.memory(Uinit8List bytes, { ... })

Obter imagens a partir de um network

    Image.network(String src, { ... })

Basicamente todos possuem as mesmas propriedades de definição de imagem, exceto por especificações relacionadas a obtenção da imagem, sendo um atributo obrigatório definido no inicio da chamada do constructor. Algumas das propriedades comuns a todos são:

* <strong>image</strong> - A imagem que será exibida
* <strong>width</strong> - Largura da imagem
* <strong>height</strong> - Altura da imagem
* <strong>alignment</strong> - Alinhamento da imagem com base nos limites da tela
* <strong>fit</strong> - Alinhamento da imagen com base em seus limites
* <strong>erroBuilder</strong> - Função que é chamada caso haja um erro no loading da imagem


<h2>Icons</h2>

O Icon é um Widget de componentes gráficos baseados na bilbioteca de icones do Material Design, e dependem da definição de um MaterialApp para serem utilizados. A seguir há um exemplo de uso do Icon Widget:

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const <Widget>[
        Icon(
          Icons.zoom_out_map_outlined,
          color: Colors.red,
          size: 50.0,
        ),
        Icon(
          Icons.hail,
          color: Colors.green,
          size: 50.0,
        ),
        Icon(
          Icons.face,
          color: Colors.blue,
          size: 50.0,
        ),
      ],
    )

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121428625-67bbf200-c94c-11eb-8258-bcf069060e71.png">
</div>

Os icons são definidos em um proporção customizavel, mas são renderizados em um squared format, evitando erros na forma do icon no processo de loading. Algumas das propriedades do Icon Widget são:

* <strong>icon</strong> - Define style do ElevaitedButton
* <strong>color</strong> - Cor definida como preenchimento da área correspondente ao icon
* <strong>sixe</strong> - Tamanho do icon, definido em pixel
* <strong>icon</strong> - Define style do ElevaitedButton


<h2>Text</h2>


O Widget Text exibe um string com um single style. Um string pode sofrer um break em múltiplas linhas ou em uma apenas, dependendo da disposição do layout. É definido pela classe Text(), cujas propriedades consistem em definições de estilo, alinhamento, e entre outros, todas opcionais. Caso essas definições sejam omitidas, o texto irá utilizar as definições de estilo mais próximas que o contenham. A seguir há um exemplo de definição de texto:

    Text(
     'Children',
     textDirection: TextDirection.rtl,
     style: TextStyle(
       fontSize: 20,
       fontWeight: FontWeight.bold,
       color: Colors.blue[900],
     ),
    )

A estilização de texto é definida no atributo style em conjunto com a classe TextStyle. Esta possui atributos próprios de definição de estilo, como fontfamily, color, fontwheight e entre ountros.

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121446461-f1c68380-c969-11eb-927f-cac39d52b4a2.png">
</div>

Alguns dos atributos de um Widget de estilização de texto são:

* <strong>data</strong> - Texto a ser exibido
* <strong>textDirection</strong> - Direção de exibição do texto
* <strong>textAlign</strong> - Definição de alinhamento horizontal do texto
* <strong>style</strong> - Definição de estilo do texto


<h2>Layout</h2>


Toda desenvolvedor Flutter tem uma relação de extrema proximidade com o design e as sensações que pretende causar no usuário. Portanto, é muito importante gastar certo tempo pensando em como estruturar o layout da aplicação. Quais Widgets utilizar e como utilizar definem quão harmonioso será o app. Para tal, o Flutter dá ao desenvolvedor uma série de Widgets capazes de criar uma boa experiência para o usuário:


<h2>Aling</h2>


A definição de alinhamento de um Widget é feita de várias formas, uma delas é o Align. O Align permite posicionar um Widget child em praticamente qualquer parte do Widget que o contém, possuindo alinhamentos pré definidos ou determinados por valores de alinhamento limitados pelo alcance da área correspondente ao Widget pai. A classe Align conta com a propriedade alignment, que deriva do atributo AlignmentGeometry. A seguir há um exemplo que exibe diferentes posições definidas pelo Align Widget:

    Column(
     children: <Widget>[
       Container(
         height: 100,
         width: 150,
         child: Align(
           alignment: Alignment.topLeft,
           child: Text(
             'Child',
             style: TextStyle(fontSize: 20, color: Colors.blue[800]),
           ),
         ),
         decoration: BoxDecoration(color: Colors.white),
         margin: EdgeInsets.all(10.0),
       ),
       Container(
         height: 100,
         width: 150,
         child: Align(
           alignment: Alignment.topRight,
           child: Text(
             'Child',
             style: TextStyle(fontSize: 20, color: Colors.blue[800]),
           ),
         ),
         decoration: BoxDecoration(color: Colors.white),
         margin: EdgeInsets.all(10.0),
       ),
       Container(
         height: 100,
         width: 150,
         child: Align(
           alignment: Alignment.center,
           child: Text(
             'Child',
             style: TextStyle(fontSize: 20, color: Colors.blue[800]),
           ),
         ),
         decoration: BoxDecoration(color: Colors.white),
         margin: EdgeInsets.all(10.0),
       ),
       Container(
         height: 100,
         width: 150,
         child: Align(
           alignment: Alignment.bottomLeft,
           child: Text(
             'Child',
             style: TextStyle(fontSize: 20, color: Colors.blue[800]),
           ),
         ),
         decoration: BoxDecoration(color: Colors.white),
         margin: EdgeInsets.all(10.0),
       ),
       Container(
         height: 100,
         width: 150,
         child: Align(
           alignment: Alignment.bottomRight,
           child: Text(
             'Child',
             style: TextStyle(fontSize: 20, color: Colors.blue[800]),
           ),
         ),
         decoration: BoxDecoration(color: Colors.white),
         margin: EdgeInsets.all(10.0),
       )
     ],
    )
     

O exemplo acima demonstra um dos tipo de definição de alinhamento. Esses padrões de alinhamento definem posições específicas da área disponível. A imagem abaixo ilustra como o exemplo irá se comportar:

<br> 

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121556328-28dc7980-c9ea-11eb-9087-1fbc26866344.png">
</div>

<br> 

Essas posições são definidas a partir da classe Alignment, e são atribuidas a propriedade alignment do Widget Align(). A seguir temos uma lista dessas posições:

* center
* centerleft
* centerRight
* topCenter
* topLeft
* topRight
* bottomCenter
* bottomLeft
* bottomRight

Como já foi citado, também é possível definir o alinhamento com base em valores. Estes valor são chamados de cordenadas e definem a posição com base na altura e largura do Widget sendo percorrido. A seguir há um exemplo de alinhamento por cordenadas:

    Align(
      alignment: Alignment(0.2, 0.6),
      child: Text(
        'Child', 
        style: TextStyle(fontSize: 20, color: Colors.blue[800]),
      ),
    )

As coordenadas são definidas em um eixo horizontal/vertical, correspondendo respectivamente a largura e a altura. Suas dimensões vão de -0.9 a 0.9, tendo 0.1 como o ponto central, e cada uma dessas posições possuem dimensões de -0.09 a 0.09. A imagem abaixo ilustra como o exemplo irá se comportar: 

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/122596875-e72e7d00-d040-11eb-9f5f-8b544d8cc167.png">
</div>


<h2>AspectRatio</h2>


O AspectRatio faz parte dos Widgets de definição de layout graças a sua capacidade de definir a proporção de componentes gráficos. Essa proporção é definida pelo resultado da razão entre o width e o height de um Widget, obtida a partir da operação W / h = AspectRatio. O resultado adapta o child dentro do espaço correspondente a área do Widget que o carrega. A seguir há um exemplo de uso do AspectRatio:

    AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.yellow),
        child: Text(
          'Child',
          style: TextStyle(color: Colors.blue[800], fontSize: 20),
        ),
      ),
    )

Um ponto que deve ser lembrado ao usar o AspectRatio é se certificar que ele seja livre para se dimensionar livremente. Usar um AspectRatio dentro de Widget Expanded() por exemplo, o força a se expandir junto com o Expanded(), impedindo seu próprio dimensionamento. Portanto, ao usa o AspectRatio deve-se definir um Align() ou alignment, como no exempli acima. A imagem a seguir ilustra como o mesmo irá se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121577098-89c27c80-c9ff-11eb-86f7-1a975332ef15.png">
</div>

O AspectRatio também pode ser definido diretamente pela razão entre os dois valor, assim como no exemplo baixo:

    AspectRatio(
      aspectRatio: 0.6,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.yellow),
        child: Text(
          'Child',
          style: TextStyle(color: Colors.blue[800], fontSize: 20),
        ),
      ),
    )

<h2>ConstrainedBox</h2>


Assim como os demais Widgets de layout, o ConstrainedBox define as dimenções de um componente de inteface. O ConstrainedBox permite definir width ou height minimos e máximos, tornando possível redimensionar certos componentes caso necessário. Abaixo há uma exemplo de uso do ConstrainedBox:

    ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 260, maxHeight: 80),
        child: Container(
          color: Colors.yellow,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text.rich(TextSpan(children: <TextSpan>[
            TextSpan(
              text: 'Some text that you want to',
              style: TextStyle(fontSize: 20)),
            TextSpan(
              text: ' break',
               style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold))
              ]
            )
          ),
        ),
      )

O exemplo mostra uma quebra de texto definida por uma largura máxia atribuída ao ConstraintBox. Esse tipo de recurso se mostra essencial quando é necessário alocar muitos Widgets em apenas uma tela. A imagem a seguir ilustra como o exemplo acima irá se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121586511-1eca7300-ca0a-11eb-83ac-dd91d54f0b31.png">
</div>

Outra situação em que é possível aplicar o ConstraintBox é quando um Widget child precisar oculpar todo o espaço correspondente ao Widget que o carrega. Exemplo:


    ConstrainedBox(
       constraints: BoxConstraints.expand(),
       child: Container(
         color: Colors.yellow,
         padding: EdgeInsets.all(10),
         alignment: Alignment.center,
         child: Text.rich(TextSpan(children: <TextSpan>[
           TextSpan(
             text: 'Some text that you want to',
             style: TextStyle(fontSize: 20)),
           TextSpan(
             text: ' break',
             style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold))
            ]
          )
        ),
      ),
    )


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121586564-30137f80-ca0a-11eb-867b-ac1b3feefa71.png">
</div>


<h2>Expanded</h2>


O já mencionado Expanded é um Widget de definição de dimenções, normalmente associado a um Widget Multi-child, como uma Column ou row. Ele basicamente indica qual dos Widgets do vetor devem ocupar mais espaço em relação aos demias. A seguir há um exemplo de uso do Expanded:

    Center(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 150,
            width: 500,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 500,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 150,
            width: 500,
          ),
        ],
      ),
    )

Com o Expanded é possível atribuír mais espaço de dimensionamento a um Widget específico. A imagem a seguir ilustra como o exemplo acima irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121590423-b0d47a80-ca0e-11eb-9758-23dbc513f055.png">
</div>

Outra forma de uso é definindo miltiplos child em conjunto com um flex factor, priorizando o espaço disponível para determinados Widgets:

    Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              height: 100,
            )),
        Container(
          color: Colors.yellow,
          height: 100,
          width: 70,
        ),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 100,
            )),
         ],
      )

O flex factor define uma ordem de grandeza, e por consequência, de prioridade para ocupar mais espaço na Row. A imagem a seguir ilustra como o exemplo acima irá se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121592232-ce0a4880-ca10-11eb-8d68-7b13254a431e.png">
</div>


<h2>FittedBox</h2>


Muitos Widgets podem ser definidos como box, podendo ser alinhados, agrupados ou mesmo postos um dentro do outro. O FittedBox age quando o espaço correspondente a um Widget é diferente de seu child, com isso é possível adaptar o espaço que o child oculpa. Há uma série de opções de 'encaixe', as quais podem ser definidas na principal propriedade do FittedBox Widget, a fit, que recebe um Boxfit como valor. A seguir temos exemplos de uso do FittedBox:

    Container(
     width: 500,
     decoration: BoxDecoration(color: Colors.blue[800]),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Container(
           color: Colors.white,
           height: 100,
           width: 100,
           margin: EdgeInsets.all(10),
           child: FittedBox(
             fit: BoxFit.cover,
             child: Text(
               'Child',
               style: TextStyle(fontSize: 20),
             ),
           ),
         ),
         Container(
           color: Colors.white,
           height: 100,
           width: 100,
           margin: EdgeInsets.all(10),
           child: FittedBox(
             fit: BoxFit.fill,
             child: Text(
               'Child',
               style: TextStyle(fontSize: 20),
             ),
           ),
         ),
         Container(
           color: Colors.white,
           height: 20,
           width: 100,
           margin: EdgeInsets.all(10),
           child: FittedBox(
             fit: BoxFit.fitHeight,
             child: Text(
               'Child',
               style: TextStyle(fontSize: 20),
             ),
           ),
         ),
         Container(
           color: Colors.white,
           height: 100,
           width: 50,
           margin: EdgeInsets.all(10),
           child: FittedBox(
             fit: BoxFit.fitWidth,
             child: Text(
               'Child',
               style: TextStyle(fontSize: 20),
             ),
           ),
         ),
         Container(
           color: Colors.white,
           height: 100,
           width: 100,
           margin: EdgeInsets.all(10),
           child: FittedBox(
             fit: BoxFit.none,
             child: Text(
               'Child',
               style: TextStyle(fontSize: 20),
             ),
           ),
         )
       ],
     )

O FittedBox é um dos Widgets com maior nível de adaptabilidade, pode ser utilizado de diversas formas e em diversas situações. A imagem a seguir mostra como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121701665-82ef4480-caa7-11eb-932b-e579c72c6a6f.png">
</div>

<br>

Como já foi mencionado, o FittedBox conta com a propriedade fit, que define o nível de ajuste de posicionamento do child.Além disso, o FittedBox conta também com a propriedade alignment, qua ajuda no dimensionamento dos Widgets:

* <strong>fit</strong>
* <strong>alignment</strong>

A seguir estão as descritas cada propriedade do BoxFit:

* <strong>cover</strong> - Torna o espaço oculpado pelo child maior que o disponível 
* <strong>fill</strong> -  Encaixa o child no espaço disponível sem considerar as proporções
* <strong>fitHeight</strong> - Adapta o tamanho do child de acordo com a altura do Widget pai
* <strong>fitWidth</strong> - Adapta o tamanho do child de acordo com a largura do Widget pai
* <strong>none</strong> - Anula os efeitos do FittedBox


<h2>FractionallySizedBox</h2>


O FractionallySizedBox é um Widget que dimensiona um Widget child definido uma fração do valor disponível para ser oculpado. Essa fração é definida por um Factor, podendo ser aplicado ao height ou width do Widget, sendo ambos atributos da classe FractionallySizedBox(). Esses atributos recebem um double como definição de espaçamento. A seguir há um exemplo de uso do FractionallySizedBox():

    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.white,
          height: 200,
          width: 200,
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: FractionallySizedBox(
            heightFactor: 1.0,
            widthFactor: 0.6,
            child: Container(
              decoration: BoxDecoration(color: Colors.yellow),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: 200,
          width: 200,
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: FractionallySizedBox(
            heightFactor: 0.6,
            widthFactor: 1.0,
            child: Container(
              decoration: BoxDecoration(color: Colors.yellow),
            ),
          ),
        )
      ],
    )

O quanto um child oculpa é definido por uma escala de 0.1(10%) a 1.0(100%). No exemplo acima é definido que o child do primeiro container irá oculpar 100% dos 200px de altura e 60% dos 200px de largura, o inverso ocorre com o segundo container. A imagem a seguir ilustra como o exemplo irá se compoirtar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121812186-4fdeb980-cc3d-11eb-8f36-b9ccb114d2ad.png">
</div>

Os principais Factores da classe FractionallySizedBox() são:

* <strong>heightFactor</strong> - Fator de altura
* <strong>widthFactor</strong> - Fator de largura


<h2>LimitedBox</h2>


Muitos Widgets child seguem as dimenções dos widgets que os carregam, limitando seu tamanho de acrodo com o tamanho disponível. Há casos em que as dimensões dos Widgets pais não são definidas, como em ListView, Column ou Row. Nestes casos é possível utilizar o LimitedBox, cuja função é definir um tamanho padrão a ser seguido. A seguir há um exemplo de uso do LimitedBox:

    ListView(
      children: [
      for (var i = 0; i < 10; i++)
        LimitedBox(
          maxHeight: 200,
          maxWidth: 200,
          child: Container(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(color: Colors.white)),
        )
    ]

O exemplo usa um ListView como Widget pai, tembém utiliza um Loop for para gerar uma sequência de Containers(child) aos quais será aplicado o LimitedBox. A imagems a seguir ilustram como o exemplo irá se comportar:

<br>

<div align="center">
  <img width="35%" src="https://user-images.githubusercontent.com/61476935/121788819-d2686a00-cba6-11eb-8519-6da69e4b19ec.png">
  <img width="35%" src="https://user-images.githubusercontent.com/61476935/121788837-2410f480-cba7-11eb-90b8-8b8fd48b7264.png">
</div>

<br>

O LimitedBox define um tamanho padrão máximo para todos os containers que foram gerados, permitindo um scroll cujo limite é o último índice do ListView, isso é possível graças aos atributos a seguir:

* <strong>maxHeight</strong> - Altura máximo de um child
* <strong>maxWidth</strong> - Largura máxima de um child


<h2>Padding</h2>


O padding define o espaçamento externo que um Widget terá com relação aos outros elementos da estrutura. Um padding é definido a partir do espaço que um Widget oculpa, diminuindo seu tamanho e substituindo esse espaço por um espaço vazio. A seguir há um exemplo de uso do Widget padding():


    Padding(
      padding: EdgeInsets.all(100),
      child: Container(
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    )


Um padding é definido através do atributo padding que recebe um EdgeInsets, Wideget responsável por definir um conjunto imutável de deslocamento em cada uma das quatro direções cardeais. Por isso é possível definir um padding para cada direção individulmente ou para todos igualmente. No exemplo acima, são definidos 100px de espaçamento entre o Widget pai e o child. A imagem a seguir ilustra como o exemplo acima irá se comportar:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121789339-89ff7b00-cbab-11eb-8bb5-76895ff20951.png">
</div>


<h2>EdgeInsets</h2>


Anteriormente mencionado, o EdgeInsets define dimensionamento nas quatro direções existentes em um Widget. É normalmente associado a definição de margins e paddings, e possui atributos especificando para qual direção será aplicado o espaçamento. Estes são:


<h3>EdgeInsets.all(value)</h3>


Define que o espaçamento será aplicado nas quatro direções cardinais:

    Container(
     height: 90,
     width: 200,
     color: Colors.yellow,
     margin: EdgeInsets.all(10),
     padding: EdgeInsets.all(10),
     child: Container(
       color: Colors.orange,
       alignment: Alignment.center,
       child: Text('All', style: TextStyle(fontSize: 20)),
     )),


<h3>EdgeInsets.only(left: value)</h3>


Define que o espaçamento será aplicado apenas a esquerda:

    Container(
     height: 90,
     width: 200,
     color: Colors.yellow,
     margin: EdgeInsets.all(10),
     padding: EdgeInsets.only(left: 140),
     child: Container(
       color: Colors.orange,
       alignment: Alignment.center,
       child: Text('left only', style: TextStyle(fontSize: 20)),
     )), 


<h3>EdgeInsets.only(right: value)</h3>


Define que o espaçamento será aplicado apenas a direita:

    Container(
      height: 90,
      width: 200,
      color: Colors.yellow,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(right: 65),
      child: Container(
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text('right only', style: TextStyle(fontSize: 20)),
      )),


<h3>EdgeInsets.only(top: value)</h3>


Define que o espaçamento será aplicado apenas no topo:

    Container(
      height: 90,
      width: 200,
      color: Colors.yellow,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 65),
      child: Container(
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text('Top only', style: TextStyle(fontSize: 20)),
      )),


<h3>EdgeInsets.only(bottom: value)</h3>


Define que o espaçamento será aplicado apenas no bottom:

    Container(
      height: 90,
      width: 200,
      color: Colors.yellow,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(bottom: 30),
      child: Container(
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text('Bottom only', style: TextStyle(fontSize: 20)),
      )),


<h3>EdgeInsets.symmetric(vertical: value, horizontal: value)</h3>


Define o espaçamento vertical e horizontalmente:

    Container(
      height: 90,
      width: 200,
      color: Colors.yellow,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 55),
      child: Container(
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text('Symmetric', style: TextStyle(fontSize: 20)),
      )),


<h3>EdgeInsets.fromLTRB(left, right, top, bottom)</h3>


Define um espaçamento único para cada direção:

    Container(
       height: 90,
       width: 200,
       color: Colors.yellow,
       margin: EdgeInsets.all(10),
       padding: EdgeInsets.fromLTRB(10, 30, 50, 90),
       child: Container(
         color: Colors.orange,
         alignment: Alignment.center,
         child: Text('Symmetric', style: TextStyle(fontSize: 20)),
       )),

Cada definição aceita números inteiros e decimais como valor de espaçamento, sendo esses definidos em pixels


<h2>SizedBox</h2>


O SizedBox é um Widget cujas definições de height e width são herdadas por seu child. Essas definições são feitas a partir das propriedades width e height, definidas em pixels. A seguir há um exemplo de uso do SizedBox:

    SizedBox(
        width: 300.0,
        height: 300.0,
        child: Card(
          color: Colors.blue[800],
        ),
      )


<h2>Transform</h2>


O Widget Transform aplica uma série de efeitos sobre seu child antes da renderização. Possui muitas funcinalidades aplicáveis à interação com o usuário, tais como a rotação de um Widget em seu eixo, transições, bouncy carousel e inúmeras outras customizações. Essas transformações são criadas com o uso de Constructors específicos, estes são:


<h3>Transform()</h3>


Principal constructor da classe, cuja principal propriedade é a transform e esta recebe um Matrix4. O Matrix4 é uma classe cuja função é definir um eixo na matriz de rotação do Widget ao qual ela é aplicada. A seguir temos um exemplo de uso do Transform():

    Transform(
       transform: Matrix4.skewY(0.3)..rotateZ(-9 / 48.0),
       child: Container(
         height: 150,
         width: 150,
         color: Colors.white,
       ),
     )

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121811712-96331900-cc3b-11eb-9f44-9a9f0cb5c112.png">
</div>


<h3>Transform.rotate()</h3>


O rotate, cuja principal propriedade é o angle, recebe um ângulo de definição que rotaciona o Widget. O ângulo é dado pela razão entre dois valore ou pelo resultado da operação. A seguir temos um exemplo de uso do Transform.rotate():

    Transform.rotate(
      angle: 3 / 4, // 45 deg)
      child: Container(
        height: 150,
        width: 150,
        color: Colors.white,
      ),
    ),

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121811740-aa771600-cc3b-11eb-8daa-778835fed838.png">
</div>


<h2>Scrolling</h2>


Qualquer aplicativo conta com um scroll, mesmo mínimo, como forma de navegação. O Flutter conta com uma série de tipos e definiçãos de scroll, todos relacionados a classe Scrollable. A classe Scrollable implemanta o modelo de interação para um scrollable Widget, incluindo reconhecimento de gestos, mas não modifica como a janela de visualização, que realmente exibe os children, é construída.

É incomum criar diretamente utilizando a classe Scrollable, no lugar disso considere utilizar um ListView ou GridView, os quais combinam rolagem, janela de visualização e um modelo de layout. Os principais Scrollable Widgets são:


<h2>ListView</h2>


O ListView é a forma mais comum de uso da Scrollable classe. Ela agrupa uma lista de items em uma Scrollable lits definidos na propriedade children, comum a Widgets que agrupam outros Widgets, como Row e Column. Também é possível definir a direção de exibição dos children, sendo horizontal ou vertical, ambos definidos na propriedade scrollDirection. A seguir temos um exemplo de uso do ListView():

    ListView(
       children: <Widget>[
         Container(
             height: 100,
             color: Colors.orange[500],
             alignment: Alignment.center,
             child: Text('Child', style: TextStyle(fontSize: 20))),
         Container(
             height: 100,
             color: Colors.orange[600],
             alignment: Alignment.center,
             child: Text('Child', style: TextStyle(fontSize: 20))),
         Container(
             height: 100,
             color: Colors.orange[700],
             alignment: Alignment.center,
             child: Text('Child', style: TextStyle(fontSize: 20))),
         Container(
             height: 100,
             color: Colors.orange[800],
             alignment: Alignment.center,
             child: Text('Child', style: TextStyle(fontSize: 20)))
       ],
     )

O exemplo define uma sequência de Widgets child, cada um oculpando determinado espaço dentro da lista. Caso uma lista atinja um tamnho maior que o grid da tela, ela passa a ser scrollable, sendo possível acessar os items fora da lista com um scroll. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121813717-ad760480-cc43-11eb-83ba-2cc9214680c4.png">
</div>


<h2>ListView.builder()</h2>


O ListView.builder() é utilizado para gerar uma lista dinamicamente, removendo um item da View caso este seja removido da lista. A seguir temos um exemplo de uso do ListView.builder():

    class MyHomePage extends StatelessWidget {
      final List<String> children = <String>['First', 'Second', 'Third'];
      final List<int> colorCodes = <int>[600, 700, 800];
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                height: 1000,
                width: 500,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blue[800]),
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: children.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        color: Colors.orange[colorCodes[index]],
                        child: Center(child: Text('${children[index]}')),
                      );
                    }
                  )
                )
              );
            }
          }

O exemplo acima gera uma lista de três items, estes sendo definidos em um String List, e os valores correspondentes as cores definidos em um List a parte. O liste builder usa das propriedades itemCount e itemBuilder para, respectivamente, definir o length do Array children e fazer um build. O build gera um container para cada item na lista, que recebe a cor correspondente a sua posição equivalente na List colorCodes. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121814251-60476200-cc46-11eb-9afd-8f44f8a0b639.png">
</div>


<h2>ListView.separated()</h2>


Além disso, também é possível tratar o espaçamento entre cada índice da lista. O ListView.separated faz uso da propriedade separatorBuilder, que recebe uma definição de espaçamento. A seguir tempos um exemplo de uso do ListView.separated:

    ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: children.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          color: Colors.orange[colorCodes[index]],
          child: Center(child: Text('${children[index]}')),
        );
      }
    )

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121818626-b7f1c780-cc5e-11eb-99ac-3c3ef82bae39.png">
</div>


<h2>GridView</h2>


O GridView é uma outra forma de dimensionar os elementos de uma lista, podendo determinar quantos Widgets por eixo transversal a lista irá exibir. É normalmente utilizado o GridView em conjunto com o constructor count. A seguir temos um exemplo de uso do GridView.count():

    GridView.count(
          crossAxisCount: 4,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text('first'),
              color: Colors.orange[100],
            ),

            ...
            
          ],
        )

Os elementos children do GridView são alinhados de acordo com o valor int de elementos por eixo, isso pode ser aplicado a uma lista mais longa de elementos. A imagem a seguir ilustra como o exemplo acima irá se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121818118-a955e100-cc5b-11eb-9c6f-f73cddebccbc.png">
</div>

Também é possível definir um espaçamento padrão para cada eixo. O espaçamento horizontal é definido através do  mainAxisSpacing: double value:

    GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 20.0,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text('first'),
              color: Colors.orange[100],
            ),

            ...
            
          ],
        )

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121818644-d8218680-cc5e-11eb-9e07-bb7b760e4545.png">
</div>
  
O mesmo pode ser dito quanto ao espaçamento vertical, que é definido a partir da propriedade crossAxisSpacing: double value:

     GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 20.0,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text('first'),
              color: Colors.orange[100],
            ),

            ...
            
          ],
        )

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121818847-28e5af00-cc60-11eb-8730-92d04cfbc3be.png">
</div>


<h2>PageView</h2>


O PageView, assim como os Widgets anteriores, define uma Scrollable List. Neste caso, cada índice da List é forçado a preencher o espaço correspondente a viewport, ou seja, cada índice passa a ser uma página do app. O PageView é definido em conjunto com um PageControll, que por sua vez declara qual das página(índice) será visto primeiro. A seguir temos um exmplo de uso do PageView():

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(title: "My App", home: Scaffold(body: MyHomePage()));
      }
    }
    
    class MyHomePage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        final PageController controller = PageController(initialPage: 0);
        return PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: <Widget>[
            Container(
              color: Colors.blue[700],
              alignment: Alignment.center,
              child: Text('First Page'),
            ),
            Container(
              color: Colors.blue[800],
              alignment: Alignment.center,
              child: Text('Second Page'),
            ),
            Container(
              color: Colors.blue[900],
              alignment: Alignment.center,
              child: Text('Third Page'),
            )
          ],
        );
      }
    }


Perceba que em casos de uso do PageView, o mesmo é definido como estrutura padrão, neste caso sendo retornado pela principal classe da main.dart file. Também é importante observar o PageController(initialPage: 0);, que trata de aplicar a posição que dever ser exibida primeiro. A imagem a seguir ilustra como o exemplo acima irá se comportar:

<br>

<div align="center">
  <img width="28%" src="https://user-images.githubusercontent.com/61476935/121820950-f5a91d00-cc6b-11eb-9dc8-efce54a64b9b.png">
  <img width="28%" src="https://user-images.githubusercontent.com/61476935/121820575-09ec1a80-cc6a-11eb-9358-fec289c9cb05.png">
  <img width="28%" src="https://user-images.githubusercontent.com/61476935/121820683-9bf42300-cc6a-11eb-91f8-c957d3266887.png">
</div>

<br>

Também é possível redefinir a direção do scroll, que por padrão é Axis.horizontal. Para definir o scroll como vertical usa-se o Axis.vertical. Veja um exemplo:

    PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: <Widget>[
        
        ...

      ],
    );


<h1>Flutter State Management</h1>


A programação reativa gerencia o fluxo de dados e a propagação de mudanças em uma aplicação, também chamados de estado da aplicação. A forma como o fluxo de dados ocorre influencia de formas deversas, definindo um melhor ou pior desempenho, dependendo de como é aplicada. Com o Flutter é possível abordar o gerenciamento de estado de diversas formas, mas antes de entrarmos nesses tópicos, vamos entender melhor o que é o State para uma aplicação Flutter:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/122956044-0c7bfd80-d357-11eb-901c-86ac2c9a830d.png">
</div>


A imagem acima ilustra o fluxo de dados entre diferentes partes de uma aplicação, definindo mundaças diretas na User Interface e consequentemente atualizando seu estado. Um item que passa a ser listado no carrinho de compras possui um novo estado, assim como o próprio carrinho. Caso um item seja excluído, ambos os estados, do carrinho e do item, são atualizados. Perceba também que aqui as informações são atualizadas ou realocada.


<h2>Programação Declarativa</h2>


Diferente de outros frameworks como o Android SDK ou o IOS UIKit, o Flutter permite desenvolver aplicações de forma declarativa, onde partes da aplicação podem sofrer um rebuild do zero sem a necessidade de modificação. O que significa que o Flutter constroi a interface para refletir o atual estado do app:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/122969485-13107200-d363-11eb-96f8-e29f6f6c0c2e.png">
</div>


Quando o estado do app muda (por exemplo, o usuário ativa um botão na tela de configurações), você altera o estado e isso aciona um redraw da interface do usuário. Não há nenhuma mudança imperativa da própria UI - o estado é alterado e a UI é reconstruída do zero. A programação declarativa traz muitos beneficios, normalmente há apenas um caminho para cada state da Ui, e com isso é possível descrever como a Ui irá se comportar em cada estado declarado. A seguir veremos as definições básicas de interface para gerenciamento de um State:


<h2>StateLessWidget</h2>


Os Widgets que herdam de uma StateLessWidget são definidos como imutáveis, ou seja, características neles declaradas não podem ser alteradas se não manualmente, portanto não possuem um controle ou mesmo definição de State. Os Widgets que não possuem uma definição de estado são utilizados para estruturar a aplicação em partes não afetadas pela mudanço no State. A seguir há um exemplo de declaração de um StateLessWidget:


    class MeuWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Container();
      }
    }


<h2>StatefulWidget</h2>


Sendo o oposto dos StatelessWidget, herdam da classe StatefulWidget a mutabilidade do State e são utilizados de forma recorrente em paralelo aos StatelessWidget. Tabém utilizam uma estrutura de classes e métodos específicos para tratar 
a mudança de estado. A seguir há um exemplo de declaração de um StateFulWidget:


    class MeuWidget extends StatefulWidget {
      @override

      _MeuWidgetState createState() => _MeuWidgetState();
    }
    
    class _MeuWidgetState extends State<MeuWidget> {
      @override
      Widget build(BuildContext context) {
        return Container();
      }
    }


<div align="center">
  <h5>Um exemplo básico de uso do StatefulWidget é o app padrão que o Flutter cria, onde há um counter e o mesmo é incrementado com o click de um FloatingActionButton.</h5>
</div>


<h2>createState Method</h2>


O Flutter pode chamar esse método várias vezes durante o tempo de vida de um StatefulWidget. Por exemplo, se o widget for inserido na árvore em vários locais, a estrutura criará um objeto State separado para cada local. Da mesma forma, se o widget for removido da árvore e posteriormente reinserido, o Flutter irá chamar o createState novamente para criar um novo objeto State, simplificando o ciclo de vida dos objetos State.


<h2>State Class</h2>


A classe State define o comportamento da interface de acordo com o estado atual do mesmo, ela é responsável por definir o State e fazer um rebuild a cada mudança. O build ou rebuild é feito através do método build, o qual será visto a seguir.


<h2>build Method</h2>


Tanto as classes que hendam da classe StatefulWidget quanto StatelessWidget herdam o método build. O método build, definido como Widget type(retona um Widget), é o responsável por criar um valor de retorno que será alocado na árvore de Widgets a cada atualização do State. Nele é declarado um BuildContext, uma classe que identifica a localização de um widget na árvore de widgets. O exemplo a seguir mostra a relação entre o context e o Widget de retorno:


    Widget build(BuildContext context) {
      // here, Container.of(context) returns null
        return Container();
      }


Tendo definido o que é um State para o Flutter, é importante entender o mesmo conceito, porém, observando a real arquitetura de um app. Em uma aplicação real, as definições de State são tidas pelas informações que permanecem contidas em apenas um Widget e as que trafegam entre os demais. Elas são respectivamente:


<h2>Ephemeral State</h2>


Algumas definições simplistas de Ephemeral States são a página padrão de um ListView, o progresso atual de uma animação ou a atual guia selecionada em uma BottomNavigationBar. Nesses casos, todos os estados são definidos no próprio Widget, em outras palavras, não é preciso utilizar o state management para tratá-los. No exemplo a seguir vemos como a seleção padrão em uma bottom navigation bar é armazenada no campo _index da classe _MyHomepageState, sendo este um exemplo de Ephemeral state:


    class MyHomepage extends StatefulWidget {
      @override
      _MyHomepageState createState() => _MyHomepageState();
    }
    
    class _MyHomepageState extends State<MyHomepage> {
      int _index = 0;
    
      @override
      Widget build(BuildContext context) {
        return BottomNavigationBar(

          // Atributo que recebe o índice padrão

          currentIndex: _index,

          onTap: (newIndex) {
            setState(() {
              _index = newIndex;
            });
          },
          // ... items ...
        );
      }
    }


<div align="center">
  <h5>Com este exemplo é possível ver que o State nele declarado(_index) não é importante para outros Widgets, o definindo como um Ephemeral State.</h5>
</div>


<h2>App State</h2>


O App State, tabém chamado de shared state, se caracteriza pelo compartilhamento do mesmo entre os demais Widgets ou partes da aplicação. Alguns exemplos simplórios de App States são as user preferences, informações de login, notificações em apps de redes sociais, um carrinho de compras em um e-commerce e entre outros. 


Contudo, é importante ter em mente que ambos podem ser utilizados da forma que o desenvolvedor bem entender, com suas exceções. Para definir de forma mais lógica qual tipo de State utilizar, o diagarama a seguir ilustra as formas mais comuns de uso:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/122982146-e5322a00-d370-11eb-986c-9ec755ce1197.png">
</div>


<h2>Abordagens de Gerenciamento</h2>


O Flutter possui uma série de abordagens do state management, cada uma com suas pecularidades e formas de uso, além de compatibilidade com uma série de bibliotecas cujas funções são proporcionar um uso mais coerente e favorável do recurso ao desenvolvedor. A seguir entraremos em contato com as principais ferramentas que o Flutter disponibiliza para fins de gerenciamento de estado de uma aplicação:


<h2>setState</h2>


O setState, ou gerência de estado implícita, é um low-level approach, normalmente utilizado para tratar ephemeral states. Sua principal função no contexto de gerenciamento é notificar o Flutter de que houve uma mudança no internal state do objeto ou Widget, além de definir um novo valor de State. O método setState é estruturado da seguinte forma:


    setState(() { _myState = newValue; });


A seguir temos um exemplo de declaração e uso do seState, utilizando o mesmo princípio de increment que o Flutter disponibiliza em seus exemplos:


    import 'package:flutter/material.dart';
    
    class SetState extends StatefulWidget {
      @override
      _MyState createState() => _MyState();
    }
    
    class _MyState extends State<SetState> {
      int _favorite = 0;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 300,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                              color: Colors.pink,
                              onPressed: () {
                                setState(() {
                                  _favorite++;
                                });
                              },
                              icon: Icon(
                                Icons.favorite,
                                size: 40.0,
                              )),
                          Text(
                            '$_favorite',
                            style: TextStyle(color: Colors.pink),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    }


O exemplo utiliza o setState method para simular um favorite, recurso muito comum em redes sociais. Um detalhe importante aqui é que o setState pode ser utilizado de formas distintas, sendo neste caso chamado diretamente pelo onPress do IconButton. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123119216-b3c16900-d419-11eb-8e69-3894993fca6c.png">
</div>


<h2>InheritedWidget & InheritedModel</h2>


Também definidos como um low-level approach, o uso dos InheritedWidget & InheritedModel volta o State Management para a comunicação entre Widgets hierarquicamente ligados, também chamados de ancestors e children. 


<h2>Provider</h2>


<h2>Redux</h2>


<h2>Fish-Redux</h2>


<h2>BLoC / Rx</h2>


<h2>GetIt</h2>


<h2>MobX</h2>


O MobX é uma biblioteca de State Management que facilita o processo de interação entre os dados de uma aplicação e sua UI de forma reativa, gerenciando tanto estados locais quanto globais. Ele possui uma tríade de conseitos básicos essenciais que juntos formam um escopo fechado de gerenciamento. 


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123152016-7ae5bc00-d43a-11eb-8318-8904605b1dea.png">
</div>


A seguir veremos esses conceitos de forma mais aprofundada associados a um exemplo prático. O app será semelhante ao app de counter disponibilizado pelo Flutter e que usa os conceitos do setState method. Neste caso, iremos aplicar parte da tríade individualmente, mostrando o resultado da junção de todos ao fim. Porém, antes de prosseguir com as definiçôes, é preciso ter o mobx package alocado nas dependências do novo projeto. Portanto, siga os passos abaixo:

No arquivo pubspec.yaml, logo após cupertino_icons, defina as seguintes dependências:


    mobx: ^2.0.0
    flutter_mobx: ^2.0.0


O primeiro package é referente ao MobX em si, já o segundo define o acesso a um Widget específico e muito importante para a criação e uso das reactions. As versões indicadas são as mais atuais neste momento, caso você queira se assegurar de estar utilizando as versões mais recentes no momento em que está lendo, verifique em [MobX.dart](https://mobx.netlify.app/getting-started). 

Após criar as dependências e salvar o arquivo, o próprio Flutter detecta as mudanças e passa a disponibilizá-las. Mas, caso seu app não reconheça as alterações, rode o seguinte comando na pasta do projeto:


    flutter packages get  


Em seguida já é possível gerenciar o State do counter app utilizando o MobX. Agora, para criarmos o exemplo observe os passos a seguir:

Na pasta lib do projeto, crie uma nova file chamada controller. Ela irá conter a Action e o Observable do app counter:


    import 'package:mobx/mobx.dart';
    
    class Controller {
      var counter = Observable(0);
    
      late Action increment;
    
      Controller() {
        increment = Action(_increment);
      }
    
      _increment() => counter.value++;
    }


Em uma file própria, crie a classe na qual iremos definir a estrutura e a chamada do Controller criado:


    import 'package:flutter/material.dart';
    import 'package:flutter_mobx/flutter_mobx.dart';
    import 'package:mobx_aula/controller.dart';
    
    class Home extends StatefulWidget {
      @override
      _HomeState createState() => _HomeState();
    }
    
    class _HomeState extends State<Home> {
    
      Controller controller = Controller();
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Observer(
                    builder: (_) {
                      return Text(
                        '${controller.counter.value}',
                        style: TextStyle(color: Colors.black, fontSize: 80),
                      );
                    },
                  )),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text('Incrementar'),
                  )
                ),
              ],
            ),
          ),
        );
      }
    }


Tendo concluído esses passos, a seguir veremos a definição dos conceitos do MobX e quais partes do código correspondem a cada um deles: 


<h2>Actions</h2>


 Como já foi visto nos exemplos anteriores, é necessário desencadear uma mudança para que ela seja visualizada; é o que o setState method faz e também consiste em um dos conceito mais básico da programação reativa: tudo acontece mediante uma ação. Por possuir forte influência da progração reativa, o MobX usa das actions como ponto de partida para gerar uma nova definição de State.


    late Action increment;
    
    Controller() {
      increment = Action(_increment);
    }
  
    _increment() => counter.value++;


No exemplo é criado um atributo do tipo Action, o qual é associado a um método que retorna o incremento do valor dado. Esse método é chamado quando o botão "Incrementar" é clicado:
 
    ...

    Controller controller = Controller();

    ...

    ElevatedButton(
      onPressed: () {
        controller.increment();
      },
      child: Text('Incrementar'),
    )


<h2>Observables</h2>


Os observables representam o reactive-state da aplicação. Eles são responsáveis por tornar o app reativo a mudanças de state, refletindo essa atualização nas demais partes do escopo por meio de notificações. A relação entre os observables e as actions é direta, onde as actions são as responsáveis por mutar os observables.


    var counter = Observable(0);


O Observable aqui é uma variável que guarda o valor inicial do counter, sendo este o State padrão do counter Widget. Ele é o valor dado ao método associado a Action, o qual é incrementado


<h2>Reactions</h2>


Por último, mas não menos importante, está o responsável por completar a tríade do MobX. As reactions agem como observers do sistema reativo, sendo notificadas sempre que houver uma mudança nos Observables que elas acompanham.


    ...

    Controller controller = Controller();

    ...

    Observer(
      builder: (_) {
        return Text(
          '${controller.counter.value}',
          style: TextStyle(color: Colors.black, fontSize: 80),
        );
      },
    )


A classe Observer é disponibilizada pelo flutter_mobx package, anteriormente mencionado. Ela possui um atributo chamado builder, que é responsável por retornar o Widget Text() caso haja uma mundança no valor passado. Neste caso o valor da variável counter, tida como o Observable. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123297452-f5bbdf00-d4ed-11eb-8306-b44e68f3cf22.png">
</div>


<h2>Gerando Códigos MobX</h2>


Todo o processo visto anteriormente exemplifica o uso e as definições da tríade do MobX. Portanto, a escrita de todas essas linhas de código passa a ser meramente explicativa, já que o MobX permite ter o mesmo desempenho de forma muito mais simples, e para isso a lib disponibiliza alguns pacotes. Estes por sua vez são tratados como dev_dependencies, logo, só são utilizadas no processo de desenvolvimento.

No arquivo pubspec.yaml, logo após dev_dependencies, defina as seguintes dependências de desenvolvimento:


    mobx_codegen: ^2.0.0
    build_runner: ^1.12.2


Após definir as novas dependências, vamos modificar o código do exemplo anterior e adequá-lo para uma versão mais usual. No arquivo controller, crie as seguintes modificações:


    import 'package:mobx/mobx.dart';
    
    class Controller = ControllerBase with _$Controller;
    
    // O mixin Store é utilizado na geração do código
    abstract class ControllerBase with Store {
    
      @observable
      int counter = 0;
    
      @action
      increment() {
        counter++;
      }
    }


Uma classe abstract é definida como base para a execução da gerência do State. Essa classe possui um Mixin atribuido a si, este sendo o responsável por detectar e gerar o código de acordo com as definições de observable e action. A esta classe também serão atribuidos dois membros:

    @observable

<div align="center">
  <h5>Um annotation que identifica o atributo counter como um observable</h5>
</div>
   
    @action

<div align="center">
  <h5>Um annotation que identifica o método increment() como uma action </h5>
</div>


Além disso, uma class secundária, esta responsável por fazer um Mixin entre a class base e os códigos que serão gerados, é criada. A classe que será gerada age como um Mixin e é definida com o uso de _$, sendo gerada em arquivo a parte. Para que isso aconteça é preciso seguir mais alguns passos.

Primeiro é preciso definir uma chamada para o arquivo que será criado e que irá conter os códigos gerados. Essa chamada segue a sintaxe padrão do nome do arquivo que contém as definições de observable e action; chamado de "controller" neste caso, separada da terminação .dart pelo marcador .g:


    part 'controller.g.dart';
 

Após esse processo, é preciso gerar a classe associada. Para isso existem dois possiveis comandos:


    flutter pub run build_runner watch


<div align="center">
  <h5>Comando que gera a classe e monitora as alterações no arquivo controller.</h5>
</div>


    flutter pub run build_runner build


<div align="center">
  <h5>Comando que gera a classe apenas uma vez e só a atualiza caso seja executado novamente.</h5>
</div>


Após o fim do processo, uma nova file foi criada. Ao acessá-la é possível ter um resultado aproximado ao seguinte:


    // GENERATED CODE - DO NOT MODIFY BY HAND
    
    part of 'controller.dart';
    
    // **************************************************************************
    // StoreGenerator
    // **************************************************************************
    
    // ignore_for_file: non_constant_identifier_names,
    // unnecessary_brace_in_string_interps, 
    // unnecessary_lambdas,
    // prefer_expression_function_bodies,
    // lines_longer_than_80_chars,
    // avoid_as,avoid_annotating_with_dynamic
    
    mixin _$Controller on ControllerBase, Store {
      final _$counterAtom = Atom(name: 'ControllerBase.counter');
    
      @override
      int get counter {
        _$counterAtom.reportRead();
        return super.counter;
      }
    
      @override
      set counter(int value) {
        _$counterAtom.reportWrite(value, super.counter, () {
          super.counter = value;
        });
      }
    
      final _$ControllerBaseActionController =
          ActionController(name: 'ControllerBase');
    
      @override
      dynamic increment() {
        final _$actionInfo = _$ControllerBaseActionController.startAction(
            name: 'ControllerBase.increment');
        try {
          return super.increment();
        } finally {
          _$ControllerBaseActionController.endAction(_$actionInfo);
        }
      }
    
      @override
      String toString() {
        return '''
    counter: ${counter}
        ''';
      }
    }


Perceba que tanto o atributo counter quanto o método increment sofrem um @override, tornando suas novas definições as responsáveis por tratar o state. Também é muito importante não modificar este arquivo, sendo uma indicação da própria ferramenta. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123297452-f5bbdf00-d4ed-11eb-8306-b44e68f3cf22.png">
</div>


<h2>Auto Run</h2>


O autorun() é um método definido como o primeiro método a ser executado na chamada da classe que o contém. Com isso, é possível definir que ele devolva determinado valor assim que um classe sofre um rebuild. O exemplo a seguir explica de forma mais detalhada.

Ainda no arquivo controller.dart do exemplo anterior, faça a seguinte alteração:

    ControllerBase() {
       autorun((_) {
         print(counter);
       });
     }

O constructor da classe ControllerBase define um autorun method, o qual faz um print do valor contido no atributo counter a cada mudança de State. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123450593-49443080-d5b3-11eb-80a3-38dbf7628af3.png">
</div>


A cada clique o valor do atributo counter, ou seu novo state, é retornado. Assim é possível verificar se um valor é de fato recebido.


<h2>reaction()</h2>


Assim como o autorun, o reaction method monitora mudanças nos observables da store, porém, só é de fato chamado quando um determinado valor é alterado. A ele está associado uma execução de monitoramento e efeito, onde uma função fn() define o observable a ser monitorado, e caso haja alguma alteração, uma função effect executa uma reação.

    ReactionDisposer reaction<T>(T Function(Reaction) fn, void Function(T) effect)

Um reaction method pode ser utilizado tando na controller.dart file, quanto na view, e para exemplificar seu uso, é onde iremos tratá-lo. Para isso é preciso definir o seguinte método na classe de State da tela:


    @override
    void didChangeDependencies() {
      super.didChangeDependencies();
    }


Ele é importante pois define que o gerenciamento de state irá ocorrer fora do Widget correspondente, e assim como um autorun, ele é chamado a cada atualização do estado. Dentro dele iremos declarar o reaction method:


    reaction(fn, effect);


Por fim, faremos a chamada de um print, tendo um resultado semelhante ao do autorun anterior:


    Controller controller = Controller();
   
     @override
     void didChangeDependencies() {
       super.didChangeDependencies();
   
       reaction((_) => controller.counter, (valor) {
         print(valor);
       });
     }


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123561221-8b20d280-d77d-11eb-8f11-ee7bba6852c6.png">
</div>


<h2>MobX Computed Observables</h2>


Para o MobX, um state consiste em core-states e derived-satates. O core-state é o estado inerente ao domínio com o qual você está lidando, já um derived-state herda de um core-state. Por exemplo, em uma entidade Contact, o firstName e o lastName formam o core-state Contact. Logo, uma entidade fullName por exemplo, obtida a partir da combinação entre firstName e lastName, é um derived-state.

Derived states, os quais dependem de um core-state ou de outro derived-state para serem criados, são chamados de Computed Observables ou Computed Properties. A seguir temos um exemplo de declaração do Computed Observable:


    import 'package:mobx/mobx.dart';
    
    part 'contact.g.dart';
    
    class Contact = ContactBase with _$Contact;
    
    abstract class ContactBase with Store {
      @observable
      String firstName;
    
      @observable
      String lastName;
    
      @computed
      String get fullName => '$firstName, $lastName';
    
    }


Para exemplificar o uso do recurso, vamos criar uma tela semelhante a uma tela de login, com campos referentes a email e senha, além de um botão para executar uma action. Crie uma file chamada computed.dart e a ela adicione as seguintes linhas de código:


    import 'package:flutter/material.dart';
    import 'package:flutter_mobx/flutter_mobx.dart';
    
    class Computed extends StatefulWidget {
      @override
      _ComputedState createState() => _ComputedState();
    }
    
    class _ComputedState extends State<Computed> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Email"),
                    onChanged: (_) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Senha"),
                    onChanged: (_) {},
                  ),
                ),
                Padding(padding: EdgeInsets.all(16), child: Text('Campos Inválidos')),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  )
                ),
              ],
            ),
          ),
        );
      }
    }


Uma classe StatefulWidget foi criada e a ela foram atribuidos campos referentes a email e senha. Perceba que um child Text também foi definido na estrutura; a ele será aplicada a valiação de State do formulário. A imagem a seguir ilustra como o exemplo irá se comportar:

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123656241-1e054f80-d806-11eb-9b75-5fe15262736c.png">
</div>

<br>

Após criar a View, iremos definir a estrutura do controller para gerenciar o state do formulário. Na mesma pasta, crie uma file chamada de controller.dart e adicione as seguintes linhas de código:


    import 'package:mobx/mobx.dart';
    
    part 'controller.g.dart';
    
    class Controller = ControllerBase with _$Controller;
    
    abstract class ControllerBase with Store {}


Como já foi visto anteriormente, essa estrutura será a base para o run de um arquivo no qual o state será gerenciado. Para criar este arquivo e monitorar suas atualizações, rode o seguinte comando no diretório do formulário:

    
    flutter pub run build_runner watch


Agora que a base de gerenciamento foi criada, vamos fazer algumas alterações nos arquivos computed.dart e controller.dart.

No arquivo computed.dart defina o acesso a classe Controller:


    class _ComputedState extends State<Computed> {
      
      Controller controller = Controller();
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
           ...
        );
      }


Posteriormente, agora no arquivo controller.dart, defina os observables e as actions referentes aos campos do formulário:


    abstract class ControllerBase with Store {
      @observable
      String email = '';
    
      @observable
      String senha = '';
    
      @action
      void setEmail(valor) => email = valor;
    
      @action
      void setSenha(valor) => senha = valor;
    }


Em seguida vamos associar cada campo a sua respectiva action:


    Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(labelText: "Email"),
        onChanged: controller.setEmail,
      ),
    ),
    Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(labelText: "Senha"),
        onChanged: controller.setSenha,
      ),
    )


Para verificar o recebimento dos valores do formulário, vamos utilizar o já visto autorun() method. No arquivo controller.dart faça a seguinte alteração:


    Controller() {
      autorun((_) {
        print(email);
        print(senha);
      });
    }


 Criamos um autorun() method no constructor da class Controller, o qual cria um print dos valores correspondentes a email e senha passados no formulário. Lembrando que essa verificação é feita a cada mudança no Widget TextField, já que a chamada das actions é feita através do atributo onChanged. 

Após a mudança, se a execução tiver sido interrompida, torne a rodar o comando a seguir na pasta que contém a file do formulário:


    flutter pub run build_runner watch


A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img src="">
</div>


<h2>@computed</h2>


 Como já foi dito, um Computed Observable ou Computed Propertie é um derived-state, ou seja, ele deriva de um core-state ou de outro derived-state, porém, pode ser aplicado de formas distintas, como veremos a seguir. No arquivo controller.dart crie a seguinte alteração:
  

    @computed
    bool get formularioValidado => email.length >= 5 && senha.length >= 5;


O computed criado basicamente age como uma validação, definindo um número mínimo de caracteres para que cada campo possa ser validado, e retorna true caso os valores sejam correspondentes. O próximo passo é definir o consumo deste computed diretamente no formulário. Com isso, crie as seguintes modificações no arquivo computed.dart:

   
     Padding(
      padding: EdgeInsets.all(16),
      child: Observer(
        builder: (_) {
          return Text.rich(TextSpan(children: [
            TextSpan(
                text: controller.formularioValidado
                    ? 'Campos Válidos'
                    : '',
                style: TextStyle(color: Colors.green)),
            TextSpan(
                text: controller.formularioValidado
                    ? ''
                    : 'Campos Inválidos',
                style: TextStyle(color: Colors.red))
          ]));
        },
      )),
      Padding(
          padding: EdgeInsets.all(16),
          child: Observer(builder: (_) {
            return ElevatedButton(
              onPressed: controller.formularioValidado ? () {} : null,
              child: Text('Login'),
            );
          }))


O Widget Text recebe a validação de formularioValidado, que é avaliado por uma expressão condicional, resultando no retorno do string 'Campos Válidos' caso seja true, ou do string 'Campos Inválidos', caso seja false. Além disso, a mesma validação acontece no botão, que passa a ser ativo caso a validação retorne true. A imagem a seguir ilustra como o exemplo irá se comportar:

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123559218-1d6ea980-d771-11eb-9f72-167ab05018b5.png">
</div>

<br>


<h2>Auth Simulation</h2>


Como foi visto anteriormente, é possível definir a gerência de determinado State através do método reaction, que executa um effect após verificar uma mudança no observable definido. Neste caso, iremos aplicar algumas mudanças no formulário anterior, aplicando o reaction para simular uma autenticação dos dados do usuário. 

O primeiro passo será criar uma nova action, esta sendo referente ao login em si, e também alguns observables, os quais irão servir como forma de validação. Na file controller.dart faça as seguintes alterações:


     @observable
     bool usuarioLogado = false;
   
     @observable
     bool carregando = false;
   
     @action
     Future<void>logar() async {
       carregando = true;
   
       await Future.delayed(Duration(seconds: 3));
   
       carregando = false;

       usuarioLogado = true;

     }


As novas definições consistem em um método que é chamado no onPress do botão de login, ou seja, apenas se os dados do usuário forem correspondentes aos parâmetros anteriormente definidos. Esse método, chamado de logar, possui um método delayed, cuja função é simular o carregamento de um select na base por exemplo, e a ele é atribuída a duração de 3 segundos. Em seguida, definimos que o usuário foi autenticado por meio do bool 'usuarioLogado'; assim seria possível chamar a tela subsequente após o carregamento. Carregamento este que é atribuído ao bool 'carregando', o qual é setado para true quando o método logar é chamado, e após o delayed, torna a ser false.

Tendo concluído as alterações no controller.dart, torne a fazer o build com o comando a seguir:


    flutter pub run build_runner watch


Após o fim da execução, vamos partir para as próximas alteração. Elas consistem em:
   

    Controller controller = Controller();
      
    late ReactionDisposer reactionDisposer;

    @override
      void didChangeDependencies() {
        super.didChangeDependencies();
    
        reactionDisposer = reaction((_) => controller.usuarioLogado, (valor) {
          print(valor);
        });
      }

     @override
     void dispose() {
       reactionDisposer();
       super.dispose();
     }


Dentro do método didChangeDependencies() iremos definir o reaction method, o qual recebe o observable 'usuarioLogado' como monitorado, e define um print do seu valor no Debug Console caso haja uma mudança no mesmo. Além disso, é definido um ReactionDisposer e um override da classe dispose, evitando a chamda constante do reaction method. Em seguida:    
  

    TextSpan(
      text: controller.formularioValidado && !controller.carregando
          ? 'Campos Válidos' : '',
      style: TextStyle(color: Colors.green))


Essa alteração define que o text 'Campos Válidos' só será aparente caso o processo de carregamento não estiver ocorrendo. Em seguida:


    Padding(
      padding: EdgeInsets.all(16),
      child: Observer(builder: (_) {
        return ElevatedButton(
          onPressed: controller.formularioValidado ? () {
              controller.logar();
            } : null,
          child: controller.carregando ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            ) : Text('Login')
          );
        }
      )
    )


Definimos a chamada do método logar no onPress, além de um CircularProgressIndicator, que indica o tempo de carregamento definido anteriormente. A imagem a seguir ilustra como o exemplo irá se comportar:

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123563343-844c8c80-d78a-11eb-8157-7decc8762387.png">
</div>

<br>


<h2>ObservableList</h2>


O ObservableList é um recurso utilizado para monitorar o State de listas de Widgets. Com um ObservableList é possível ter um nível mais profundo de observação em uma lista de valores, onde os observers são notificados caso um item seja adicionado, removido ou modificado. Ou seja, o ObservableList fica atento a qualquer mudança significativa na lista. Para melhor exemplificar, vamos retomar o exemplo anterior e complementá-lo.

Ainda na file computed.dart, faça a seguinte alteração:


    @override
     void didChangeDependencies() {
       super.didChangeDependencies();
   
       reactionDisposer = reaction((_) => controller.usuarioLogado,
       (usuarioLogado) {
         if (controller.usuarioLogado) {
           Navigator.of(context)
               .pushReplacement(MaterialPageRoute(builder: (_) => List()));
         }
       });
     }


Após a alteração, quando efetuada a validação dos dados, o clique no buttom 'login' executa a chamada de um navigator para a tela de listagem, a qual será criada em sequência.

Em uma pasta a parte, adicione dois arquivos. O primeiro, chamado de List.dart será a tela em si, já o segundo, este chamado de listController.dart, corresponde a aonde o ObservableList será gerenciado.

Na file List.dart, em um StatefulWidget, faça as seguintes inclusões:


    _dialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Adicionar item"),
            content: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite uma descrição..."),
              onChanged: (valor) {},
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(onPressed: () {}, child: Text("Salvar"))
            ],
          );
        });
      }


A primeira inclusão é um dialog, o qual será utilizado para adiministrar os itens da lista. A seguir iremos incluir um ListView.builder, que irá gerar os itens necessários:


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, indice) {
            return ListTitle(
              title: Text("Item $indice"),
              onTap: () {},
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _dialog();
          },
        ),
      );
    }


A princípio a lista contém 10 itens definidos pelo atributo itemCount. Além dos itens, a nova tela conta com um FloatingActionButton, cuja função aqui é acessar o dialog, permitindo a inclusão de um item. A imagem a seguir ilustra como o exemplo irá se comportar:


<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123576967-53c81b00-d7a9-11eb-845a-989b4c47b270.png">
</div>

<br>


Tendo a estrutura criada, vamos definir como os states da lista serão gerenciados. Na file listController.dart, faça as seguintes alterações:


    abstract class ListControllerBase with Store {
      @observable
      late String newItem = '';
    
      @action
      void setNewItem(String value) => newItem = value;
    }


É criado um observable referente a mensagem inserida no processo de adição de um novo item, além de uma action referente a atribuição dessa mensagem ao mesmo. Em seguida iremos consumir esses membros da classe ListControllerBase. Na file List.dart crie:


    ...
    
    ListController _listController = ListController();

    ...
    
    content: TextField(
      decoration: InputDecoration(
       border: OutlineInputBorder(),
       labelText: "Digite uma descrição..."),
       onChanged: _listController.setNewItem,
    )
  
    ...
    

Uma instância da classe ListController é criada, permitindo o acesso a action setNewItem, que é atribuída a ação de onChange do TextField Widget. Após esse processo, a informação que o usuário insere já pode ser armazenada:


    ObservableList<String> itemList = ObservableList();
  
    @action
    void addItem() {
      itemList.add(newItem);
    }


O ObservableList itemList define um List que armazena cada descrição de item criado, criando um novo espaço na memória a cada inserção, não sendo necessário atribuir um annotation @abservable a ela. Essa descrição é inserida no ObservableList através da action addItem. Por sua vez, a action addItem será chamada na ação de save no dialog anteriormente criado:


    TextButton(
      onPressed: () {
        _listController.addItem();
      },
      child: Text("Salvar"))


Neste ponto, cada item adicionado passa a fazer parte da lista criada. O próximo passo é fazer a exibição dos itens dessa lista. No ListView.builder faça as alterações a seguir:


    body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: _listController.itemList.length,
            itemBuilder: (_, indice) {
              return ListTitle(
                title: Text(_listController.itemList[indice]),
                onTap: () {},
              );
            },
          );
        },
      )

O Observer adicionado ao body permite acessar as mudanças na ObservableList. Também é possível utilizar seu length como definição de tamanho da ListView.builder, além de definir a descrição de cada item com title da ListTitle. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123577429-30ea3680-d7aa-11eb-9602-c634d4279554.png">
</div>


<h2>Tratando Itens de Uma Lista</h2>


Os exemplos anteriores focam no monitoramento de uma lista, gerenciando seu state e apenas isso. Porém, as informações de uma lista normalmente também possuem um State próprio, que as define no contexto da lista como um todo. A seguir continuaremos a compor a ObservableList, porém, na escala dos itens. Para isso iremos criar uma nova file chamada de itemController.dart em uma pasta chamada Item, esta referente ao gerenciamento de cada item.

A ela iremos adicionar as seguintes linhas de código:


    import 'package:mobx/mobx.dart';

    part 'itemController.g.dart';
    
    class ItemController = ItemControllerBase with _$ItemController;
    
    abstract class ItemControllerBase with Store {
      ItemControllerBase(this.titulo);
    
      final String titulo;
    
      @observable
      bool marked = false;

    }


Basicamente criamos dois atributos, um referente a descrição dada a cada item, aqui chamada de "titulo"; o outro membro criado é um observable, este definindo o status do item que foi marcado. 

Agora, para que o State de cada item possa ser monitorado pelo novo controller, vamos fazer uma alteração na file listController.dart:

    
    ...

    import 'package: .../item/itemController.dart';

    ...

    ObservableList<ItemController> itemList = ObservableList<ItemController>();

    @action
    void addItem() {
      itemList.add(ItemController(newItem));
    }


O valor definido como o tipo da ObservableList passa a ser a classe ItemController, e por consequência, também é definido como o tipo que será adicionado, declarado na action addItem. Em seguida iremos atualizar a file List.dart:


    body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: _listController.itemList.length,
            itemBuilder: (_, indice) {
              var item = _listController.itemList[indice];
              return Observer(builder: (_) {
                return ListTitle(
                 title: Text(
                 item.titulo,
                   style: TextStyle(
                    decoration: item.marked 
                     ? TextDecoration.lineThrough
                     : null
                    )),
                  onTap: () {
                    item.marked = !item.marked;
                  },
                );
              });
            },
          );
        },
      ),


Antes de mais nada, definimos um novo Observer como retorno do ListView.Builder, ele será responsável por monitorar as mudanças no state de cada item. O title da ListTitle, que antes consistia no _listController.itemList, passa a ser o novo atributo titulo, criado na file itemController.dart. Também definimos que ao clicar em um item da lista, o atributo bool marked passa a ser false.

Como último alteração, iremos definir que ao salvar um item na lista o dialog 'Adicionar Item' será fechado. Faremos isso adicionando um Navigator.pop no atributo onPressed do TextButton "Salvar". 


    TextButton(
     onPressed: () {
       _listController.addItem();
       Navigator.pop(context);
     },
     child: Text("Salvar")


Com isso o State de cada item da lista é gerenciado individualmente. A imagem a seguir ilustra como o exemplo irá se comportar:


<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123654100-2066aa00-d804-11eb-9a07-442e83b2b2b3.png">
</div>

<br>


<h2>Flutter Commands</h2>


<h2>Binder</h2>


<h2>GetX</h2>


<h2>Riverpod</h2>


<!-- <h2>Flutter Modular</h2> -->

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123717717-d1e0fc00-d853-11eb-833f-f389d9af8548.png">
</div>


Um projeto se torna mais e mais denso e complexo com seu crescimento, o que o torna cada vez mais difícil de manutenir e reutilizar. O Flutter Modular é uma arquitetura que provê uma série de soluções de adequação para lidar com possíveis problemas, como injeção de dependências, sistema de roteamento e um sistema de "singleton descartável".

Estes são os principais aspectos em que o Flutter Modular foca:


- Gerenciamento de Memória Automático.
- Injeção de Dependências.
- Gestão de Roteamento Dinâmico e Relativo.
- Modularização do Código.


<h2>Modular Structure</h2>


A estrutura modular consiste em módulos desacoplados e independentes que representam as funcionalidades da aplicação. Cada módulo está localizado em seu próprio diretório e controla suas próprias dependências, rotas, páginas, widgets e a regra de negócio. Consequentemente, você pode facilmente desanexar um módulo do seu projeto e usá-lo onde quiser. Isso também torna muito mais simples o processo de manutenção de partes específicas do seu sistema e interface, pois cada módulo possui suas particularidades isoladas dos demais.

Outra vantagem é o modelo de "singleton descartável", que permite gerar uma aplicação sem dúvidas muito mais leve. Isso ocorre graças ao descarte de Binds(injeções), ou seja, quando um módulo não tiver nenhuma tela referente a si ativa, ele será desativado. Com isso é possível manter ocupada somente a quantidade de memória necessária para o funcionamento do sistema, sem excedentes.


<h2>Instalação</h2>


Para criar um modelo de projeto Modular é preciso declarar sua dependência ao iniciar o desenvolvimento da aplicação. Com isso, após criar o projeto, vá até a pubspec.yaml file e adicione o flutter_modular como uma dependência:


    dependencies:
      flutter_modular: any


Após a declaração da dependência, já é possível utilizar o modelo Flutter Modular como estrutura do projeto criado. É o que iremos abordar a seguir.


<h2>Dividindo o Projeto em Módulos</h2>


Sendo um dos pilares de sua estrutura, o Modular possui três tipos de Módulos, o MainModule, responsável por tratar toda a aplicação, os ChildModule, responsáveis por tratar os demais Widgets individualmente, com suas próprias rotas e dependências. O terceiro é referemte a estruturas de Widgets específicas, como BottomNavigatorBar ou Drawers.


<h2>Estrutura Recomendada</h2>


Por ter a modularização como principal aspecto da arquitetura modular, cada módulo é responsável por uma ou mais páginas com seu respectivos controllers, services, stores e entre outros. No Flutter Modular há também uma forte presença do MobX, por isso o conceito de controller estará bastante presente na estrutura recomendada. Essa junção permite um maior desemponho quando aplicado em uma estrutura que favoreça ambos os conceitos.

Com isso, tendo em mente a importância da estrutura, é recomendado que se siga um padrão estrutural quando se aplica o Flutter Modular em um projeto, estrutura essa que se replica em escalas diferentes:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123803022-4783b100-d8c2-11eb-8d8a-89c3bfa95bae.png">
</div>


Como a imagem demonstra, cada módulo possui uma repetição da estrutura em uma escala menor. As mudanças iniciam na lib folder, que consiste em um app folder e na main.dart file:


<h2>main.dart</h2>


A já conhecida main.dart é a file de iniciação do projeto, é nela que declaramos o main method e iniciamos o app através da classe runApp, que normalmente recebe um StatelessWidget como parâmetro, o qual contém a classe de criação MaterialApp. No caso de uma estrutura modular, a classe runApp recebe um ModularApp, o qual possui a propriedade module. Essa por sua vez recebe uma instância da classe AppModule, aonde definimos as rotas e dependências da aplicação:


    import 'package:exemplo/lib/app/app_module.dart';

    import 'package:flutter/material.dart';
    import 'package:flutter_modular/flutter_modular.dart';

    void main() => runApp(ModularApp(module: AppModule()));



Já a estrutura que se repete começa a ser implementada na app folder, e para essa estrutura, um módulo consite em basicamente três arquivos:


<h2>app_controller.dart</h2>


Com já foi mencionado anteriormente, o MobX está bastante presente na estruturação de um projeto Flutter Modular, inclusive fazendo parte da estrutura padrão recomendada. O MobX também foi bastante abordado aqui, portanto, não será preciso tornar a explicá-lo, mas, um detalhe importante é que, como sabemos, o MobX possui um build_runner que gera um arquivo responsável por de fato tratar o state. Esse arquivo faz parte da estrutura recomendada e normalmente leva a mesma nomenclatura do arquivo controller.dart, com o acréscimo de um .g(generate) após o nome.


<h2>app_module.dart</h2>


A file app_module.dart corresponde ao MainModule de toda a aplicação. É nela que estão declarados os Binds e as rotas que definem as dependências e a navegação do app respectivamente, e é nela que aplicamos de fato os conceitos do Modular, os quais refletem nas demais partes da aplicação. A seguir veremos de forma detalhada cada componente da file app_module.dart:


<h3>MainModule</h3>


O MainModule consiste no módulo de gestão de toda a aplicação. Nele são definidas os Binds, ou injeções de dependências, e as rotas, as quais permanecem ativas em toda a aplicação. O MainModule é criado da seguinte forma:


    // extend from MainModule
    class AppModule extends MainModule {
    
      // Provide a list of dependencies to inject into your project
      @override
      List<Bind> get binds => [];
    
      // Provide all the routes for your module
      @override
      List<ModularRoute> get routes => [];

      // add your main widget here
      @override
      Widget get bootstrap => AppWidget();
    
    }


Normalmente chamada de AppModule, classe que herda da MainModule, é a MainModule de um projeto Modular. Nela são criados três overrides com funções específicas. Eles são:


<h3>Binds</h3>


É basicamente um List proveniente de um override da propriedade binds, cuja função é guardar as principais classes das quais a aplicação depende, sendo possível recuparar esses Binds em qualquer parte do app. A seguir há um exemplo de declaração de dependências utilizada como modelo na estrutura Modular:


    @override
    List<Bind> get binds => [
          Bind((i) => AppController()),
          Bind((i) => HomeController()),
          Bind((i) => ProfileController()),
        ];


A estrutura consiste em um objeto Bind que recebe uma closure i(Injection) e direciona à classe da qual o módulo principal da aplicação depende. Nesse caso, as dependências são os controllers de três páginas distintas. 

    Bind((i) => MyClass())

O Bind possui essa estrutura pois pode receber a injeção durante a chamada da classe, além de proporcionar o "Lazy Loading", ou seja, a classe só é instanciada quando chamada pela primeira vez, em seguida passa a obedecer certos parâmetros, que por padrão a tornam Singleton durante a vida útil do módulo do qual ela implementa.


<h3>Routes</h3>


List proveniente de um override da propriedade routes, cuja função é registrar as principais rotas e associá-las as telas do app, também chamadas de rotas nomeadas. A seguir há um exemplo de declaração de roteamento utilizada como modelo na estrutura Modular:


    @override
     List<ModularRoute> get routes => [
           ChildRoute('/', child: (_, args) => HomePage()),
           ChildRoute('/profile', child: (_, args) => ProfilePage()),
     ];


A estrutura do routes consiste em um List de tipo variável(no exemplo acima é declarado como ModularRoute) que faz um override da propriedade routes. Ela contem um ou vários objetos declarados, Router ou ChildRoute. Esses recebem um string
como propriedade de definição da rota, além de uma outra propriedade chamada de child, que recebe uma função anônima com o context e um objeto args como parâmetros. Por fim, é definida a classe correspondente a tela acessada através da rota declarada.


<!-- <h3>Bootstrap</h3>


Principal Widget da aplicação, normalmente associado ao AppWidget, o qual carrega o MaterialApp da interface.
 -->


<h2>app_widget.dart</h2>


A file app_widget.dart é a mainFile da aplicação, onde definimos a estrutura base para todos os demais Widgets, ou módulos no caso do Flutter Modular. É nela que declaramos a chamada da rota padrão "/", ou seja, ela será a primeira tela a ser renderizada quando a main.dart file for instanciada.

A seguir temos um exemplo de declaração do uso do Modular como estrutura de uma aplicação: 


    //  app_widget.dart
    import 'package:flutter/material.dart';
    import 'package:flutter_modular/flutter_modular.dart';
    
    class AppWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          initialRoute: "/",
        ).modular();
      }
    }


Basicamente é preciso fazer um import do package correspondente ao flutter_modular, instalado anteriormente. Logo após, declaramos uma initialRoute dentro do MaterialApp, fazenda a já citada chamada da rota padrão, e após o MaterialApp declaramos a chamada do .modular(). 


<h2>pages</h2>


A pages folder é definida como parte de módulos que tratam mais de uma tela, como no exemplo da imagem. Nesse exemplo o módulo home possui dois ChildModules: myCart e profiles. Ambos possuiem seus próprios state management controllers, mas têm seus binds e rotas definidos na home_module.dart.


<h2>Slidy</h2>


O Slidy é um package manager que automatiza o processo de criação de um projeto Modular. Com ele é possível gerar templates, gerenciar Modules, Pages, Widgets, BLoCs, Controllers, tests e mais. Sua principal função é permitir a estruturação padronizada de projetos, organizando sua aplicação em _Modules_ formados por pages, repositories, widgets, BLoCs, e também criar testes de unidade automaticamente. Além disso, o Slidy dá ao desenvolvedor um caminho mais fácil para injetar dependências e instalar pacotes, fazer updates ou removê-los. Isso tudo é feito com o run de comandos simples.


<h2>Instalação</h2>


O Slidy pode ser instalado de formas distintas:


<h3>Flutter/Dart directly</h3>


    dart pub global activate slidy


<h3>choco (only windows)</h3>


    choco install slidy


<h3>Homebrew (macos and linux)</h3>


    brew install slidy


<h2>Comandos</h2>
  

<h3>Start</h3>


O comando _Start_ cria uma estrutura básica de projeto(comfirme que a folder lib está vazia):

    
    slidy start


<h3>Run</h3>


O comando _run_ executa scripts alocados no parâmetro "scripts" na pubséc.yaml:


    slidy run open_folder


<h3>Install</h3>


O comando _install_(ou update) instala novos pacotes:


    slidy install mockito dio modular


Também é possível instalar um package como dev_dependency utilizando a flag --dev:


    slidy i flutter_launcher_icons --dev


<h2>Generate</h2>


Os comandos _gererate_ criam módulos, pages, widgets ou repositórios de acordo com o comando especificado.


<h3>Module</h3>


Cria um novo módulo com o comando slidy generate module:


    slidy generate module manager/product

  
<h3>Page</h3>


Cria uma nova page com o comando slidy generate page:


    slidy generate page manager/product/pages/add_product

  
<h3>Widget</h3>


Cria um novo widget com o comando slidy generate widget:


    slidy generate widget manager/product/widgets/product_detail


<h3>Repository</h3>


Cria um novo repository com o comando slidy generate repository:


    slidy g r manager/product/repositories/product


<h2>Controller Manager</h2>


Como já foi dito, a estrutura modular conta com a preseça do MobX e seus controllers. Portanto, o slidy também conta com uma automatização do porcesso que gera os códigos responsáveis por gerenciar os states da aplicação. Para isso, usa-se o comando:


    slidy run mobx_build_clean


Ele é responsável por verificar todos os módulos do projeto, detectando modificações na controller.dart file e as aplicando na controller.g.dart.


<h2>Repository Pattern</h2>


O Repository Pattern é uma camada de abstração ao acesso de serviços externos em uma aplicação. Serviços como o cosumo de uma Rest API ou de uma base de dados são tratados em classes específicas, gerando uma estrutura fácil de manutenir e controlar. Essa divisão permite que um Web Services possa ser consumido, atualizado, ou mesmo descartado com muito mais facilidade, o que torna o processo de desenvolvimento mais rápido e eficiente.

O Repository Pattern pode ser utilizado em conjunto com algumas das mais conhecidas HTTP libraries do dart, como própria Http, dio, além de outras como http_parser, http_cliente etc.

Para exemplificar o uso do pattern, iremos criar uma aplicação simples que consome uma API externa e lista uma série de pokemons. Nela iremos aplicar os conceitos mais básicos da estrutura. Além de entender como o conceito de repository se complementa com o uso de uma lib Http client.

<br>
<div align="center">
 <img src="https://user-images.githubusercontent.com/61476935/124007846-269a8900-d9b2-11eb-8c37-eb6ae8b7a03f.png">
</div>
<br>

O dio é um poderoso Http client criado para o dart, o qual suporta Interceptors, Global configuration, FormData, Reques Cancellation, File downloading, Timeout e entre outros recusos. Possui, segundo a pub.dev, 100% de popularidade na comunidade de desenvolvedores Flutter, tão popular ou até mais que a já citada Http library.


<h3>Get Started</h3>


Para fazer uso da library é preciso adiciar uma nova dependencie na file pubspec.yaml da base do projeto:


    dependencies:
      dio: ^4.0.0


Obs: A versão indicada é a mais atual neste momento, caso você queira se assegurar de estar utilizando a versão mais recentes, verifique em [pub.dev/packages/dio](https://pub.dev/packages/dio).


<h2>Entendendo a Estrutura</h2>


Em um novo projeto, após instalar o dio, crie uma nova pasta chamada _repositories_ na lib folder. Na nova pasta iremos criar um interface para agrupar todos os métodos do repository. Em uma file definida como poke_repository_interface.dart, crie as seguintes linhas de código:


    import 'package:exemple/models/poke_model.dart';

    abstract class IPokeRepository {
      Future<List<PokeModel>> getAllPokemons();
    }



Na classe criada teremos apenas um método, a qual irá retornar um List de PokeModel. PokeModel será uma classe que irá representar o modelo de dados, ou seja, irá representar cada pokemon na list.

Ainda na lib folder, crie uma nova pasta chamada de _models_. Nela iremos criar uma file poke_model.dart que irá conter a classe PokeModel:


    class PokeModel {
      var name;
    
      PokeModel({this.name});
    
      PokeModel.fromJson(Map<String, dynamic> json) {
        name = json['name'];
      }
    }


A classe terá uma variável "name" que será responsável por guardar o nome do pokemon, além de um método para converter o json retornado pela API em um objeto de PokeModel.

Após criar o model e a interface, iremos criar a implementação do repository. Na repositories folder, crie uma file poke_repository.dart e nela crie a regra de negócio para chamar a API especificada:


    import 'package:exemple/repositories/poke_repository_interface.dart';
    import 'package:exemplo/models/poke_model.dart';
    
    import 'package:dio/dio.dart';
    
    class PokeRepository implements IPokeRepository {
      final Dio _dio;
    
      PokeRepository(this._dio);
    
      @override
      Future<List<PokeModel>> getAllPokemons() async {
        List<PokeModel> pokemons = [];
    
        var response = await _dio.get("https://pokeapi.co/api/v2/pokemon/");
    
        response.data['results'].map((pokemon) {
          pokemons.add(PokeModel.fromJson(pokemon));
        }).toList();
    
        return pokemons;
      }
    }


A classe PokeRepository define um implements da anteriormente criada IPokeRepository, fazendo um override nos métodos da interface. Tendo isso definido, foi criada uma chamada do Client Http _Dio_, que passa a ser injetado no contructor da classe PokeRepository e se torna responsável por fazer o GET resquest na API. 

Em seguida, o método getAllPokemons retorna um List chamado de pokemons, que é iniciado como um array vazio, mas é retornado com todos nomes de pokemons vindos da API, esta sendo definida pela URL https://pokeapi.co/api/v2/pokemon. O valor de retorno, um Json, é atribuído a variável response.

O próximo passo é acessar os dados armazenados em response e itrubuí-los à variável pokemons. Caso você não tenha verificado, o retorno da API é Map Json. Com isso, um map method é utilizado para extrair os objetos pokemon e armazená-los na variável na List criada. Por fim, o método map recebe um ToList() method, convertendo os valores no type desejado.


<h2>Listando Pokemons</h2>


Com o model e o repostory concluídos, podes de fato listar os valores retornados. Porém, antes de partirmos para a interface, criaremos um "Controller" para receber o repository da aplicação como boa prática. Na lib folder, criaremos uma file home_controller.dart. Nela adicione as seguintes linhas de código:


    import 'package:repositorypattern/models/poke_model.dart';
    
    import 'package:dio/dio.dart';
    
    class HomeController {
      final IPokeRepository _pokeRepository = PokeRepository(Dio());
    
      Future<List<PokeModel>> fetchPokemons() {
        return _pokeRepository.getAllPokemons();
      }
    }


A classe HomeController recebe o repository criado, além de uma intância do Http Client Dio. 


Por último, iremos criar uma UI simples, cuja função é apenas listar o retorno da API. Com isso, na main.dart file, crie os Widget abaixo:


    import 'package:repositorypattern/models/poke_model.dart';
    import 'package:repositorypattern/home_controller.dart';
    import 'package:flutter/material.dart';
    
    ...

    class HomePage extends StatelessWidget {
      final HomeController _homeController = HomeController();
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('Lista de Pokemons')),
            body: FutureBuilder<List<PokeModel>>(
              future: _homeController.fetchPokemons(),
              builder: (context, snapshot) {
                var pokemons = snapshot.data;
                if (pokemons == null) {
                  return Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                 itemCount: pokemons.length,
                 itemBuilder: (context, index) {
                   return ListTitle(
                    title: Text(pokemons[index].name),
                );
             });
           },
        ));
      }
    }


A interface consiste um StatelessWidget que instancia a classe HomeController e um Future Builder que irá chamar o método do controller. Além disso, uma condicional gera um CircularProgressIndicator caso a API retorne null, e caso seja diferente de null, gera um ListView.bulder com todos os nomes do pokemons. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
 <img src="https://user-images.githubusercontent.com/61476935/124005193-2c429f80-d9af-11eb-9d92-cc1e9a059359.png">
</div>