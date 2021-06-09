
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


<h3>SDK Platforms</h3>


Sendo a primeira modificação, o SDK Platform nada mais é que uma lista de sistemas operacionais para os quais é possível desenvolver dentro do android studio. No momento a versão mais recente do android é a 11.0, portanto, os exemplos criados aqui serão desenvolvidos nesta versão


<h3>Configurando Android SDK</h3>


O android SDK, ou Android Development Kit, é um conjunto de ferramentas que o android studio disponibiliza para seus usuários. O importante neste ponto é a configuração do SDK Tools, sendo as ferramentas a seguir as mais recomendadas:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120892355-41acef80-c5e4-11eb-9a47-2e9468d74e65.png">
</div>


<h3>Flutter Plugin</h3>


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


<h3>Chocolatey</h3>


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


<h3>Plugins</h3>


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


<h3>Gerando um Projeto Flutter</h3>


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


<h3>Estrutura Básica</h3>


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

    MaterialApp

<div align="center">
 <h5>Instância da classe MaterialApp, responsável por gerar os Widgets e customizá-los em projetos baseados em Widgets;</h5>
</div>

<div align="center">
 Os demais componetes do código presentes no main.dart são específicos da estrutura criada por padrão. Os mesmos serão mais bem abordados futuramente
</div>
  

<h1>Componentes de Interface</h1>


Sendo uma ferramenta de construção de interfaces, o Flutter conta com uma biblioteca de recursos de estruturação e customização gigantesca de interfaces gráficas. Este conjunto gera um ambiente totalmente otimizado para construir interfaces de usuário pensando na experiência decorrente disso. Também conta com uma arquitetura concentrada baseada em widgets


<h2>Widgets</h2>


Baseados no [Material Design](https://material.io/design), os Widgets são a base de desenvolvimento do Flutter. Cada estrutura que compõe a tela de uma aplicação Flutter é ou faz parte de um Widget. Eles possuem um alto nível de customização, dando a liberdade necessária ao desenvolvedor para criar e estilizar sua aplicação. Um Widget em si é uma classe, ou conjunto de classes, esta possuindo propriedades e métodos usuais, capazes de redefinir a informação de formas diversas.


<h3>Estrutura de Um Widget</h3>


Há uma série de Widgets padrão que todo iniciante em Flatter deve conhecer. Eles são:


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


<h3>Column</h3>


Uma Column é definida como um Widget de estruturação, cuja função é agrupar elementos verticalmente. Esses elementos são agrupados em um List de Widgets associado a propriedade children da Column. Exemplo de declaração de uma Column:

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

O Widget Column conta com definições de prioridade, onde um children pode ocupar mais ou menos espaço no vetor. Isso é definido pelos tipos Expanded(oculpa o espaço restante) e Flexible(cede espaço dentro da coluna). A imagem abaixo ilustra como o exemplo iria se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121289548-7c9c7500-c8bb-11eb-93c5-6af2b8e0ad82.png">
</div>

Há uma série de Widgets que podem ser children de uma Column, muitos associados a alinhamento e posição. A seguir estão definidos alguns deles:

* <strong>children</strong> - Lista de Widgets definidos como parte da Column
* <strong>mainAxisSize</strong> - Define quanto espaço deve ser ocupado no eixo principal
* <strong>mainAxisAlignment</strong> - Define o posicionamento dos Widgets children em paralelo ao eixo 
* <strong>verticalDirection</strong> - Determina a ordem de disposição dos Widgets children verticalmente e como interpretar o início e o fim na direção vertical


<h3>Row</h3>


Uma Row também é definida como um Widget de estruturação, cuja função é agrupar elementos horizontalmente. Esses elementos são agrupados em um List de Widgets associado a propriedade children da Row. Exemplo de declaração de uma Row:

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

Um Row também conta com definições de prioridade, onde um children pode ocupar mais ou menos espaço dentro do vetor. Isso é definido pelos tipos Expanded(oculpa o espaço restante) e Flexible(cede espaço dentro da linha). A imagem abaixo ilustra como o exemplo iria se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/121290979-e3229280-c8bd-11eb-9a04-4f4460f4215d.png">
</div>

* <strong>children</strong> - Lista de Widgets definidos como parte da Row
* <strong>mainAxisSize</strong> - Define quanto espaço deve ser ocupado no eixo principal
* <strong>mainAxisAlignment</strong> - Define o posicionamento dos Widgets children em paralelo ao eixo 
* <strong>verticalDirection</strong> - Determina a ordem de disposição dos Widgets children verticalmente e como interpretar o início e o fim na direção vertical


<h3>Container</h3>


Um Container é um Widget de estruturação que combina widgets comuns de pinting, posicionamento e dimensionamento, de forma parecida a uma Column ou Row. Um container provê definições para os Widgets que ele contém, por isso é definido como um Widget de estruturação, essas definições incluem margens, paddings, cor, width, height etc. Exemplo de declaração de um Container:

    Center(
      child: Container(
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

<br>
<div align="center">
  <img width="1684px" src="https://user-images.githubusercontent.com/61476935/121372952-0dec0580-c915-11eb-8951-51bb85016f28.png">
</div>
<br>

Por se trantar de uma estrutura, um Container possui propriedades bastantes cooperativas no sentido de customização de estruturas de inteface. Algumas delas são:

* <strong>alignment</strong> - Define o alinhamento do child dentro do Container
* <strong>child</strong> - Define o child contido
* <strong>color</strong> - Definição de cor do Container
* <strong>constraints</strong> - Restrições adicionais a serem aplicadas ao child
* <strong>decoration</strong> - Definição de estilo do Container
* <strong>margin</strong> - Espaço vazio que rodeia o child e seu decoration
* <strong>padding</strong> - Espaço vazio definido dentro Container, o separando internamente do child 



<h3>Scaffold</h3>


<h3>Text</h3>


<h3>Images</h3>


<h3>Buttons</h3>


<h3>Icons</h3>





