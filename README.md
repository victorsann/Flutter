
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/129893950-22b6828d-88e8-4243-b818-69cff755111b.png">
</div>
<br>
<img src="https://img.shields.io/static/v1?label=flutter&message=Framework&color=blue&style=for-the-badge&logo=Flutter"/>

O Flutter é um toolkit de desenvolvimento de interfaces multiplataforma projetado pela Google com o intuito de permitir a criação de aplicações de alto desempenho, que operem de forma nativa em diferentes plataformas e que interajam diretamente com os serviços de plataforma subjacentes. Desenvolvido em C, C++, Dart e Skia Graphics Engine, o Flutter utiliza o [Dart](https://github.com/VictorSantos12/Dart#maps) como prefered language, sendo apresentado pela primeira vez em 2015 e tendo em 2018 sua primeira versão estável. A ferramenta tem sido aprimorada desde então. 

Sua popularidade é devida a facilidade que dispõe ao permitir criar interfaces de forma simples e intuitiva, tanto no ambiente web, desktop e principalmente mobile, mantendo uma performance nativa tanto no IOS quanto no Android, além de permitir desenvolver em ambas as plataformas utilizando um código fonte único.

Com uma arquitetura desenvolvida em camadas, o flutter faz uso de uma biblioteca única de widgets customizáveis, que podem ou não possuir um ciclo de vida mediado por suas mudanças de estado. Para controle de estado e portanto, reatividade, o flutter dispõe de uma série de métodos e bibliotecas, sobre as quais este documento irá se aprofundar mais a frente. 

<!-- Outras características do Flutter são:

- Dispõe de um Stateful Hot Reload
- Utiliza Widgets Reativos Customizaveis
- É compatível em diversas IDE's
- Utiliza a GPU e permite acesso as API'S das plataformas android e IOS
- Pode se integrar a aplicações já desenvolvidas --> 

<h2>Visão Geral da Arquitetura</h2>

Para entender a utilização de uma ferramenta, seus recursos e soluções, é essencial entender seu funcionamento mesmo que superficialmente. Neste trecho da documentação iremos entender do que o Flutter é constituído e como o seu funcionamento resulta no que ele propõe. 

Este overview será dividido nas seguintes seções:

1. O modelo de arquitetura em camadas: as peças das quais o Flutter é construído
2. Interfaces reativas: um conceito central para o desenvolvimento de interface de usuário Flutter
3. Introdução aos widgets: fundamentos das interfaces de usuário do Flutter
4. O processo de renderização: como o Flutter transforma o código da interface do usuário
5. Platform embedders: como sistemas operacionais mobile e de desktop executam um aplicativo Flutter
6. Integrando o Flutter com outro código: Informações sobre diferentes técnicas disponíveis para aplicativos Flutter
7. Suporte para a web: Considerações finais sobre as características do Flutter em um ambiente de navegador

<h1>Architectural layers</h1>

O Flutter foi desenvolvido como um sistema extensível de camadas, resultando numa série de bibliotecas independentes, onde cada qual depende da camada subjacente. Nenhuma camada possue provilégios de acesso à camada abaixo, e cada parte do framework foi desenvolvida como opcional e substituível. A imagem a seguir exemplifica a descrição:

<img src="https://docs.flutter.dev/assets/images/docs/arch-overview/archdiagram.png">

Para o sistema operacional subjacente, os aplicativos Flutter são empacotados da mesma forma que qualquer outro aplicativo nativo. Um incorporador(embedder) específico da plataforma fornece um entrypoint; coordena com o sistema operacional subjacente para dar acesso a serviços como superfícies de renderização, acessibilidade e inputs, além de gerenciar o message event loop. 

Em cada plataforma o incorporador é escrito em uma linguagem de programação apropriada, como: Java e C++ para Android, Objective-C/Objective-C++ para iOS e macOS e C++ para Windows e Linux. Os incorporadores também permitem integrar código desenvovolvido em Flutter a um aplicativo existente como um módulo ou todo o conteúdo do aplicativo.

Para entender mais sobre incorporadores e como estes operam em conjunto com o Flutter, leia a documentação a seguir: [Flutter on Embedded Devices](https://flutter.dev/multi-platform/embedded).

<h2>Flutter Engine</h2>

No núcleo do Flutter está a <b>Flutter Engine</b>, que é em sua maioria um código C++ que dá suporte as primitives necessárias a todas as aplicações Flutter. A engine é a responsável por [rasterizar](https://www.google.com/search?q=rasterizar&rlz=1C1ASUM_enBR992BR992&oq=rasterizar&aqs=chrome.0.69i59j0i512l7j0i10i512j0i512.417j0j7&sourceid=chrome&ie=UTF-8) cenários em que um novo frame precise ser criado. A engine também fornece a implementação de baixo nível da pricipal API do Flutter, incluíndo um motor gráfico (atráves do [Skia](https://skia.org/)), layout de texto, E/S de arquivos de rede, suporte de acessibilidade, um arquitetura de plug-in, um Dart runtime e ferramentas de compilação.

>A engine é acessada atrevés da biblioteca [dart:ui](https://github.com/flutter/engine/tree/main/lib/ui), que envolve o código C++ subjacente nas classes Dart.

Normalmente, os desenvolvedores interagem com o Flutter por meio do framework propiamente dito, que fornece uma estrutura reativa e moderna escrita em Dart. Ele inclui um rico conjunto de plataforma, layout e bibliotecas fundamentais, composto por uma série de camadas. Analisando de baixo para cima, temos:

- Classes base ([foundational](https://api.flutter.dev/flutter/foundation/foundation-library.html)) e building block services como [animation](https://api.flutter.dev/flutter/animation/animation-library.html), [painting](https://api.flutter.dev/flutter/painting/painting-library.html), e [gestures](https://api.flutter.dev/flutter/gestures/gestures-library.html)
- A camada de renderização ([rendering layer](https://api.flutter.dev/flutter/rendering/rendering-library.html)), que fornece uma abstração para lidar com o layout e permite construir uma árvore de objetos renderizáveis que podem ser manipulados dinamicamente
- A camada de widgets ([widgets layer](https://api.flutter.dev/flutter/widgets/widgets-library.html)), que possui uma classe correspondente para cada objeto na camada de renderização e permite definir combinações reutilizaveis de classes, sendo a camada onde a programação reativa é introduzida
- O [Material](https://api.flutter.dev/flutter/material/material-library.html) e [Cupertino](https://api.flutter.dev/flutter/cupertino/cupertino-library.html) são bibliotecas que permitem utilizar a camada de widgets para implementar as linguagens de design que resumem a interface

A estrutura do Flutter é relativamente pequena; muitos recursos de nível superior que os desenvolvedores podem usar são implementados como pacotes, incluindo plug-ins de plataforma, como câmera e visualização da web, bem como recursos independentes de plataforma, como characters, http e animações que se baseiam nas principais bibliotecas do Dart e do Flutter. Alguns desses pacotes vêm de um ecossistema mais amplo, abrangendo serviços como pagamentos no aplicativo, Apple authentication e animações.

<h2>Anatomia de um App Flutter</h2>

O diagrama a seguir fornece uma visão geral das partes que compõem um aplicativo Flutter gerado pelo <i>flutter create</i>. Ele mostra onde a engine do Flutter se situa nesta stack, destaca os limites da API e identifica os repositórios onde as peças individuais residem. A legenda abaixo esclarece parte da terminologia comumente usada para descrever as partes de um aplicativo Flutter.<img align="right" style="width: 400px;" src="https://user-images.githubusercontent.com/61476935/219446815-be284749-399d-47e8-95cf-fed836939906.png">

<h3>Dart App</h3>

- Compõe widgets na interface do usuário desejada.
- Implementa a lógica de negócios.
- De propriedade do desenvolvedor.

<h3>Framework</h3>

- Fornece API de nível superior para criar aplicativos de alta qualidade (widgets, hit-testing, gestos, acessibilidade, input).
- Compõe a árvore de widgets do aplicativo em um cenário.

<h3>Engine</h3>

- Responsável por rasterizar um cenário.
- Fornece implementação de baixo nível das principais APIs do Flutter (graphics, layout de texto e Dart runtime).
- Expõe sua funcionalidade ao framework através da biblioteca dart:ui.
- Se integra a uma plataforma específica através da API Embedder da Engine.

<h3>Embedder</h3>

- Interage com o OS subjacente para ter acesso a serviços como superfícies de renderização.
- Gerencia o event loop.
- Expõe a API específica da plataforma para integrar o Embedder aos aplicativos.

<h3>Runner</h3>
 
- Compõe as partes expostas pela API específica da plataforma do Embedder em um pacote executável na plataforma de destino.
- Parte do modelo de aplicativo gerado pelo <i>flutter create</i>, de propriedade do desenvolvedor.

<h1>Reactive UI</h1>

Na superficie, o Flutter é um [Framework pseudo-declarativo reativo](https://docs.flutter.dev/resources/faq#what-programming-paradigm-does-flutters-framework-use), no qual o desenvolvedor fornece um mapeamento dos estados da aplicação para o estado da interface, sendo responsabilidade do framework atualizar a interface em tempo de execução quando ocorre uma mudança de estado. Este modelo é inspirado no React (Framework de UI reativo), que inclui um refinamento de muitos princípios de design tradicionais.

Na maior parte dos frameworks de UI, o estado inicial da interface do usuário é descrito uma única vez, sendo atualizado separadamente como resposta a eventos ocorridos em tempo de execução.

Um desafio dessa abordagem é que, à medida que o aplicativo cresce em complexidade, o desenvolvedor precisa estar ciente de como as mudanças de estado se espalham por toda a UI. Considere o seguinte exemplo:

<img align="left" style="width: 250px;" src="https://user-images.githubusercontent.com/61476935/219458346-8e8f863c-5a2d-4d52-a0ba-e85bffcbd520.png">

Neste caso o estado pode ser modificado em partes distintas da interface. À medida que o usuário interage com a interface, as alterações devem ser refletidas em todos as partes em que o estado é exibido. 

Pior ainda, a menos que seja tomado cuidado, uma pequena alteração em uma parte da interface pode causar efeitos de ondulação em partes de código aparentemente não relacionadas.

Uma solução para isso é a abordagem MVC, onde alterações são enviadas para model através de um controller e, em seguida, o model cria um novo estado para a exibição por meio do controller. No entanto, isso também é problemático, pois criar e atualizar elementos da interface do usuário são duas etapas separadas que podem ficar facilmente fora de sincronia.

O Flutter, assim como outros framework reativos, adota uma abordagem alternativa para esse problema, desacoplando explicitamente a interface do usuário de seu estado. Com React-style APIs, só é necessário criar a descrição da interface do usuário e a estrutura se encarrega de usar essa configuração para criar e/ou atualizar a interface do usuário conforme apropriado.

No Flutter, os widgets (semelhantes aos componentes do React) são representados por classes imutáveis ​​que são usadas para configurar uma árvore de objetos. Esses widgets são usados ​​para gerenciar uma árvore separada de objetos para layout, que é usada para gerenciar uma árvore separada de objetos para composição. O Flutter é, em sua essência, uma série de mecanismos para percorrer com eficiência as partes modificadas das árvores, convertendo árvores de objetos em árvores de objetos de nível inferior e propagando alterações nessas árvores.

Um widget declara sua interface de usuário substituindo o método <i><b>build()</b></i>, que é uma função que converte o estado em UI:

> UI = f(state)

O método build() é projetado para ser executado rapidamente e deve estar livre de efeitos colaterais, permitindo que seja chamado pelo framework sempre que necessário (potencialmente tão frequentemente quanto uma vez por quadro renderizado).

Essa abordagem demanda certas características de um tempo de execução de linguagem (em particular, instanciação e exclusão rápidas de objetos). Felizmente, o [Dart é particularmente adequado para essa tarefa](https://medium.com/flutter/flutter-dont-fear-the-garbage-collector-d69b3ff1ca30).


<h1>Widgets</h1>


<h2>Instalação</h2>

Antes de iniciar o processo de instalação, é importante frisar que há mais de uma forma de instalar e utilizar o Flutter, que variam de acordo com sistema operacional. A descrição a seguir mostra o processo de instalação no Windows:

- Crie uma pasta src no disco local da sua máquina
- Acesse [Flutter.dev](https://flutter.dev/docs/get-started/install/windows) e copie o Flutter repo Link
- Acesse o terminal de comando e crie um git clone do Flutter repo na pasta src

A partir deste ponto, as ferramentas que o Flutter disponibiliza já estão instalas e acessíveis. Porém, antes do processo de desenvolvimento começar é preciso fazer mais alguns ajustes:

<h2>Atualizando Path I</h2>

Para que as ferramentas do Flutter possam ser acessadas em qualquer lugar do sistema, é preciso criar uma variável de ambiente contendo o caminho para o arquivo bin, contido na pasta flutter. Para isso, acesse as variáveis de ambiente do Windows, e em ```Variáveis de usuário```, crie uma nova variável com as seguintes definições:

    Nome da Variável: FLUTTER_HOME
    Valor da Variável: C:\src\flutter

A variável criada serve como um caminho padrão de acesso aos recursos Flutter, como por exemplo, a pasta bin. A declaração de um path irá definir o acesso a esta pasta em específico. Ainda nas variáveis de ambiente do Windows, e em Path, selecione a opção editar e adicione a seguinte linha:

    %FLUTTER_HOME%\bin

Após esse processo é possível executar o Flutter no cmd do Windows. E para verificar se tudo foi devidamente instalado, utilize o seguinte comando:

    flutter doctor

O comando acessa a ferramenta de gestão do Flutter, retornando o status do ambiente criado, definindo se ele está ou não dentro do esperado. Neste ponto é provável que o retorno seja algo parecido com o seguinte:

    [√] Flutter (Channel stable, 2.2.1, on Microsoft Windows [versÃ£o 10.0.19042.985], locale pt-BR)
    [!] Android toolchain - develop for Android devices (Android SDK version 30.0.3)
        ! Some Android licenses not accepted.  To resolve this, run: flutter doctor --android-licenses
    [√] Chrome - develop for the web
    [!] Android Studio (not installed)
    [!] VS Code (not installed)
    [!] Connected device 
        ! no devices available
    
    ! Doctor found issues in 4 categories.

Os issues encontrados definem o que ainda não foi instalado ou que ainda não foi identificado como instalado. Os próximos passos corrigem estas faltas.

<h2>Ambiente de Desenvolvimento</h2>

Tendo o Flutter instalado, agora é preciso preparar o ambiente de desenvolvimento, sendo necessário instalar alguns recursos e definir algumas modificações:

- [Android Studio](https://developer.android.com/studio?hl=pt&gclid=Cj0KCQjw78yFBhCZARIsAOxgSx2xS0_FUoAlFg9Z-jqoOf8YJY3ihAhi8Uho_jdZNWmSZgPfLT93FlEaAsJvEALw_wcB&gclsrc=aw.ds)
- [VScode](https://code.visualstudio.com/) (Recomendado)

<h2>Android Studio</h2>

O android studio dispõe de recursos essenciais para o desenvolvimento de aplicações android. Apesar de suprir bem estas necessidades, a IDE não será utilizada como exemplo de ambiente de desenvolvimento devido a seu consumo excessivo de mémoria. O recurso visado aqui é a criação e uso de um ou mais emuladores, processo que será visto adiante. Abaixo estão dispostas algumas configurações do ambiente android, sendo econtradas no menu de configurações da ferramenta:

<h2>SDK Platforms</h2>

Sendo a primeira modificação, o SDK Platform nada mais é que uma lista de sistemas operacionais para os quais é possível desenvolver dentro do android studio. No momento, a versão mais recente do android é a 11.0, portanto, os exemplos criados aqui serão desenvolvidos nesta versão.

<h2>Configurando Android SDK</h2>

O android SDK, ou Android Development Kit, é um conjunto de ferramentas que o android studio disponibiliza para seus usuários. O importante neste ponto é a configuração do SDK Tools, sendo as ferramentas a seguir as mais recomendadas:

- [x] Android SDK Build-Tools 31-rc4
- [ ] NDK (Side by side)
- [x] Android SDK Command-line Tools (latest)
- [ ] CMake
- [ ] Android Auto API Simulators
- [ ] Android Auto Desktop Head Unit Emulator
- [x] Android Emulator
- [ ] Android Emulator Hypervisor Driver for AMD Processors (installer)
- [x] Android SDK Platform-Tools
- [ ] Google Play APK Expansion library
- [ ] Google Play Instant Development SDK
- [ ] Google Play Licensing Library
- [x] Google Play services 
- [x] Google USB Driver
- [ ] Google Web Driver
- [x] Intel x86 Emulator Accelerator (HAXM installer)
- [ ] Layout Inspector image server for API 29-30
- [ ] Layout Inspector image server for API S

<h2>Atualizando Path II</h2>

Como dito anteriormente, o android studio não será a ferramenta na qual os exemplos serão desenvolvidos, portanto, para que haja uma melhor interação entre os exemplos e os resultados, é recomendável que isto seja seguido. Com isso, para que as ferremantas do SDK que foram instaladas possam ser utilizadas fora do ambiente android, é preciso fazer as seguintes alterações:

- Torne a acessar o menu SDK Manager
- Copie o caminho correspondente ao Android SDK Location

Após isso, será criada uma nova variável de ambiente, específica para o acesso às SDK Tools:

    Nome da Variável: ANDROID_HOME
    Valor da Variável: Android SDK Location (C:\...\...)

Para acessar as ferramentas pré instaladas do SDK, é preciso fazer mais duas atualizações no path das variáveis de ambiente. Dessa vez correspondentes a variável ANDROID_HOME, há pouco criada:

    %ANDROID_HOME%\tools\bin
    
<br>

    %ANDROID_HOME%\platform-tools

<div align="center">
  Tendo finalizado, já é possível acessar os recursos do SDK fora do ambiente android
</div>

<h2>jdk8</h2>

Qualquer aplicação android depende essencialmente de um Java Development Kit ou jdk. Sendo um framework que desenvolve aplicações híbridas, o Flutter não é exceção, sendo estritamente necessário tê-lo instalado e operando. A seguir está listado o processo de instalação do jdk8:

<h2>Chocolatey</h2>

O [Chocolatey](https://chocolatey.org/) é um gerenciador de pacotes do window. Para instalá-lo, execute o PowerShell como administrador e efetue o seguinte comando:

    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]     ::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Para verificar a instalação, execute:

    choco --version
  
Tendo a versão retornada, confirma-se a instalação. Em seguida, instale o jdk com o seguinte comando: 

    choco install jdk8 

Para verificar a instalaçao, execute:

    java -version

Obs: É extremamente importante que a versão instalada seja a 1.8.0_211, isso garante que seus resultados serão semelhantes aos dos futuros exemplos

<h2>Android Device</h2>

Sendo o último passo da preparação do ambiente android, é preciso ter acesso a uma máquina virtual, também chamada de android device ou emulador, ferramenta extremamente importante no desenvolvimento mobile. O android studio disponibiliza uma série de dispositivos, como smartphones, smartwatches e TV's, sendo utilizados de acordo com o projeto a ser desenvolvido. O passo a passo do processo de criação e configuração do AVD pode ser acessado na documentação oficial do [developer.android.com](https://developer.android.com/studio/run/managing-avds?hl=pt-br)

Tendo seguido as indicações da documentação, é possível verificar a instalação do emulador criado através do comando a seguir:

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

Há casos em que desenvolver utilizando um emulador se torna inviável devido a limitações no hardware do desenvolvedor. Essa falta pode ser resolvida com o uso de um dispositivo em alternativa. A execução de aplicações em Smartphones é um recurso disponibilizado em qualquer aparelho android moderno, sendo possível ativa-lo caso o mesmo já não esteja ativo. A seguir estão descritos os passos para as ativações, podendo variar de dispositivos para dispositivos:

- Acesse as configurações do dispositivo
- Ative o modo de desenvolvedor atráves do build number, clicando multiplas vezes no mesmo até ativar a função

Em seguida é possível ter acesso as configurações de desenvolvedor no dispositivo. Acessando esse recurso, é possível definir as seguintes configurações:

- Permanecer Ativo
- Depuração USB

A primeira opção define que o aparelho não irá bloquear a tela enquanto a aplicação estiver rodando. Já a segunda opção define que a depuração do código pode ser feita via conexão USB. Adiante será explicado o processo de execução de um projeto tanto no androd device quanto em um dispositivo real.

<h2>VSCode</h2>

Assim como o Android Studio, o VSCode possibilita a criação de um ambiente de desenvolvimento completo, tendo a vantagem de possuir recursos mais customizáveis e consumir menos memória no processo de execução. O passo a passo da criação do ambiente de desenvolvimento Flutter no VSCode será visto a seguir:

<h2>Plugins</h2>

Há uma série de recursos que tornam desenvolver uma aplicação Flutter muito mais fácil. Disponibilizadas pelo VSCode, os plugins dão acesso a funcionalidades que compõem o ambiente de desenvolvimento. Eles são:

* <strong>Flutter</strong> - O Flutter plugin adiciona suporte para edição, refatoração, execução e recarga de aplicações mobile Flutter de maneira eficaz, assim como suporte para o Dart

* <strong>Flutter Widgets Snippets</strong> - Traz um conjunto de Widgets Flutter e Dart úteis para o desenvolvimento de aplicações Flutter

* <strong>Awesome Flutter Snippets</strong> - O Awesome Flutter Snippets é uma coleção de classes e métodos comumente utilizados no Flutter. Ele aumenta a velocidade de desenvolvimento, eliminando a maior parte do código clichê associado à criação de um widget

* <strong>Dart Data Class Generator</strong> - O Dart Data Class Generator cria classes de dados dart com facilidade sem escrever boilerplate ou executar a geração de código

<h2>Primeiro Projeto</h2>

Tendo configurado o ambiente, é possível gerar um novo projeto Flutter. Todo o passo a passo de criação, execução e configuração de um projeto será visto a frente, além de um overview dos arquivos que são gerados na criação.

<h2>Gerando um Projeto Flutter</h2>

Para gerar um novo projeto, crie um diretório no qual o projeto será alocado, e em seguida abra o VSCode. Com o terminal aberto, acesse o diretório criado e execute o seguinte comando:

    flutter create primeiro_projeto

Após a execução, uma série de pastas com arquivos referentes ao primeiro_projeto serão gerados em uma pasta de mesmo nome, sendo esta a folder geral do projeto. Estes arquivos e pastas consitem em:

<h2>.dart_tool</h2>

<h2>build</h2>

<h2>ios</h2>

<h2>lib</h2>

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

Define o acesso a classes e métodos essenciais para gerar e rodar uma aplicação.

    void main() {}

Principal método do projeto.

    runApp();

Método que infla o widget fornecido e o anexa à tela.

    MyApp

Class correspondente a toda a aplicação, onde features padão são definidas.

    Widget build(BuildContext context) {}

Descreve a parte da interface do usuário representada pelo widget, retornando uma instância da classe MaterialApp.

    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );

Instância da classe MaterialApp, responsável por gerar os Widgets e customizá-los em projetos baseados em Widgets. O  MaterialApp é uma classe de definição de layout baseada no Material Design do Google. Ele possui uma série de atributos que definem características gerais da aplicação. Os atributos do exemplo correspondem a um title do projeto, uma definição de tema e tela inicial, definida como home.

Os demais componetes do código presentes no main.dart são específicos da estrutura criada por padrão. Os mesmos serão mais bem abordados futuramente.

<h2>.flutter-plugins</h2>

<h2>.metadata</h2>

<h2>.packages</h2>

<h2>flutter_native_splash.yaml</h2>

<h2>pubspec.lock</h2>

<h2>pubspec.yaml</h2>

<h2>Executando no Emulador</h2>

Como foi dito anteriormente, agora veremos o processo de execução do projeto tanto no emulador quanto em um dipositivo real. O primeiro passo é executar o emulador definido nas configurações do ambiente android. Como já foi mostrado, é possível executar o emulador através da linha de comando, não sendo a única forma:

- Na lista de ferramentas executáveis do VSCode é possível acessar o menu de Devices

Nele é possível acessar o emulador anteriomente instalado e configurado, este sendo identificadi pelo AVD Name, tambem já mencionado. Além disso, também estão o Chrome, o Edge, e também há a opção de criação de uma novo emulador. 

Após executar o android device, vá até a main file e execute o projeto com ```F5```. O resultado é o seguinte:

<br>

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151175041-627c1299-c046-4cf3-8170-b1e81af3ed52.gif">
</div>

<br>

Um app padão é executado como resposta, sendo possível customizá-lo e ver o resultado ser compilado em tela após o save de forma instantânea. Nele é possível ver a definição de alguns Widgets, estruturas base de uma aplicação Flutter, as quais serão mais bem abordadas a frente.

<h2>Executando no Dispositivo Real</h2>

O processo de execução da app em um dispositivo real é semelhante ao anteriomente descrito. Somente diferenciando na necessidade de conectar o aparelho via cabo USB, para asssim poder acessá-lo no menu de Devices de forma imediata: 

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120897316-d4a55400-c5fb-11eb-8e3f-e93e9b0c9ee8.png">
</div>

<br>

O resultado é semelhante ao anteriormente visto em um android device. E como já foi dito, utilizar um aparelho real é uma alternativa ao uso dos emuladores, sendo importante também para que o desenvolvedor tenha contato com a aplicação desenvolvida de forma que o mesmo sinta a experiência do usuário. Tendo isto dito, deste ponto em diante, os exemplos irão permanecer restritos ao andorid device.

<h2>Conectando Device (WI-FI)</h2>

Uma das dificuldades de utilizar um aparelho real como substituto de um device emulator é a necessidade de conexão via USB. Essa barreira pode ser quebrada graças ao recurso de conexão WI-FI, o qual discarta o uso de qualquer conexão física entre o ambiente de desenvolvimento e o aparelho. Para fazer uso do recurso, siga os passos a diante:

No terminal, execute os comandos a seguir:

    adb devices

<div align="center">
  <h5>Detecta os devices conectados a sua máquina</h5>
</div>

    adb tcpip 5555

<div align="center">
  <h5>Reinicializa a porta de conexão tcpip 5555</h5>
</div>

O próximo passso é acessar seu smartphone e verificar o endereço de IP correspondente ao roteador ou modem WI-FI da sua rede. Em seguida, execute o comando abaixo:

    adb connect 000.000.0.000:5555

<div align="center">
  <h5>Cria uma conexão entre os devices conectados, sua máquina e a rede na porta 5555</h5>
</div>

Tendo isso feito, já é possível remover a conexão USB. Entretanto, caso a rede seja desconectada entre qualquer ponto, seja sua máquina ou smartphone, você perderá a conexão, sendo necessário refazer o processo.

<h1>Widgets</h1>

Buscando inspiração em ferramentas como o React e o [Material Design](https://material.io/design), o Flutter permite criar interfaces com base em uma estrutura hierarquica de classes Dart chamada de Widget Tree. Um widget descreve como a interface irá se parecer com base em suas configurações, já como ela irá se comportar é definido por seu estado.  

Eles possuem um alto nível de customização, dando a liberdade necessária ao desenvolvedor para criar e estilizar a interface. Como já foi dito, um Widget em si é uma classe, ou conjunto de classes, estas possuindo propriedades próprias capazes de redefinir a informação de diversas formas.

<h2>Hello world</h2>

A forma mais simples de criar um app flutter é retornar um widget atravez da função ```runApp()```:

    void main() {
      runApp(
        const Center(
          child: Text{
            'Hello, world!',
            textDirection: TextDirection.ltr,
          },
        ),
      );
    }

A função ```runApp()``` define o widget a ela dado como base para a Widget Tree, fazendo com que ele preencha a totalidade da tela. No caso acima, é definido que o widget <i>Center()</i>(cuja função é alinhar todos os elementos que ele contém no centro do espaço disponível) seja a base para os próximos elementos que irão compor a UI. 

Dadas as devidas exceções, todos os widgets possuem a propriedade child, a qual retorna um outro widget que irá obedecer as regras definidas por suas configirações. Porém, para entender como a estrutura de uma aplicação Flutter é gerada, precisamos ir um pouco mais a fundo.

No processo de desenvolvimento de um app, você normalmente criará novos widgets que serão subclasses tanto de StatelessWidgets quanto de StatefulWidgets.
Seguindo a lógica de compor a interface, a principal função dessas subclasses será implemantar um ```build()``` method, o que o define em termos de complexidade com relação a lower-level widgets. Tendo como exemplo de lower-level o widget <i>Center()</i>, já que sua função é predefinida e ele normalmente compõem estruturas maiores. No entanto, antes de entendermos como essas estruturas são utilizadas, precisamos abordar um dos assuntos mais importantes quanto ao desenvolvimento de apps:

<h1>State Management</h1>

O Flutter possui uma gama gigantesca de ferramentas com diferentes métodos para gerenciar o estado da interface, possuindo uma abordagem distinta das ferramentas de desenvolvimento nativas quando se trata de reatividade. Tendo adotato um modelo declarativo, o Flutter permite criar a interface com base em seu estado atual, além de aplicar mudanças em partes específicas da interface de forma rápida, levando em conta cada frame.

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/122969485-13107200-d363-11eb-96f8-e29f6f6c0c2e.png">
</div>

<h2>O Conceito de State</h2>

Definindo de forma simples, o state é composto por todas as características da aplicação(ou parte dela) em determinado momento do processo de run. Isso inclui tudo o que compõe a interface, seja um assets element, uma cor específica, valores atrelados a variáveis, animações, tipos textuais e etc. As mudanças nessas características concluem um state e iniciam outro, o que dá ao Flutter um grande poder em termos de reatividade. Sendo um pouco mais detalhista, o state no Flutter se divide em dois tipos:

<h2>Ephemeral State</h2>

Também chamado de UI state ou local state, é o estado que um widget teria, sendo ele próprio o responsável por tratá-lo e reagir a sua mudança. Em outras palavras, as mudanças nas características desse elemento não afetam diretamente a aplicação como um todo. Pode-se citar como exemplo:

    class MyHomepage extends StatefulWidget {
      const MyHomepage({Key? key}) : super(key: key);
    
      @override
      _MyHomepageState createState() => _MyHomepageState();
    }
    
    class _MyHomepageState extends State<MyHomepage> {
      int _selectedIndex = 0;
    
      static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    
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

Deixando de lado boa parte do que é mostrado no exemplo, já que tais conceitos serão mais bem abordados em seguida, é possível destacar o elemento correspondente ao ephemeral state:

    int _selectedIndex = 0;

Aqui a variável <i>_selectedIndex</i> possui a tarefa de definir a seleção de determinada posição na bottomNavigationBar, característica restrita ao elemento que a contém. Por mais que a mudança na seleção permita acessar um outro ponto da aplicação, amenos que seja declado, o único state que sofrerá mundaças é o da própria bottomNavigationBar, o que consiste em um local state. 

Um detalhe importante a se ater é que a definição inicial de um state sempre será retomada quando a aplicação iniciar, ou seja, um state é por essência imutável. Sendo zero a posição inicial, sempre que o widget for renderizado, a posição selecionada será 0. Esse recurso é bastante útil quando há uma quantidade previsível de possíveis estados.

A imagem a seguir ilustra como o exemplo irá se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151704415-8a1813f4-ec0c-490a-b1d6-9f32d91f34a3.gif">
</div>

<h2>App State</h2>

O App State, ou shared state, corresponde as informações que se mantém entre as sessões de acesso do usuário, possuindo maior escalabilidade em relação ao ephemeral state e sendo compartilhada por toda a aplicação. Exemplos claros de um shared state são:

- Informações de login
- Preferências do usuário
- Notificações ou mensagens não lidas 
- Dados de uma compra, como um carrinho ou lista de desejos 

Divergindo do estado restrito a um único elemento da interface, o App State demanda o uso de uma ou mais ferramentas de gerenciamento que variam de acordo com a robusteis e o tipo de aplicação que será criada. Tais ferramentas serão mais detalhados nos próximos passos. 

Contudo, é importante ter em mente que ambos App e ephemeral state podem ser utilizados da forma que o desenvolvedor bem entender, com suas exceções. Para definir de forma mais lógica qual tipo de State utilizar e quando, o diagarama a seguir ilustra as formas mais comuns de uso:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/122982146-e5322a00-d370-11eb-986c-9ec755ce1197.png">
</div>

Agora que definimos o que é o state para o Flutter, iremos entender como e quando utilizá-lo na estruturação da interface.

<h2>StatelessWidget</h2>

Um StatelessWidget é um widget que descreve parte de uma interface criando um conjunto de outros widgets, os quais irão descrever a interface em uma escala menor. StatelessWidgets recebem essa definição por não possuirem um state mutável, ou seja, características neles declaradas só podem ser alteradas manualmente ou se as mesmas possuem seu próprio state. Os Widgets que não possuem uma definição de estado são comumente utilizados para estruturar a aplicação em partes não afetadas pela mudança tanto no Ephemeral State quando no App State. 

Uma melhor definição para seu uso é quando um elemento específico depende apenas das informações de configuração do objeto e do BuildContext, sobre o qual falaremos a seguir:

    class MyWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Container();
      }
    }

O método build define o que será renderizado com a instância da classe que o carrega. Nele é definido o context, que é responsável por identificar o widget em questão dentro da widget tree, além de conter informações relevantes que podem ser utilizadas por widgets nele renderizados, como seu sizing.

<h2>StatefulWidget</h2>

Um StatefulWidget é um widget que descreve parte de uma interface formada por um conjunto de outros widgets, os quais irão descrever a interface em uma escala menor, podendo ou não possuir seu próprio state. Sendo usualmente utilizados quando a parte da interface em questão possui elementos que mudam dinamicamente. Sua estrutura diverge de um StatelessWidget por ser composta por duas classes e não apenas uma. 

A classe inicial nada mais é que uma subclasse da <i>StatefulWidget Class</i>, sendo responsável por criar o widget em questão. Já a segunda classe consiste em uma subclasse da <i>State Class</i>, cuja função é conter o state do widget e executar o <i>build()</i> method:

    class MyStatefulWidget extends StatefulWidget {
      
      const MyStatefulWidget({Key? key, required this.title}) : super(key: key);

      @override
      State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
    }
    
    class _MyStatefulWidgetState extends State<MyStatefulWidget> {
      @override
      Widget build(BuildContext context) {
        return Container();
      }
    }

Essa estrutura foi adotada pois ambas as classes possuem um ciclo de vida distinto. Widgets são objetos temporários, utilizados para construir a aplicação em seu estado atual. O State, por outro lado, persiste entre as chamadas do build() method, o que o permite conservar informações durante seu ciclo de vida.

<h2>createState Method</h2>

O método <i>createState</i> é chamado sempre que o widget for criado, retornando uma instância da classe que faz o build do widget com base em seu State atual. No exemplo acima, a classe retorna é a <i>_MyStatefulWidgetState</i>. 

O Flutter pode chamar esse método várias vezes durante o tempo de vida de um StatefulWidget. Por exemplo, se o widget for inserido na widget tree em vários locais, a estrutura criará um objeto State separado para cada local. Da mesma forma, se o widget for removido da widget tree e posteriormente reinserido, o Flutter irá chamar o createState novamente para criar um novo objeto State, simplificando seu ciclo de vida.

<h2>State Class</h2>

Ainda com o último exemplo em mente; a classe <i>_MyStatefulWidgetState</i> armazena as infromações mutáveis que podem vir a mudar no ciclo de vida do widget. A classe State define o comportamento da interface de acordo com esse estado, ela é responsável por redefinir o State e fazer um rebuild a cada mudança.

<h1>Usando Material Components</h1>

O Flutter conta com uma série de métodos de criação e desenvolvimento de interfaces, sendo uma delas o [Material Design](https://material.io/design). O Material design é uma biblioteca de elementos de interface baseada em widgets, cujo uso não é obrigatório mas consiste em uma boa prática e recomendação padrão do Flutter. Seu uso é definido na file pubspec.yaml como default:

    name: my_app
    flutter:
      uses-material-design: true

Além disso, o Flutter dispõe da [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html) class, que agrupa uma série de widgets normalmente utilizados e necessários em um Material design app. Seu uso inicia com o ```Material App``` widget, que permite criar uma base para a widget tree:

    void main() {
      runApp(const MyApp());
    }
    
    class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
    }

Nela serão definidos o title que identifica o app, o color theme, a página inicial e entre outros. A seguir estão dispostos os atributos da class MaterialApp, dos quais serão destacados os mais importantes:

    (new) MaterialApp MaterialApp({
      Key? key,
      GlobalKey<NavigatorState>? navigatorKey,
      GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
      Widget? home,
      Map<String, Widget Function(BuildContext)> routes = const <String, WidgetBuilder>{},
      String? initialRoute,
      Route<dynamic>? Function(RouteSettings)? onGenerateRoute,
      List<Route<dynamic>> Function(String)? onGenerateInitialRoutes,
      Route<dynamic>? Function(RouteSettings)? onUnknownRoute,
      List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
      Widget Function(BuildContext, Widget?)? builder,
      String title = '',
      String Function(BuildContext)? onGenerateTitle,
      Color? color,
      ThemeData? theme,
      ThemeData? darkTheme,
      ThemeData? highContrastTheme,
      ThemeData? highContrastDarkTheme,
      ThemeMode? themeMode = ThemeMode.system,
      Locale? locale,
      Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
      Locale? Function(List<Locale>?, Iterable<Locale>)? localeListResolutionCallback,
      Locale? Function(Locale?, Iterable<Locale>)? localeResolutionCallback,
      Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
      bool debugShowMaterialGrid = false,
      bool showPerformanceOverlay = false,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      bool showSemanticsDebugger = false,
      bool debugShowCheckedModeBanner = true,
      Map<ShortcutActivator, Intent>? shortcuts,
      Map<Type, Action<Intent>>? actions,
      String? restorationScopeId,
      ScrollBehavior? scrollBehavior,
      bool useInheritedMediaQuery = false,
    })

<h2>debugShowCheckedModeBanner</h2>

Um Flutter App é criado por padrão em modo de debug, e um dos sinais dessa definição é a propriedade debugShowCheckedModeBanner, cuja função é criar uma barra que indica o modo de depuração do app, o que não é utilizidado em desenvovimento e muito menos em produção. O exemplo a seguir desabilita o banner de debug em toda a aplicação:

    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    )

Como resultado, temos:

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/164480100-f3215b57-b277-4116-b58a-8e689fa11eb7.gif">
</div>

<br>

<h2>theme</h2>

A propriedade theme permite definir um padrão de cores para os material widgets em toda a aplicação, como appBars, drawers e entre outros. O exemplo a seguir define como utilizar a prorpiedade theme de forma simplória: 

    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MaterialApp Theme'),
        ),
      ),
    )

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/164480197-25969309-e8c4-4825-b00e-2b667d949f5a.gif">
</div>

<h2>supportedLocales</h2>

A propriedade supportedLocales define uma lista de localidades nas quais o app pretende entrar em operação. Por padrão, apenas o inglês americano é suportado, tendo como valor padrão [const Locale('en', 'US')], sendo necessário declarar quais locais serão suportados. A ordem de definição dos elementos é importante para o funcionamento. O exemplo a seguir mostra o padrão de supportedLocales utilizados em apps brasileiros:

    MaterialApp(
      
      ...

      supportedLocales: [const Locale('pt'), const Locale('en')],

      ...

    );

<h2>initialRoute</h2>

O nome da primeira rota a ser exibida, se um Navigator for construído.

O padrão é <i>dart:ui.PlatformDispatcher.defaultRouteName</i> que pode ser substituído pelo código que iniciou a aplicação.

Se o nome da rota começar com uma barra, ele será tratado como um "deep link" e, antes que essa rota seja enviada, as rotas que levam a essa também serão enviadas. Por exemplo, se a rota fosse ```/a/b/c```, o aplicativo começaria com as quatro rotas ```/, /a, /a/b``` e ```/a/b/c``` carregadas, nessa ordem. Mesmo que a rota fosse apenas ```/a```, o aplicativo começaria com ```/``` e ```/a``` carregado. é possível utilizar a propriedade <i>onGenerateInitialRoutes</i> para substituir esse comportamento.

<h1>Abordagens de Gerenciamento</h1>

O Flutter possui uma série de abordagens do state management, cada uma com suas pecularidades e formas de uso, além de compatibilidade com uma série de bibliotecas cujas funções são proporcionar um uso mais coerente e favorável do recurso ao desenvolver. A seguir entraremos em contato com as principais ferramentas que o Flutter disponibiliza para fins de gerenciamento de estado de uma aplicação:

<h2>setState</h2>

O setState, ou gerência de estado implícita, é um low-level approach, normalmente utilizado para tratar ephemeral states na escala de widgets. Sua principal função no contexto de gerenciamento é notificar o Flutter de que houve uma mudança no internal state do objeto ou Widget, além de definir um novo valor de State. O método setState é estruturado da seguinte forma:

    setState(() { _myState = newValue; });

A seguir temos um exemplo de declaração e uso do seState, utilizando o mesmo princípio de increment que o Flutter disponibiliza em seus modelos:

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
                 Visibility(
                   visible: _favorite > 0,
                   child: Text(
                    '$_favorite',
                    style: TextStyle(color: Colors.pink, fontSize: 20),
                   ),
                 ),
               ])
             ]),
            ),
          ]),
        ));
      }
    }

