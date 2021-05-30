
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120003533-38040600-bfac-11eb-9ead-49cf1dc50c62.png">
</div>
<br>
<img src="https://img.shields.io/static/v1?label=flutter&message=Framework&color=blue&style=for-the-badge&logo=Flutter"/>


O Flutter é um conjunto de ferramentas para o desenvolvimento de User Interfaces(Ui), criado e mantido pelo google. Sendo apresentado pela primeira vez em 2015, a ferramenta foi aprimorada desde então, sendo o Flutter 1.0 a sua primeira versão estável, lançada em 2018. 

Desenvolvido em C, C++, Dart e Skia Graphics Engine, o Flutter utiliza o [Dart](https://github.com/VictorSantos12/Dart#maps) como linguagem de desenvolvimento. Além disso, outra característica muito importante da ferramenta é sua capacidade de criar aplicações híbridas, mantendo uma performance nativa independente do sistema operacional, mantendo apenas um código fonte

Outras características importantes sobre a ferramenta são:

- Dispõe o Stateful Hot Reload
- Utiliza Widgets Reativos Customizaveis
- Roda em diversas IDE's
- Utiliza a GPU e permite acesso as API'S das plataformas android e IOS
- Pode se integrar a aplicações já desenvolvidas


<h2>Instalação</h2>


Antes de iniciar o processo de instalação, é importante frisar que há mais de uma forma de instalar e utilizar o Flutter, porém, há formas mais recomendadas que evitam um maior número de erros durante a execução; os passos aqui descritos são os mais recomendados pela documentação e comunidade Flutter. Para instalar e usar o Flutter, é preciso seguir alguns passos:

- Criar uma pasta src no disco local da sua máquina
- Acessar [Flutter.dev](https://flutter.dev/docs/get-started/install/windows) e copiar o Flutter repo Link
- Acessar o cmd e criar um clone do Flutter na pasta criada

A partir deste ponto as ferramentas que Flutter disponibiliza já estão instalas e acessíveis. Porém, antes do processo de desenvolvimento começar é preciso fazer mais alguns ajustes


<h2>Atualizando Variável de Usuário</h2>


Para que as ferramentas do Flutter possam ser acessadas em qualquer lugar do sistema, é preciso criar uma variável de ambiente contendo o caminho para o arquivo bin, dentro da pasta flutter. Abaixo está o passo a passo do processo:

- Acessar as propriedades em 'Meu Computador'
- Acessar 'configurações avançadas do sistema'
- Acessar 'Variáveis de Ambiente'
- Em 'Variáveis de usuário' criar nova variável com o nome 'FLUTTER_HOME', tendo 'C:\src\flutter' como seu valor

A variável criada serve como um capinho padrão para acesso aos recursos Flutter


<h2>Atualizando Path</h2>


A declaração de um path define o acesso de determinados pacotes, essenciais para executar uma aplicação Flutter. Abaixo está o passo a passo do processo de redefinição necessário:

- Acessar as propriedades em 'Meu Computador'
- Acessar 'configurações avançadas do sistema'
- Acessar 'Variáveis de Ambiente'
- Em 'Path' selecionar 'editar'
- Definir '%FLUTTER_HOME%\bin' como uma nova variável em path

Após esse processo é possível executar o Flutter no cmd do Windows. E para verificar se tudo foi devidamente instalado, utilize o seguinte comando:

    flutter doctor

O comando acessa a ferramenta de gestão do Flutter, ele retorna o status do ambiente criado, definindo se ele está ou não dentro do esperado. Nesse ponto, é provável que o retorno seja algo parecido com o seguinte:

    [√] Flutter (Channel stable, 2.2.1, on Microsoft Windows [versÃ£o 10.0.19042.985], locale pt-BR)
    [!] Android toolchain - develop for Android devices (Android SDK version 30.0.3)
        ! Some Android licenses not accepted.  To resolve this, run: flutter doctor --android-licenses
    [√] Chrome - develop for the web
    [!] Android Studio (not installed)
    [!] VS Code (not installed)
    [!] Connected device 
        ! no devices available
    
    ! Doctor found issues in 4 categories.

Os issues encontrados definem o que ainda não foi instalado ou que ainda não foi identificado como instalado. Os próximos passo corrigem estas faltas


<h2>Ambiente de Desenvolvimento</h2>


Tendo o flutter instalado, o próximo passo é preparar o ambiente de desenvolvimento, sendo necessário instalar alguns recursos e definir algumas modificações:

- [Android Studio](https://developer.android.com/studio?hl=pt&gclid=Cj0KCQjw78yFBhCZARIsAOxgSx2xS0_FUoAlFg9Z-jqoOf8YJY3ihAhi8Uho_jdZNWmSZgPfLT93FlEaAsJvEALw_wcB&gclsrc=aw.ds)
- [VScode](https://code.visualstudio.com/) (Recomendado)


<h2>Android Studio</h2>


O android studio dispõe de recurso essenciais para para o desenvolvimento de aplicações android. Apesar de suprir bem estas necessidades, a IDE não será utilizada como exemplo de ambiente de desenvolvimento, devido a seu consumo excessivo de mémoria. O recurso visado é a criação e uso de um ou mais emuladores, processo visto adiante. Abaixo estão dispostas algumas configurações do ambiente android, sendo econtradas no menu de configurações da ferramenta


<h3>SDK Platforms</h3>


Sendo a primeira modificação, o SDK Platform nada mais é que uma lista de sistemas operacionais para os quais é possível desenvolver dentro do android studio. No momento a versão mais recente do android é a 11.0, portanto, os exemplos criados aqui serão desenvolvidos nesta versão


<h3>Configurando Android SDK</h3>


O android SDK, ou Android Development Kit, é um conjunto de ferramentas que o android studio disponibiliza para seus usuários. O importante neste ponto é a configuração do SDK Tools, sendo as ferramentas a seguir as mais recomendadas:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120120831-561d6200-c176-11eb-8695-f1426c4d0e2b.png">
</div>


<h3>Flutter Plugin</h3>


A instalação de plugins torna muito mais viável a compilação e desenvolvimento do código e da tecnologia utilizada. O Flutter plugin está disponível no menu de Plugins nas configurações do android studio, tendo como adicional um Dart plugin:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120121007-887b8f00-c177-11eb-982c-b10e39eeb463.png">
</div>


<h2>Atualizando Variável de Usuário</h2>


Como foi definido, o android studio não será a ferramenta na qual os exemplos serão desenvolvidos, portanto, para que haja uma melhor interação entre os exemplos e os resultados, é recomendável que isso seja replicado. Com isso, para que as ferremantas do SDK que foram instaladas possam ser utilizadas fora do ambiente android, é preciso fazer as seguintes alterações:

- Tornar a acessar o menu SDK Manager
- Copiar o caminho correspondente ao Android SDK Location
- Acessar as propriedades em 'Meu Computador'
- Acessar 'configurações avançadas do sistema'
- Acessar 'Variáveis de Ambiente' 
- Em 'Variáveis de usuário' criar nova variável com o nome 'ANDROID_HOME', tendo o caminho do Android SDK Location como seu valor


<h2>Atualizando Path</h2>


Para acessar as ferramentas pré instaladas do SDK, é preciso fazer mais uma atualização no path das variáveis de abiente. Dessa vez correspondente a variável ANDROID_HOME anteriormente criada:

- Acessar as propriedades em 'Meu Computador'
- Acessar 'configurações avançadas do sistema'
- Acessar 'Variáveis de Ambiente'
- Em 'Path' selecionar 'editar'
- Definir '%ANDROID_HOME%\tools\bi' como uma nova variável em path
- Definir '%ANDROID_HOME%\platform-tools' como uma nova variável em path

Tendo finalizado, já é possível acessar os recursos do SDK fora do ambiente android


<h2>jdk8</h2>


Qualquer aplicação android depende essencialmente de um Java Development Kit ou jdk. Sendo um framework que desenvolve aplicações híbridas, o Flutter não é exceção, sendo estritamente necessário tê-lo instalado e operando. A seguir está listado o processo de instalação do jdk8:


<h3>Chocolatey</h3>


O [Chocolatey](https://chocolatey.org/) é um gerenciador de pacotes do window. Para instalá-lo execute o PowerShell como administrador e efetue o seguinte comando:

    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]     ::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Para verificar a instalação execute

    choco --version
  
Tendo a versão retornada é possível confirmar a instalação. Em seguida, instale o jdk com o seguinte comando: 

    choco install jdk8 

Para verificar a instalaçao execute

    java -version

Obs: É extremamente importante que a versão instala seja a 1.8.0_211, como isso é garantido resultados serão semelhantes nos futuros exemplos


<h3>Android Device</h3>


Após a instalação da ferramenta de desenvolvimento do android, é possível ter acesso a uma máquina virtual, a qual será utilizada como emulador para teste dos projetos futuros. O passo a passo de criação e configuração do emulador pode ser acessado na documentação oficial 
do [developer.android.com](https://developer.android.com/studio/run/managing-avds?hl=pt-br).

Tendo seguido as inticações da documentação, é possível verificar a instalação do emulador criado através do comando a seguir

    flutter emulators

O resultado deve conter o AVD Name, definido no precesso de criação. Exemplo:

   

Tendo o esse resultado, é possível inicializar o emulador através do terminal de comando da seguinte forma:

    flutter emulators --launch Pixel_4a_API_30

Com o dispositivo escolhido no exemplo, temos o seguinte resultado:
