
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


<h2>Scaffold</h2>


A classe Scaffold, que literalmente significa andaime, é um Widget que permite a criação de uma estrutura de layout baseado no Material Design, disponibilizando style API's que contam com componentes comuns a aplicações mobile. Além disso, conta com propriedades que separam a estrutura em blocos. A seguir há um exemplo de definição do Scaffold:

    Scaffold(
      appBar: AppBar( ... ),
      body: Container( ... ),
      drawer: Drawer( ... ),
      floatingActionButton: FloatingActionButton( ... ),
      bottomNavigationBar: BottomAppBar( ... )
    )


O Scaffold é muito utilizado como estrutura padrão de telas em aplicações Flutter, isso graças a sua estrutura, que é bastante eficaz. A seguir estão descritos algumas das pripriedades que compõem o Scaffold Widget:

  * <strong>appBar</strong> - AppBar da tela, exibido no topo do Scaffold
  * <strong>body</strong> - Primeiro conteúdo a ser exibido no Scaffold
  * <strong>drawer</strong> - Um painel exibido ao lado do body, acionado por uma ação de swipe
  * <strong>floatingActionButton</strong> - Botão flutuante exibido sobre o body do Scaffold
  * <strong>bottomNavigationBar</strong> - Barra de navegação do rodapé do Scaffold


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


<h3>Decoration</h3>


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

Qualquer aplicação Flutter possui um rootBundle definido por padrão, o qual contém os recuros já citados. Para adicionar novos recuros ao rootBundle é preciso editar a subseção flutter => assets no arquivo pubspec.yaml, onde são definidas dependencias tanto do Material design(android) quanto do cupertino(ios). Exemplo:

    flutter:
      uses-material-design: true
     // Para adicionar assets a sua aplicação, crie uma assets section:
      assets:
        - assets/images/
        - assets/icons/

É comum definir uma pasta assets no root da aplicação. Nela são declaradas as imagens e ícones que serão utilizados em pontos específicos do app. A seguir temos a descrição dos principais assests Widgets:  


<h3>Images</h3>


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


<h3>Icons</h3>

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


<h3>Text</h3>


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


<h3>Aling</h3>


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
  <img src="https://user-images.githubusercontent.com/61476935/121560324-cb4a2c00-c9ed-11eb-818c-6e2e94001f7e.png">
</div>


<h3>AspectRatio</h3>


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

<h3>ConstrainedBox</h3>


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


<h3>Expanded</h3>


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


<h3>FittedBox</h3>


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


<h3>FractionallySizedBox</h3>


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


<h3>LimitedBox</h3>


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


<h3>Padding</h3>


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


<h3>EdgeInsets</h3>


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
       padding: EdgeInsets.fromLTRB(
         left: 10.6,
         right: 30,
         top: 59.4,
         bottom: 97.8),
       child: Container(
         color: Colors.orange,
         alignment: Alignment.center,
         child: Text('Symmetric', style: TextStyle(fontSize: 20)),
       )),

Cada definição aceita números inteiros e decimais como valor de espaçamento, sendo esses definidos em pixels


<h3>SizedBox</h3>


O SizedBox é um Widget cujas definições de height e width são herdadas por seu child. Essas definições são feitas a partir das propriedades width e height, definidas em pixels. A seguir há um exemplo de uso do SizedBox:

    SizedBox(
        width: 300.0,
        height: 300.0,
        child: Card(
          color: Colors.blue[800],
        ),
      )


<h3>Transform</h3>


O Widget Transform aplica uma série de efeitos sobre seu child antes da renderização. Possui muitas funcinalidades aplicáveis à interação com o usuário, tais como a rotação de um Widget em seu eixo, transições, bouncy carousel e inúmeras outras customizações. Essas transformações são criadas com o uso de Constructors específicos, estas são:


<h3>Transform()</h3>


Principal constructor da classe, cuja principal propriedade é a transform, e esta recebe um Matrix4. O Matrix4 é uma classe cuja função é definir um eixo na matriz de rotação do Widget ao qual ela é aplicada. A seguir temos um exemplo de uso do Transform():

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


<h3>ListView</h3>


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


<h3>ListView.builder()</h3>


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


<h3>ListView.separated()</h3>


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
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/121816785-f9c94080-cc53-11eb-91d9-1b2cd2b532b7.png">
</div>


<h3>GridView</h3>


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
  <img src="">
</div>


<h2>Material Components</h2>


<h3>Appbar</h3>


Um Appbar consiste em um toolbar, Widget comum a muitas aplicações, podendo conter outros Widgets em si. Um Appbar normalmente é associado a ações em conjunto com IconButtons, ligados a navegação entre partes da aplicação. Também é comumente usado em conjunto com a propriedade appBar do Widger Scafoold, que será esplicado mais a frente. Exemplo:


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
          ...
      );
    }
  

Os principais Widgets associados ao Appbar são:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121282880-9b493e80-c8b0-11eb-894b-a737bb958885.png">
</div>

* <strong>leading</strong> - Um Widget definido antes do title<br>
* <strong>title</strong> - O primeiro Widget exibido no Appbar<br>
* <strong>actions</strong> - Uma lista de Widgets agrupados em linha após o title<br>
* <strong>flexibleSpace</strong> - Trecho entre a toolbar e o bottom da Appbar<br>
* <strong>bottom</strong> - Define o bottom do Appbar


<h2>Buttons</h2>


<h3>ElevatedButtons</h3>


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