O exemplo utiliza o setState method para simular um favorite, recurso muito comum em redes sociais. Um detalhe importante aqui é que o setState pode ser utilizado de formas distintas, sendo neste caso chamado diretamente pelo onPress do IconButton. A imagem a seguir ilustra como o exemplo irá se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/164482072-3761d1ad-8ecf-4110-b294-9c0e4ece88da.gif">
</div>

<h2>InheritedWidget & InheritedModel</h2>

Também definidos como um low-level approach, o uso dos InheritedWidget & InheritedModel volta o State Management para a comunicação entre Widgets hierarquicamente ligados, também chamados de ancestors e children. 


<h2>Provider</h2>


<h2>Redux</h2>


<h2>Fish-Redux</h2>


<h1>BLoC / Rx</h1>

O BLoC, ou Business Logic Component, é um modelo de <i>state management</i> bastante utilizado pela comunidade flutter, sendo um dos primeiros a ser implementado. Com a premissa de separar regra de négocio, UI e gerenciamento de estado, a ferramenta foi desenvolvida com base em três pilares:

- <b>Simplicidade</b>: Facilmente aplicável, podendo ser compreendido por desenvolvedores em diferentes fases de aprendizado.
- <b>Poder</b>: Ajuda a criar aplicações complexas e poderosas as compondo a partir de componentes ainda menores.
- <b>Testabilidade</b>: Testa facilmente cada aspecto da aplicação, permitindo uma interação mais confiável.

No geral, o Bloc tenta tornar as mudanças de estado previsíveis regulando quando uma mudança de estado pode ocorrer e impondo uma única maneira de alterar o estado em todo o aplicativo.

<h2>Conceitos Básicos</h2>

Existem alguns conceitos básicos que são críticos para o entendimento e uso do BLoC. Cada um destes será abordado em detalhes a seguir, bem como analisados e aplicados em exemplos práticos.

<h2>Streams</h2>

Um dos aspectos que mais chamam atenção no BLoC é a forma com que ele utiliza o conceitos de [Streams](https://dart.dev/tutorials/language/streams) para gerar reatividade. Strems consistem em um modelo de programação assíncrona que permite monitorar o fluxo de informações com base em eventos gerados pelo usuário, tratamento de erros e mais. O exemplo a seguir demonstra na prática o uso de streams no flutter:

    // ignore_for_file: prefer_const_constructors
    
    import 'dart:async';
    
    import 'package:flutter/material.dart';
    
    class StreamCounter extends StatefulWidget {
    
      const StreamCounter({Key? key}) : super(key: key);
    
      @override
      State<StreamCounter> createState() => _StreamCounter();
    }
    
    class _StreamCounter extends State<StreamCounter> {
      
      final controller = StreamController();
      int value = 0;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Streams',
            ),
          ),
          body: Center(  
            child: StreamBuilder(
              initialData: value,
              stream: controller.stream,
              builder: (context, snapshot) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You have pushed the button this many times:'),
                    Text('${snapshot.data}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(  
            onPressed: () => controller.add(++value),
            backgroundColor: Colors.blue,
            child: Icon(Icons.add),
          ),
        );
      }
    }

Explicando de forma sucinta, um fluxo de informações em stream sempre se inicia a partir de um event source; seja um evento que obtem a informação ou que opera sobre ela. O exemplo acima se comporta de formar reativa pois é possível monitorar caso um evento associado a um stream seja disparado, o que descreve o observer pattern, Disign Pattern bastante associado a programação reativa. 

Sendo mais preciso, ao declarar uma instância da classe <i>StreamController</i>, a qual cria uma stream em que é possível monitorar (através do widget StreamBuilder) um fluxo de eventos, estes sendo por sua vez as ações do usuário (pressionar um botão) como event source. Logo, quando uma ação é realizada, uma reação resultante ocorre, sendo, neste caso, o incremento da variável <i>value</i>.

A imagem a seguir ilustra como o exemplo irá se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/177813294-431d48bf-e66c-464c-9131-92e907098d0a.gif">
</div>

Tendo entendido o conceito básico de Stream, é possível prosseguir com o BLoC.

<h2>Cubit</h2>

Um Cubit é uma classe herdeira da classe <i>BlocBase</i> e que pode ser extendida para gerenciar qualquer tipo de estado. Isso é feito através da exposição de funções que podem ser invocadas para acionar mudanças de estado.

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/183109389-4a731f85-08a2-4bcd-af7e-8e82d7fb14a5.png">
</div>

Os estados são o output de um Cubit e representam uma parte do estado da interface. Os componentes da interface podem ser notificados de alterações nesses estados e redesenhar partes de si mesma com base na atualização.

<h2>Criando um Cubit</h2>

Ao criar um Cubit é preciso definir o tipo de estado que se espera ser gerenciando, este sendo defindo como o tipo T atrelado a classe <i>Cubit</i>. Além disso, é preciso definir um estado inicial para o Cubit em questão, o declarado em um <i>super method</i>:

    class CounterCubit extends Cubit<int> {
      CounterCubit(int initialState) : super(initialState);
    }

Também há casos mais complexos em que pode ser necessário usar uma classe em vez de um tipo primitivo para suprir necessidades específicas da rotina.

<h2>Mudanças de Estado</h2>

Cada Cubit tem a capacidade de emitir um novo estado através do método ```emit()```:

    import 'package:bloc/bloc.dart';

    class CounterCubit extends Cubit<int> {
    
      CounterCubit(int initialState) : super(initialState);
    
      void increment() => emit(state + 1);
      
    }

No trecho acima, a classe CounterCubit está expondo um método público chamado <i>increment</i> que pode ser instanciado e utilizado para notificar o CounterCubit sobre quando incrementar seu estado. Quando o increment é chamado, é possível acessar o estado atual do Cubit através do state getter e emitir um novo, o que consiste em adicionar 1 ao estado atual.

> O método emit é protegido, o que significa que só deve ser usado dentro de um Cubit.

O exemplo a seguir demonstra como o Cubit pode ser utilizado para gerenciar o estado de uma parte da interface:

    import 'package:flutter/material.dart';

    class Counter extends StatefulWidget {
          
      const Counter({Key? key}) : super(key: key);
      
      @override
      State<Counter> createState() => _CounterState();
    }
        
    class _CounterState extends State<Counter> {
        
      final counterCubit = CounterCubit(0);
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('App Cubit'),
          ),
          body: Center(  
            child: StreamBuilder(
              stream: counterCubit.stream,
              builder: (context, snapshot) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You have pushed the button this many times:'),
                    Text('${counterCubit.state}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(  
            onPressed: () => counterCubit.increment(),
            backgroundColor: Colors.blue,
            child: Icon(Icons.add),
          ),
        );
      }
    }

Inicialmente, a classe CounterCubit sofre uma instância em um StatefulWidget. A partir dela o método increment é disponibilizado, permitindo operar mudanças no estado do Cubit em questão através de uma ação do usuário. Antes de demonstrar o resultado, é importante destacar que, assim como um StreamController, a classe Cubit disponibiliza uma Stream na qual o estado será operado, o que permite fazer uso de um StreamBuilder para monitorar o fluxo de mudanças.

A imagem a seguir ilustra como o exemplo irá se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/183095920-ce90a1cb-0d7b-4d41-b2cf-08ee2b8237b1.gif">
</div>

<h2>Bloc</h2>

A classe Bloc, assim como a Cubit, herda da <i>BlocBase Class</i>, o que significa que ambas possuem API's e formas de uso bastante similares. No entanto, ao invés de criar uma função que trata as ocorrências de variações de estado, um Bloc recebe eventos de entrada e os converte em estados de saída.

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/183108397-4e86c6da-c597-499f-b515-72a111bb545f.png">
</div>

Eventos são o input de um Bloc. Eles geralmente são adicionados em resposta a interações do usuário, como ações de click ou eventos de ciclo de vida, como a renderização de uma página.

<h2>Criando um Bloc</h2>

O processo de criação de um Bloc não é muito diferente do utilizado para criar um Cubit, exceto que além de definir o estado que será gerenciando, também é preciso definir o tipo de evento que o Bloc irá processar.

O exemplo a seguir demonstra a criação de um counter cujo estado será gerenciado por um Bloc:

    import 'package:flutter_bloc/flutter_bloc.dart';
    
    abstract class CounterEvents {}
    
    class IncrementEvent extends CounterEvents {}
    
    class CounterBloc extends Bloc<CounterEvents, int> {
    
    }

A classe CounterBloc irá extender da classe Bloc, onde serão declarados o tipo de evento recebido, sendo desta vez uma classe abstrata <i>CounterEvents</i>, cuja classe filha será usada como evento emissor.

O próximo passo é declarar um event handler, o qual será responsável por tratar um tipo específico de evento e somente ele. Para delcarar um event handle, adicione um constructor a classe <i>CounterBloc</i> definindo um <i>initialState</i>, e, posteriormente, o método ```on```:

    CounterBloc(int initialState) : super(initialState) {
      on<IncrementEvent>((event, emit) {
        emit(state + 1);
      });
    }

O método <i>on</i> recebe o tipo de evento com pelo qual se responsabilizará. Como parâmetro é declarada uma função anônica, e esta, por sua vez, recebe o evento em si (o qual pode ser acessado a qualquer momento) e um Emitter, cuja função é permitir disparar novos estados a partir do event. 

<h2>Monitorando um Bloc</h2>

Para exemplificar o uso de um Bloc, faremos o mesmo exercício que descreveu o uso da classe CounterCubit, criando uma interface e permitinto o monitoramento do seu estado:

    import 'package:flutter_bloc/flutter_bloc.dart';
    
    class Counter extends StatefulWidget {
    
      const Counter({Key? key}) : super(key: key);
    
      @override
      State<Counter> createState() => _CounterState();
    }

    class _CounterState extends State<Counter> {
  
      final counterBloc = CounterBloc(0);
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Counter Bloc'),
          ),
          body: Center(  
            child: BlocBuilder<CounterBloc, int>(  
              bloc: counterBloc,
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You have pushed the button this many times:'),
                    Text('${counterBloc.state}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                );   
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(  
            onPressed: () => counterBloc.add(IncrementEvent()),
            backgroundColor: Colors.blue,
            child: Icon(Icons.add),
          ),
        );
      }
    }

O fluxo é semelhante ao descrito anteriormente, exceto pelo uso do BlocBuilder (widget próprio para tratar eventos em <i>Bloc Classes</i>). Nele são definitos os mesmos parâmetros que a classe Bloc recebe quando sofre um extends, sendo esses o tipo de evento monitorado e o tipo de estado emitido. Um BlocBuilder ainda possui as propriedades bloc e builder, que declaram, respectivamente, o Bloc monitorado e o trecho da interface que é atualizada com a mudança de estado.

A imagem a seguir ilustra como o exemplo irá se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/183094863-d71065af-28ee-4c7c-9748-ea8eea90ddb0.gif">
</div>

<h2>Bloc Widgets</h2>





<h2>GetIt</h2>

<h2>MobX</h2>

O MobX é uma biblioteca de State Management que facilita o processo de interação entre os dados de uma aplicação e sua UI de forma reativa, gerenciando tanto estados locais quanto globais. Ele possui uma tríade de conseitos básicos essenciais que juntos formam um escopo fechado de gerenciamento. 

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123152016-7ae5bc00-d43a-11eb-8318-8904605b1dea.png">
</div>

A seguir veremos esses conceitos de forma mais aprofundada associados a um exemplo prático. O app será semelhante ao app de counter disponibilizado pelo Flutter e que usa os conceitos do setState method. Neste caso, iremos aplicar parte da tríade individualmente, mostrando o resultado da junção de todos ao fim. Porém, antes de prosseguir com as definições, é preciso ter o mobx package alocado nas dependências do novo projeto. Portanto, siga os passos abaixo:

No arquivo pubspec.yaml, logo após cupertino_icons, defina as seguintes dependências:

    mobx: 
    flutter_mobx:

O primeiro package é referente ao MobX em si, já o segundo define o acesso a um Widget específico e muito importante para a criação e uso das reactions. Para se certificar do uso das versões corretas, ou mesmo das mais atuais, verifique as dependências em [MobX.dart](https://mobx.netlify.app/getting-started). 

Após criar as dependências e salvar o arquivo, o próprio Flutter detecta as mudanças e passa a disponibilizá-las. Mas, caso seu app não reconheça as alterações, rode o seguinte comando na pasta do projeto:

    flutter packages get  

Em seguida, já é possível gerenciar o State do counter app utilizando o MobX. Agora, para criarmos o exemplo, observe os passos a seguir:

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

O Observable aqui é uma variável que guarda o valor inicial do counter, sendo este o State padrão do counter Widget. Ele é o valor dado ao método associado a Action, o qual é incrementado.

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

A classe ```Observer``` é disponibilizada pelo flutter_mobx package, anteriormente mencionado. Ela possui um atributo chamado builder, que é responsável por retornar o Widget Text() caso haja uma mundança no valor passado. Neste caso o valor da variável counter, tida como o Observable. A imagem a seguir ilustra como o exemplo irá se comportar:

<br>
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/164483567-cfc0dcd6-a369-456c-89c6-76b2c34faf0d.png">
</div>
<br>

<h2>Gerando Códigos MobX</h2>

Todo o processo visto anteriormente exemplifica o uso e as definições da tríade do MobX de forma simples no mérito explicativo. Com algumas adições, o MobX permite ter o mesmo desempenho de forma muito mais simples, e para isso, faremos algumas . No arquivo pubspec.yaml, logo após dev_dependencies, defina as seguintes dependências de desenvolvimento:

    dev_dependencies:
      build_runner:
      mobx_codegen: 

Para se certificar do uso das versões corretas, ou mesmo das mais atuais, verifique as dependências em [MobX.dart](https://mobx.netlify.app/getting-started). 

Após definir as novas dependências, será necessário adequar o exemplo anterior a um modelo favoravel ao seu uso. No arquivo controller, crie as seguintes modificações:

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

<h5>Um annotation que identifica o atributo counter como um observable</h5>

    @observable

<h5>Um annotation que identifica o método increment() como uma action </h5>

    @action

Além disso, uma class secundária, esta responsável por fazer um Mixin entre a class base e os códigos que serão gerados, é criada. A classe que será gerada age como um Mixin e é definida com o uso do indentificador ```_$```, sendo gerada em um arquivo a parte. Para que isso acontecer é preciso seguir mais alguns passos.

Primeiro é preciso definir uma chamada para o arquivo que será criado e que irá conter os códigos gerados. Essa chamada segue a sintaxe padrão do nome do arquivo que contém as definições de observable e action; chamado de "controller" neste caso, separada da terminação .dart pelo marcador ```.g```:

    part 'controller.g.dart';

Após esse processo, é preciso gerar a classe associada. Para isso existem dois possiveis comandos:

<h5>Comando que gera a classe e monitora as alterações no arquivo controller.</h5>

    flutter pub run build_runner watch

<h5>Comando que gera a classe apenas uma vez e só a atualiza caso seja executado novamente.</h5>

    flutter pub run build_runner build

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

<br>
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/164061862-36a421b0-e73c-47dc-9547-16370fc961d8.gif">
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

<br>
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/164061981-62066124-6f28-4401-b4f9-bb20183cd7b3.gif">
</div>
<br>

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

<!-- <div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/123561221-8b20d280-d77d-11eb-8f11-ee7bba6852c6.png">
</div> -->

<h2>MobX Computed Observables</h2>

Para o MobX, um state consiste em core-states e derived-satates. O core-state é o estado inerente ao domínio com o qual você está lidando, já um derived-state herda de um core-state. Por exemplo, em uma entidade Contact, o firstName e o lastName formam o core-state Contact. Logo, uma entidade fullName, por exemplo, obtida a partir da combinação entre firstName e lastName, é um derived-state.

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
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/164062118-7455dc2d-f477-4ffc-b4c7-9b87952234fc.png">
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
       })
      )

O Widget Text recebe a validação de formularioValidado, que é avaliado por uma expressão condicional, resultando no retorno do string 'Campos Válidos' caso seja true, ou do string 'Campos Inválidos', caso seja false. Além disso, a mesma validação acontece no botão, que passa a ser ativo caso a validação retorne true. A imagem a seguir ilustra como o exemplo irá se comportar:

<div align="center">
  <img width="85%" src="https://user-images.githubusercontent.com/61476935/164062323-d91bc520-6300-4672-b428-5a32e22f9b9e.gif">
</div>

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
        ? 'Campos Válidos' 
        : '',
      style: TextStyle(color: Colors.green)
    )

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

<div align="center">
  <img width="85%" src="https://user-images.githubusercontent.com/61476935/164062534-a27778d7-9842-4619-9068-820da0001257.gif">
</div>

<h2>ObservableList</h2>

O ObservableList é um recurso utilizado para monitorar o State de listas de Widgets. Com um ObservableList é possível ter um nível mais profundo de observação em uma lista de valores, onde os observers são notificados caso um item seja adicionado, removido ou modificado. Ou seja, o ObservableList fica atento a qualquer mudança significativa na lista. Para melhor exemplificar, vamos retomar o exemplo anterior e complementá-lo.

Ainda na file computed.dart, faça a seguinte alteração:

    @override
     void didChangeDependencies() {

       super.didChangeDependencies();
   
       reactionDisposer = reaction((_) => controller.usuarioLogado,
         (usuarioLogado) {
           if (controller.usuarioLogado) {
             Navigator.of(context).pushReplacement(
               MaterialPageRoute(
                 builder: (_) => List()
               )
             );
           }
         }
       );
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
              ),
            ),
           TextButton(onPressed: () {}, child: Text("Salvar"),
           ),
         ],
       );
     });
    }

A primeira inclusão é um dialog, o qual será utilizado para adiministrar os itens da lista. A seguir iremos incluir um ListView.builder, que irá gerar os itens necessários:

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ObservableList'),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text("Item $index")
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

<div align="center">
  <img width="85%" src="https://user-images.githubusercontent.com/61476935/164062770-3f07cda5-e541-4869-bf7d-1aade726a5dd.gif">
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
      child: Text("Salvar")
    );

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
  <img width="85%" src="https://user-images.githubusercontent.com/61476935/164062895-5f39e65b-a9b4-483b-897d-4c4b14df25d0.gif">
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
                 ),
               ),
               onTap: () {
                 item.marked = !item.marked;
               },
             );
           });
          },
        );
      }),

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
  <img width="85%" src="https://user-images.githubusercontent.com/61476935/164063010-6c67e686-6114-4cbb-98b4-53829ad00266.gif">
</div>

<br>


<h2>Flutter Commands</h2>


<h2>Binder</h2>


<h2>GetX</h2>


<h2>Riverpod</h2>


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/181625021-7854476d-4021-4cbd-a595-a16084ce6118.png">
</div>

Em uma arquitetura monolítica, onde toda uma aplicação se mantem como um único módulo, é possível projetar um sistema de forma rápida e elegante, aproveitando todos os recursos que o Flutter disponibiliza. No entanto, produzir um aplicativo maior, de maneira "monolítica", pode gerar problemáticas que abrangem tanto a manutenção quanto a escalabilidade do projeto. Pensando nisso, os desenvolvedores adotaram estratégias arquiteturais para melhor dividir o código, minimizando os impactos de tais problemas.

Ao dividir melhor o escopo de recursos, se obtem:

- Melhor compreensão dos recursos.
- Redução de falhas nas mudanças.
- Adição não conflitante de novos recursos.
- Menos pontos cegos na principal regra de negócio do projeto.
- Melhor rotatividade de desenvolvedores.

Resumindo, com um código mais legível, é possível estender a vida útil do projeto. O Flutter Modular, ou apenas Modular, é um modelo de arquitetura que permite obter os resultados mencionados acima de forma simples, buscando resolver especificamente dois problemas que surgem quando estes são obtidos:

- Gestão de Roteamento Dinâmico e Relativo.
- Injeção de Dependências.

O Modular faz com que cada escopo do sistema tenha suas próprias rotas e dependências desacoplados de qualquer outro fator na estrutura. Para cada escopo é criada uma classe para agrupar as Rotas e dependências, estas por sua vez sendo chamadas de Módulos.

<h2>Estrutura Modular</h2>

O <i>flutter_modular</i> foi criado usando o motor do <i>modular_core</i>, que é o responsável pelo sistema de injeção de dependência e gerenciamento de rotas. O sistema de roteamento utilizado no modular emula uma árvore de módulos, o que se assemelha a forma com a qual o Flutter gerencia seus widgets. Tal modelagem permite criar uma arquitetura hierárquica onde um módulo pode ser acoplado a outro criando uma ligação entre eles.

<h2>Inspirações do Angular</h2>

Todo o sistema do flutter modular veio de estudos realizados na arquitetura do [Angular](https://angular.io/), sendo adaptado e posteriormente aplicado ao ecossistema Flutter. Portanto, existem muitas semelhanças entre o flutter modular e o sistema de roteamento e injeção de dependências do Angular.

As rotas são refletidas no aplicativo usando os novos recursos do Navigator 2.0 juntamente com o uso de vários navegadores aninhados. Assim como em Angular, esse recurso é chamado de RouterOutlet.

<h2>Criando um Projeto</h2>

Para exemplificar de forma prática cada aspecto do <i>flutter_modular</i>, crie um projeto sem arquitetura para que posteriormente tenha o modular aplicado a si. 

    flutter create project_name

Para criar um modelo de projeto Modular é preciso declarar sua dependência ao iniciar o desenvolvimento da aplicação. Com isso, após criar o projeto, vá até a pubspec.yaml file e adicione o flutter_modular como uma dependência:

    dependencies:
      flutter_modular: 

Também é pissível instalar de forma simples cada pacote necessário através de um único comando diponibilizado pela Flutter CLI. Para fazê-lo, acesse ```project_name``` e em seguita execute o comando abaixo:

    flutter pub add flutter_modular

Desta forma já é possível utilizar a arquitetura Modular como estrutura do projeto criado.

<h2>ModularApp</h2>

A classe ModularApp é a primeira classe a ter seu ciclo de vida iniciado quando a aplicação é executada, sendo também a responsável por imbutir o sistema de módulos e a estrutura base com a qual todos os demais widgets serão criados:

    import 'package:flutter/material.dart';
    
    void main(){
      return runApp(ModularApp(module: /*<AppModule>*/, child: /*<AppWidget>*/));
    }

Sua criação força a inicialização de duas outras classes, a AppModule e AppWidget:

<h2>AppModule</h2>

A classe <i>AppModule</i> é uma extensão da classe Module da biblioteca do flutter_modular, a qual define um módulo como a unição de todos os <i>Binds</i> e <i>Routes</i> referentes a um contexto, sendo geralmente distribuídos na forma de recursos ou uma representação monolítica do aplicativo. 

- BINDS: Representa e fabrica uma lista de instâncias de classes que podem ser injetadas.
- ROUTES: Configura uma lista de páginas qualificadas para navegação.

A classe Module permite a criação de tais componentes através de dois getters:

    class AppModule extends Module {
    
      @override 
      List<Bind> get binds => [];
    
      @override 
      List<ModularRoute> get routes => [];
    }

A descrição ainda destaca que pelo menos um módulo é necessário para iniciar um projeto Modular. Com isso, para seguirmos com o exemplo, adicione a classe AppModule a main.dart file logo após o main method.

<h2>Initial Route</h2>

Como mencionado, um app modular precisa possuir pelo menos um módulo. Cada módulo, por sua vez, possui uma rota que é acessada no momento de sua inicialização, podendo apontar para um widget child deste módulo ou, menos comumente, para um outro módulo. 

Dando continuídade ao exemplo, para criarmos uma rota inicial para a aplicação, crie um StatelessWidget da seguinte forma:

    class HomePage extends StatelessWidget {
      @override
      Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(title: Text('Home Page')),
          body: Center(
            child: Text('This is initial page'),
          ),
        );
      }
    }

Em seguida, defina na classe AppModule o acesso ao widget criado, o qual corresponde a view inicial do app:
    
    ...

    @override
    List<ModularRoute> get routes => [
      ChildRoute('/', child: (context, args) => HomePage()),
    ];

O acesso é definido no getter <i>routes</i> atráves da classe ChildRoute. Nela são declarados dois parâmetros: um identificador, o qual deve ser exclusivo da ChildRoute em questão; e um child, este que recebe uma função que define o contexto de criação da tela, os argumentos que podem ser passados através do acesso à sua rota, além de retornar uma intância da classe ou widget equivalente a tela, neste caso a <i>HomePage</i>.

Além da ChildRoute, também é possível definir o acesso a um outro módulo, como mencionado. Isso é possível através da classe ModuleRoute, que se comporta de forma parecida com o exemplo anterior:

    ModuleRoute('/', module: ModuleInstance())
    
<h2>AppWidget</h2>

Tendo criado o escopo básico de roteamento e injeção de dependências da aplicação, é preciso definir a base do design com o qual todos os widgets serão criados. Isso é feito através da classe <i>AppWidget</i>, a qual permite criar a aplicação baseado em um MaterialApp ou em Cupertino App. Dando mais um passo dentro do exemplo, inclua a AppWidget classe logo após a HomePage:

    class AppWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context){
        return MaterialApp.router(
          title: 'My Smart App',
          theme: ThemeData(primarySwatch: Colors.blue),
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
        ); //added by extension 
      }
    }

Dela é importante destacar os atributos ```routeInformationParser``` e ```routerDelegate```, os quais são respectivamente responsáveis por delegar uma rota inicial e criar um widget navegável para a mesma.

Antes de concluirmos o exemplo é importante destacar que, em uma situação real, cada classe mencionada deve ser criada separadamente em arquivos únicos.

O exemplo irá se comportar da seguinte forma:

<div align="center">
  <img width="40%" src="https://user-images.githubusercontent.com/61476935/181662568-c981882a-8775-4d03-9fbd-3a1caf354c5d.png">
</div>

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

<h2>Repository Pattern</h2>

O Repository Pattern é uma camada de abstração ao acesso de serviços externos em uma aplicação. Serviços como o consumo de uma Rest API ou de uma base de dados são tratados em classes específicas, gerando uma estrutura fácil de manutenir e controlar. Essa divisão permite que um Web Service possa ser consumido, atualizado, ou mesmo descartado com muito mais facilidade, o que torna o processo de desenvolvimento mais rápido e eficiente.

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

<!-- <h1>Catálogo de Widgets</h1>

<br>

Sendo uma ferramenta de construção de interfaces, o Flutter conta com uma biblioteca de recursos de estruturação e customização de interfaces gráficas gigantesca. Esse conjunto gera um ambiente totalmente otimizado para construir interfaces de usuário pensando na experiência decorrente disso, contando com uma arquitetura concentrada baseada em widgets.

Com isso, a seguir estão listados categoricamente widgets visuais, estruturais, de plataforma e interativos, dos mais básicos aos mais complexos: -->


<!-- <h2>Material Components</h2>


Widgets visuais, comportamentais e de movimento que implementam as diretrizes do Material Design. Diretrizes essa que se baseam em padrões de desenvolvimento e estruturação de aplicações modernas, as quais disponibilizam diferentes formas de interação com a interface. Elas são:


<h2>Scaffold</h2>


A classe Scaffold, que literalmente significa andaime, é um Widget que permite a criação de uma estrutura de layout baseado no Material Design, disponibilizando style API's que contam com componentes comuns a aplicações mobile. Além disso, conta com propriedades que separam a estrutura em blocos. A seguir há um exemplo de definição do Scaffold:

    Scaffold(
      appBar: AppBar(),
      body: Container(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(),
      bottomNavigationBar: BottomAppBar()
    )


O Scaffold é muito utilizado como estrutura padrão de telas em aplicações Flutter, isso graças a sua estrutura, que é bastante eficaz. A seguir estão descritos algumas das pripriedades que compõem o Scaffold Widget:

  * <strong>appBar</strong> - AppBar da tela, exibido no topo do Scaffold
  * <strong>body</strong> - Primeiro conteúdo a ser exibido no Scaffold
  * <strong>drawer</strong> - Um painel exibido ao lado do body, acionado por uma ação de swipe
  * <strong>floatingActionButton</strong> - Botão flutuante exibido sobre o body do Scaffold
  * <strong>bottomNavigationBar</strong> - Barra de navegação do rodapé do Scaffold

  
<h2>Appbar</h2>


Um <b><i>Appbar</i></b> consiste em um toolbar, Widget comum a muitas aplicações, que pode conter outros Widgets em si. Um Appbar normalmente é associado a ações em conjunto com IconButtons ligados a navegação entre partes da aplicação. A seguir temos um exemplo de uso da Appbar:


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
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151175196-4ccda1c1-f433-4c4d-9866-7020438fb3ca.png">
</div>


Os principais atributos da BottomNavigationBar são:


* <strong>leading</strong> - Um Widget definido antes do title<br>
* <strong>title</strong> - O primeiro Widget exibido no Appbar<br>
* <strong>actions</strong> - Uma lista de Widgets agrupados em linha após o title<br>
* <strong>flexibleSpace</strong> - Trecho entre a toolbar e o bottom da Appbar<br>
* <strong>bottom</strong> - Define o bottom do Appbar


<h2>Body</h2>


O <b><i>body</i></b> é o principal conteúdo de um Scaffold, pondendo ser basicamente qualquer Widget do catálogo.


<h2>Drawer</h2>


O <b><i>Drawer</i></b> é um painel exibido na lateral do body e é bastante comum em aplicações mobile. É ativado, na maioria das vezes, pela ação de drag da esquerda para a direita ou da direita para a esquerda no body, ou por um menu button na AppBar. Também é associado a opções de navegação ou a um menu de opções que surge com a diminuição da escala dos aparelhos. A seguir temos um exemplo de uso do Drawer:

    ...
    
    class MyDrawer extends StatefulWidget {
      @override
      State<MyDrawer> createState() => _MyDrawerState();
    }
    
    class _MyDrawerState extends State<MyDrawer> {
    
      final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

      void _openDrawer() {
        _scaffoldKey.currentState!.openDrawer();
      }
    
      void _closeDrawer() {
        Navigator.of(context).pop();
      }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _openDrawer();
              },
            ),
            title: Text('Drawer'),
          ),
          drawer: Drawer(
            child: Center(  
              child: ElevatedButton(  
                child: Text('Close Drawer'),
                onPressed: () {
                  _closeDrawer();
                },
              ),
            ),
          ),
        );
      }
    }


O exemplo consiste em um Statefull Widget padrão, possuindo um Scaffold, um AppBar com um munu button, e por fim, o Drawer. Também conta com dois métodos, um de ativação e um de desativação do Drawer. Além disso, conta com _scaffoldKey: variável que carrega uma GlobalKey responsável por gerenciar o state do Scaffold e de suas propriedades, incluindo o Drawer. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151175361-75c2db92-2cc0-4d83-b75b-51623fb73038.gif">
</div>


O menu button faz a chamada do metodo de ativação _openDrawer, que por sua vez acessa o current state do Scaffold e o método openDrawer. O exemplo também permite ativar o Drawer através da ação de drag no body. Essa ação pode ser desativada através da propriedade <b><i>drawerEnableOpenDragGesture: false</i></b>. 

O Drawer, assim como a body property, pode conter basicamente qualquer Widget do catálogo como child. No exemplo, o Drawer possui um ElevatedButton como child, este sendo reaponsável por chamar o _closeDrawer method, que por sua vez fecha o Drawer.


<h2>BottomNavigationBar</h2>


Um <b><i>BottomNavigationBar</i></b> é um widget de navegação exibido na parte inferior da tela, onde é possível  selecionar entre um pequeno número de visualizações, normalmente entre três e cinco. A seguir temos há um exemplo de uso da BottomNavigationBar:


    ...

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
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151175551-1bad26fc-0843-4b9e-b4ca-a9c8da390154.gif">
</div>


Os principais atributos da BottomNavigationBar são:


* <strong>items</strong> - Itens que definem as possíveis seleções<br>
* <strong>currentIndex</strong> - Define o item de seleção padrão<br>
* <strong>selectedItemColor</strong> - Cor padrão do item selecionado<br>
* <strong>onTap</strong> - Define uma reação a cada mudança de seleção<br>


<h2>Buttons</h2>


O Flutter conta com a uma série de opções de buttons herdados do Material Components, elas são:


<h2>DropdownButton</h2>


O <b><i>DropdownButton</i></b> permite ao usuário selecionar entre um número definido de opções, podendo ter resultados distintos a cada opção selecionada. A seguir há um exemplo de uso do DropdownButton:


    DropdownButton<String>(
      hint: Text('DropdownButton'),
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: null,
      onChanged: (_) {},
      items: <String>['One', 'Two', 'Three', 'Four'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    )


O DropdownButton possui definições variadas, desde um hint(que identifica o botão e pode identificar a opção selecionada)a um icon, o tamanho do dropdown, os items e etc. Os items são basicamente um List onde cada child possui um valor. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151175734-12f6c969-866e-440c-82af-e27da68b192a.gif">
</div>


<h2>FloatingActionButton</h2>


Um <b><i>FloatingActionButton</i></b> é um circular icon button posicionado no canto inferior direito da tela. Ele provê uma ação primária dentro da aplicação. Também é uma propriedade do Scaffold e é bastante associado a ele. A seguir há um exemplo de uso do FloatingActionButton:


    Scaffold(
     
     ...
 
     floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.navigation),
      )
    )


A imagem a seguir ilustra o como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151175824-76c7042e-18c3-485f-b691-97aafaf66a4b.gif">
</div>


<h2>ElevatedButtons</h2>


Um <b><i>ElevatedButton</i></b> é um rótulo child exibido em um Material Widget cujo Material.elevation aumenta quando clicado, revelando um efeito de clique. Ele também possui um padrão de estilo que pode ser sobrescrito quando a propriedade style é utilizada. Além disso, uma série de outras propriedades definem a possibilidade de várias outras definições de estilo. A seguir há um exemplo de criação de um ElevatedButton:


    Column(
      children: <Widget>[
        ElevatedButton(
        onPressed: null,
        child: Text('ElevatedButton'),
       ),
        ElevatedButton(
        onPressed: () {},
        child: Text('ElevatedButton'),
       )
      ]
    )


A diferença entre os exemplos é a definição do onPressed, que, quando null, torna o ElevatedButton disabled. A imagem a seguir ilustra como os exemplos irão se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151175944-1800451f-7281-4cd0-91fd-06bd082c2086.gif">
</div>


<h2>IconButton</h2>


Um <b><i>IconButton</i></b> é basicamente uma imagem em um Material Widget que reage ao toque, possuindo um efeito associado a uma cor como reação padrão. A seguir temos alguns exemplos de uso do IconButton:


    Container(
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        IconButton(
          color: Colors.pink,
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        IconButton(
         color: Colors.blue,
         icon: Icon(Icons.cancel),
         onPressed: () {},
       ),
       IconButton(
         color: Colors.black,
         icon: Icon(Icons.add),
         onPressed: () {},
       )
     ]),
    )


Um IconButton possui diversos atributos, mas as definições mas utilizadas são a de icon e onPressed. A imagem a seguir ilustra como os exemplos irão se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151176007-da33e554-19cf-48af-a903-18df41b3b03f.gif">
</div>


<h2>OutlinedButton</h2>


Um <b><i>OutlinedButton</i></b> é semelhante a um ElevatedButton, com a diferença de possuir uma borda por padrão. Um OutlinedButton possui actions importantes, mas não uma primary action em um app. A seguir há um exemplo de uso de um OutlinedButton:


    Container(
      child: OutlinedButton(
       onPressed: () {},
       child: const Text('OutlinedButton'),
     ),
    )


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151176099-8c8c48b6-5e32-4291-8a8e-76074aa0e44f.gif">
</div>


<h2>TextButton</h2>


Um <b><i>TextButton</i></b> é bastante simples e seu uso é bastante comum. Normalmente é utilizado em dialogs, em um inline ou como parte de um Widget que não dispõe de muito espaço disponível. A seguir há alguns exemplos de uso do TextButton:


    Container(
     child: Column(  
       children: [
        TextButton(
         style: TextButton.styleFrom(
           textStyle: const TextStyle(fontSize: 20),
         ),
         onPressed: null,
         child: const Text('Disabled'),
       ),
       const SizedBox(height: 30),
       TextButton(
         style: TextButton.styleFrom(
           textStyle: const TextStyle(fontSize: 20),
         ),
         onPressed: () {},
         child: const Text('Enabled'),
        )
      ]),
    )


Um TextButton é bastante parecido com os demais tipos, onde também é possível torná-lo disabled atribuindo null a propriedade onPressed. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151176882-488a146f-b67a-4c95-beb7-7ed341dd1ce4.gif">
</div>


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
      ])


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
          )),
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
          )),
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
          )),
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
         )),
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
         )),
         decoration: BoxDecoration(color: Colors.white),
         margin: EdgeInsets.all(10.0),
       )
     ])
     

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
     ))

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
     ))

Um ponto que deve ser lembrado ao usar o AspectRatio é se certificar que ele seja livre para se dimensionar livremente. Usar um AspectRatio dentro de Widget Expanded() por exemplo, o força a se expandir junto com o Expanded(), impedindo seu próprio dimensionamento. Portanto, ao usa o AspectRatio deve-se definir um Align() ou alignment, como no exempli acima. A imagem a seguir ilustra como o mesmo irá se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/129612249-726555b3-198b-4a9d-a0b3-d7ea3e081df0.png">
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
      ))


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
         ])
       ),
     ))


O exemplo mostra uma quebra de texto definida por uma largura máxia atribuída ao ConstraintBox. Esse tipo de recurso se mostra essencial quando é necessário alocar muitos Widgets em apenas uma tela. A imagem a seguir ilustra como o exemplo acima irá se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/129612499-37c5f184-57b3-427b-a300-db53093b01b9.png">
</div>

Outra situação em que é possível aplicar o ConstraintBox é quando um Widget child precisar oculpar todo o espaço correspondente ao Widget que o carrega. Exemplo:


    ConstrainedBox(
     constraints: BoxConstraints.expand(),
     child: Container(
       color: Colors.yellow,
       padding: EdgeInsets.all(10),
       alignment: Alignment.center,
       child: Text.rich(
        TextSpan(
         children: <TextSpan>[
          TextSpan(
            text: 'Some text that you want to',
            style: TextStyle(fontSize: 20)),
          TextSpan(
            text: ' break',
            style: TextStyle(
             fontSize: 20, fontWeight: FontWeight.bold))
          ])
         ),
       ))


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/129612601-eefea79d-c675-43c9-87eb-7caf93466357.png">
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
        )),
        Container(
          color: Colors.blue,
          height: 150,
          width: 500,
        ),
      ]),
    )


Com o Expanded é possível atribuír mais espaço de dimensionamento a um Widget específico. A imagem a seguir ilustra como o exemplo acima irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/129612786-f788767a-27af-4f2c-b415-edf079fa1106.png">
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
       ] 


O flex factor define uma ordem de grandeza, e por consequência, de prioridade para ocupar mais espaço na Row. A imagem a seguir ilustra como o exemplo acima irá se comportar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/129612965-76695621-a0a8-4ea8-85a5-af775005ba6f.png">
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
         )),
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
         )),
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
         )),
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
         )),
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
          ))
        ])


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
       )),
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
        ))
      ])

O quanto um child oculpa é definido por uma escala de 0.1(10%) a 1.0(100%). No exemplo acima é definido que o child do primeiro container irá oculpar 100% dos 200px de altura e 60% dos 200px de largura, o inverso ocorre com o segundo container. A imagem a seguir ilustra como o exemplo irá se compoirtar:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/129613215-bae89f68-51e4-49f9-845e-a2837b19472b.png">
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
         decoration: BoxDecoration(color: Colors.white),
       ),
      ),
     ],
    )

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
  <img src="https://user-images.githubusercontent.com/61476935/129613351-1d15acfa-cdbb-412a-9910-991b609deb99.png">
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
     )
    ),


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
     children: [
      for (var i = 0; i < 10; i++)
       LimitedBox(
        maxHeight: 200,
        maxWidth: 200,
        child: Container(
         margin: EdgeInsets.all(1),
         decoration: BoxDecoration(color: Colors.white),
       ),
      ),
     ],
    )

O exemplo define uma sequência de Widgets child, cada um oculpando determinado espaço dentro da lista. Caso uma lista atinja um tamnho maior que o grid da tela, ela passa a ser scrollable, sendo possível acessar os items fora da lista com um scroll. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151177205-d5f2cd4b-3ba7-4cb6-97e9-c9b24602fce8.gif">
</div>


<h2>ListView.builder()</h2>


O ListView.builder() é utilizado para gerar uma lista dinamicamente, removendo um item da View caso este seja removido da lista. A seguir temos um exemplo de uso do ListView.builder():


    class _MyHomePageState extends State<MyHomePage> {

     final List<String> children = <String>['First', 'Second', 'Third', 'Four', 'Fifth', 'Sixth'];
        
      @override
      Widget build(BuildContext context) {
       return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: children.length,
            itemBuilder: (BuildContext context, int index) {
             return Container(
               height: 200,
               width: 200,
               margin: EdgeInsets.only(bottom: 1),
               decoration: BoxDecoration(color: Colors.blue[800]),
               child: Center(child: Text('${children[index]}'),
              ),
            );
          }),
        ));
       }
     }


O exemplo acima gera uma lista de seis items, estes sendo definidos em um String List. O liste builder usa das propriedades itemCount e itemBuilder para, respectivamente, definir o length do Array children e fazer um build. O build gera um container para cada item na lista, que recebe a string correspondente a sua posição equivalente na lista children. A imagem a seguir ilustra como o exemplo irá se comportar:


<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151181779-65d1b9d4-e22f-469e-863a-e5afef762b80.gif">
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
        )
        ...
        
      ],
    )
    

Os elementos children do GridView são alinhados de acordo com o valor int de elementos por eixo, isso pode ser aplicado a uma lista mais longa de elementos. A imagem a seguir ilustra como o exemplo acima irá se comportar:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151177391-48cbad0d-33b5-41b7-afc6-1db2df87172c.gif">
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
         ]);
       }
     }


Perceba que em casos de uso do PageView, o mesmo é definido como estrutura padrão, neste caso sendo retornado pela principal classe da main.dart file. Também é importante observar o PageController(initialPage: 0);, que trata de aplicar a posição que dever ser exibida primeiro. A imagem a seguir ilustra como o exemplo acima irá se comportar:

<br>

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/151177649-48069171-1659-4f87-ad36-db7f49339849.gif">
</div>

<br>

Também é possível redefinir a direção do scroll, que por padrão é Axis.horizontal. Para definir o scroll como vertical usa-se o Axis.vertical. Veja um exemplo:

    PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: <Widget>[
        
        ...

      ],
    ); -->

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/152078245-cbc28c12-3e43-4e39-b748-42775853f45a.png">
</div> 

<br>

Agora que o ciclo de desenvolvimento e as várias formas de aborda-lo foram apresentadas e aprofundadas, é o momento de entender como dar o próximo passo: dar uso a o que foi desenvolvido. O processo de deployment é um dos pontos mais importantes para um mobile developer e para o projeto em si. É através do acesso em lojas de aplicativos que o usuário final terá o primeiro contato com o que foi desenvolvido, e essa é uma das experiências que definem o sucesso do app. Neste ponto serão abordados em detalhes como se dá o processo de publicação de um release app, tanto na Play Store quanto na App Store:

<h1>Play Store</h1>

Quando o projeto antinge determinada proporção, a forma mais lógica de testá-lo é através do método de acesso que qualquer usuária terá quando o app for publicado. A publicação de app Android demanda uma série de requisitos e acompanhamentos de processos, alguns bastante demorados. A seguir será descrito o passo a passo para assinar, configurar, testar e publicar a aplicação:

<h1>Launcher Icon</h1>

Caso não tenha sido feito durante o desenvolvimento, este é o momento de definir uma parte importante da identidade visual do app, seu ícone. O ícone de um app o identifica dentre uma infinidade de outros dentro um device, e para destacá-lo, é importante manter a originalidade em algo que represente sua utilidade. O processo a seguir descreve como adicionar um launcher icon ao seu Flutter app:

<h2>Android</h2>

A forma mais fácil de adionar um launcher icon no android app do seu Flutter Project é manualmente, seguindo a descrição abaixo: 

- Acesse [Android Assets Studio](https://romannurik.github.io/AndroidAssetStudio/index.html)
- Defina o app icon a partir de uma imagem de sua preferência:

<br>

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/152217240-d8d1baee-a5a3-460f-9844-f04dafca4c04.gif">
</div>

<br>

Um zip contendo uma pasta res será baixado, com ele virão uma série de adaptações da imagem escolhida. Essas imagens irão substituir as imagens geradas na criação do app da seguinte forma:

- Copie o conteúdo da pasta res
- Acesse [project]/android/app/src/main/res
- Subistitua os arquivos originais pelos arquivos copiados

<h2>IOS</h2>

Obtenha a imagem desejata no formato adequado, em seguida, defina a imagem escolhida como um assets element. Tendo isto feito, define o flutter launcher icons como dev_dependencie na file pubspec.yaml

    dev_dependencies:
      flutter_launcher_icons: ^0.9.2

Em seguida defina o script correspondente a criação da imagem a referenciando na propriedade <i>image_path</i>:

    flutter_icons:
       android: "launcher_icon"
       ios: true
       image_path: "assets/icon_name.png"

Após salvar as alterações, faça o run do comando a seguir:

    flutter pub run flutter_launcher_icons:main

Após recarrer o app, como resultado, temos um novo launcher icon para o projeto:

<div align="center">
  <img width="50%" src="https://user-images.githubusercontent.com/61476935/152223664-02033cee-b44e-41fc-a894-5a948f81fc0b.gif">
</div>

<h1>Spalsh Page</h1>

Além de um launcher icon, também é possível que seja necessário criar uma splash page para o app, visto que é um recurso bastante comum. Caso não tenha sido criado durante o desenvolvimento, use o passso a passo descrito a seguir para criar e cutomizar uma splash page para seu app.

<h2>flutter_native_splash</h2>

Para iniciar, adiciona a seguinte dependência a sua <i>pubspec.yaml</i> page:

    dependencies:
      flutter_native_splash: 

Caso prefira fazer instalaçãos através da flutter CLI, execute o comando a seguir no diretório local do seu projeto:

    flutter pub add flutter_native_splash

Tendo instalado o plugIn responsável por criar a splash page, é possível definir quais características ela terá. Para customizar a splash page criada, o plugIn flutter_native_splash permite as definir algumas configurações:
    
    dev_dependencies:

      ...

      flutter_native_splash: 

    flutter_native_splash:
      color: ""
      image: "assets/"
      branding: "assets/"
      color_dark: ""
      image_dark: "assets/"
      branding_dark: "assets/"

Após configurar o flutter native splash, execute o comando a seguir:

    flutter pub run flutter_native_splash:create

<h1>Renomeando o App</h1>

Com a conclusão do desenvolvimento é possível que haja a necessidade de alterar o nome do projeto criado, já que muitas vezes, o nome do app nas lojas de aplicativo ou mesmo no device não é levado em conta no momento de criação de um app flutter, cujo padão utiliza underline e etc. Para fazer essa alteração, existem duas alternativas:

<h2>Manualmente</h2>

A forma mais simple de alterar o nome da aplicação é sobrescrever o nome dado na criação do app nos arquivos das versões de Android e IOS, que são encontrados respectivamente em:

- [project]/android/app/src/main/AndroidManifest.xml: android;label="app_name"
- [project]/ios/Runner/Info.plist:

        <Key>CFBundleName</Key>
        <string>App_name</string>

<h2>Rename Package</h2>

Outra forma de renomear o app é através do package Rename. Para obtê-lo, faça o run do comando a seguir no principal diretório da aplicação:

    pub global activate rename

Após tê-lo instalado, faça a o run do comando a seguir contendo o novo nome da aplicação:

    pub global run name --appname "new name"

<h1>Exclusive Id</h1>

A publicação na Google Play demanda que a aplicação possua uma identificação padrão exclusiva, também chamada de application ID. O Flutter cria essa identificação por padrão quando o app é criado, sendo encontrada no path <i>android/app/build.gradle</i> na propriedade ```applicationId```:

    defaultConfig {
        // TODO: Specify your own unique Application ID.
        applicationId "com.example.app_name"
        minSdkVersion flutter.minSdkVersion
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }

Para entender um pouco mais sobre o application ID e qual é a sua função dentro da Google Play Store, o tema é abordado pela Android Developer Platform com uma maior riqueza de detalhes: [Configure the app module]((https://developer.android.com/studio/build/application-id.html).). Mas, de forma resumida, o ID de uma aplicação Android o identifica tanto no device em uso quanto na Google Play. Uma vez que o app foi publicado, esse ID o identifica e apenas a ele, não podendo ser modificado posteriormente. O application ID também será utilizado ao fazer o upload de uma nova versão do app, se um ID diferente for utilizado, a Google Play irá tratar a atualização como um app distinto da versão anterior. 

A identificação também demanda certa atenção, já que possui alguns critérios para ser considerada válida e sendo um pouco restritiva:

- Cada identificação deve possuir no mínimo dois segmentos separados por um ou mais pontos
- Cada segmento deve ser iniciado por uma letra
- Todos os caracteres devem ser alfanuméricos ou um sublinhado [a-zA-Z0-9_]

A forma mais simples de modificar esse ID é sobrescreve-lo manualmente. Porém, é recomendado utilizar o Rename Package e o comando a seguir para garantir que a atualização ocorreu em toda a aplicação:

    pub global run rename --bundleId com.domain.appName

Por ser um identificador exclusivo, é recomendado que o application ID seja domain name da sua aplicação, sendo escrito revertido(com.domain).

<h1>Signing</h1>

Sempre uma versão da sua aplicação sofre um up, seja em fases de teste(sobre as quais falaremos posteriormente), seja na Play Store, é necessário identificar que o bundle ou apk enviado corresponde a uma versão do seu app. Com isso, é necessário definir uma assinatura que irá identificar cada versão como sendopoveninte do app desenvolvido. Essa assinatura é definida duas keys:

<h2>Deployment Key</h2>

A Deployment, ou <i>app signing</i> key, assina a versão do app baixada pelo usuário final. Sendo parte do modelo de segurança de update do Android, a signing key jamais será alterada durante o tempo de vida da aplicação e deve ser mantida em sigilo.

<h2>Upload Key</h2>

A upload Key é utilizada para autenticar o .aab(Android App Bundle) ou .apk enviados pelo desenvolvedor, sendo substituída pela deployment key quando o upload é concluído. Também deve ser mantida em sigilo.

O ciclo de uso das chaves de assinatura da aplicação pode ser melhor entendido através da descrição a seguir:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/152183508-4a29b4a8-922b-4573-9ac6-5a86fc50652c.png">
</div>

Para criar as repectivas keys para a aplicação, observe os passos a seguir:

<h2>keystore</h2>

No terminal, execute o comando a seguir para gerar o arquivo upload-keystore.jks:

Mac/Linux:

    keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload

Windows:

    keytool -genkey -v -keystore c:\Users\USER_NAME\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload

O arquivo será gerado em um diretório local da sua máquina, este sendo definido no próprio comando. É extremamente importante mantê-lo em sigilo, já que o arquivo conta com informações relevantes sobre o processo de deploy da sua aplicação. Após o run, algumas informações serão solicitadas, incluindo uma password de acesso a keystore. É importante registrar a password definida no processo, pois apenas ela dará acesso a keystore criada.

Com a keystore criada, crie um novo aquivo na Adroid folder da aplicação chamado de key.properties, a qual irá referenciar a keystore anteriormente crida. No arquivo, defina as chaves da aplicação seguindo o modelo abaixo:

    storePassword=<password do passo anterior>
    keyPassword=<password do passo anterior>
    keyAlias=upload
    storeFile=<local decriação da key store. Por exemplo: /Users/<user name>/upload-keystore.jks>

Tanto <i>storePassword</i> quando <i>keyPassword</i> fazem referência a senha de acesso a keytore, essa que será obtida através do path definido na propriedade <i>storeFile</i>. Assim, as propriedades de definição das keys foram criadas e já têm acesso a keystore. Porém, antes de concluir, é importante grarantir que essas informações permaneçam restrita a deve acessá-las. Portanto, defina ambos os arquivos key.properties e upload-keystore.jks como ignored no arquivo .gitignore da android Folder.

<h2>Signing gradle</h2>

Quando uma versão da aplicação é gerada, o sistema android compila todos os recursos e o código fonte em um .aap ou .apk. Esse processo é intermediado pelo Gradle, que é uma ferramenta de automação que permite o gerenciamente e a personalização do build. Para que cada release gerado contenha as respectivas keys, iremos configurar o gradle da seguinte forma:

- Acessa a file [project]/android/app/build.gradle;

Dendo acessado o arquivo, antes do bloco <i>android</i>, adicione as informações da keystore:

    def keystoreProperties = new Properties()
    def keystorePropertiesFile = rootProject.file('key.properties')
    if (keystorePropertiesFile.exists()) {
       keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
    }

    androif {
      ...
    }

Em seguida substitua o trecho contendo os <i>bildTypes</i> pelas seguintes informações sobre o signing:

    signingConfigs {
        release {
            keyAlias keystoreProperties['keyAlias']
            keyPassword keystoreProperties['keyPassword']
            storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
            storePassword keystoreProperties['storePassword']
        }
    }
    buildTypes {
        release {
            signingConfig signingConfigs.release
        }
    }

 Após salvar o arquivo, faça o run do comando flutter clean para evitar que as compilações em cache afetem o processo de signing. Com isso, todos os builds de release gerados a partir do seu projeto serão assinados e identificados como seu app automaticamente.

 <h2>App Bundle</h2>

 O App Bundle ou .aab é um arquivo compactado correspondente ao app android que sofrerá o deploy na Play Store. Para gerar o bundle da aplicação, faça o run do comando a seguir no principal diretório da aplicação:

    flutter build appbundle

O aquivo gerado pode ser encontrado em:

    [project]/build/app/outputs/bundle/release/app.aab.
