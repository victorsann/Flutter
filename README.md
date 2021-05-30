
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120003533-38040600-bfac-11eb-9ead-49cf1dc50c62.png">
</div>
<br>
<img src="https://img.shields.io/static/v1?label=flutter&message=Framework&color=blue&style=for-the-badge&logo=Flutter"/>


O Flutter é um conjunto de ferramentas para o desenvolvimento de User Interfaces(Ui), criado e mantido pelo google. Sendo apresentado pela primeira vez em 2015, a ferramenta foi aprimorada desde então, sendo o Flutter 1.0 a sua primeira versão estável, lançada em 2018. 

Desenvolvido em C, C++, Dart e Skia Graphics Engine, o Flutter utiliza o [Dart](https://github.com/VictorSantos12/Dart#maps) como linguagem de desenvolvimento. Além disso, outra característica muito importante da ferramenta é sua capacidade de criar aplicações híbridas, mantendo uma performance nativa independente do sistema operacional, mantendo apenas um código fonte.

Outras características importantes sobre a ferramenta são:

- Dispõe o Stateful Hot Reload
- Utiliza Widgets Reativos Customizaveis
- Roda em diversas IDE's
- Utiliza a GPU e permite acesso as API'S das plataformas android e IOS
- Pode se integrar a aplicações já desenvolvidas


<h2>Instalação</h2>


Para instalar e usar o Flutter, é preciso seguir alguns passos:

- [Baixar Flutter para Windows](https://flutter.dev/docs/get-started/install/windows)
- Extrair o contéudo do arquivo zip
- Encaminhar o arquivo resultante para uma pasta no disco local (exemplo: C:\src\flutter)


<h2>Atualizando Path</h2>


Para que as ferramentas do Flutter possam ser acessadas em qualquer lugar do sistema, uma variável de ambiente contendo o caminho para o arquivo bin, dentro da pasta flutter. Abaixo está o passo a passo do processo:

- Acessar as propriedades em 'Meu Computador'
- Acessar 'configurações avançadas do sistema'
- Acessar 'Variáveis de Ambiente'
- Em 'Variáveis de usuário' selecionar 'Path' e clicar em Editar
- Selecionar a opção 'Novo' e definir o caminho C:\src\flutter\bin como nova variável de ambiente
- Encerrar clicando em OK

Após esse processo é possível executar o Flutter no Cmd do Windows. E para verificar se o Flutter foi corretamente instalado é possível utilizar os comandos a sequir:

    // Verificar a versão instalada

    flutter --version

    // Acessar gerenciador do Flutter

    flutter

- Definir demais variáveis de ambiente
- Explicar processo de sownload do android studio e do emulador a ser usado
- Preparar ambiente(vscode): extenções e demais coisas
- Explicar estrutura da main.dart file


<h2>Ambiente de Desenvolvimento</h2>


Tendo o flutter instalado, o próximo passo é preparar o ambiente de desenvolvimento, sendo necessário instalar alguns recursos:

- [Android Studio](https://developer.android.com/studio?hl=pt&gclid=Cj0KCQjw78yFBhCZARIsAOxgSx2xS0_FUoAlFg9Z-jqoOf8YJY3ihAhi8Uho_jdZNWmSZgPfLT93FlEaAsJvEALw_wcB&gclsrc=aw.ds)
- [VScode](https://code.visualstudio.com/) (Recomendado)


<h3>Android Studio</h3>


O android studio dispõe de recurso essenciais para para o desenvolvimento de aplicações android. Apesar de suprir estas necessidades, a IDE não será utilizada como ambiente de desenvolvimento, devido a seu consumo excessivo de mémoria. O recurso visado é a criação e uso de um ou mais emuladores, processo visto a seguir


<h3>Criando Android Device</h3>


Após a instalação da ferramenta de desenvolvimento do android, é possível ter acesso a uma máquina virtual, a qual será utilizada como emulador para teste dos projetos futuros. O passo a passo de criação e configuração do emulador pode ser acessado na documentação oficial 
do [developer.android.com](https://developer.android.com/studio/run/managing-avds?hl=pt-br).

é possível verificar a instalação do emulador criado através do comando a seguir

    flutter emulators

O resultado deve conter o ADV Name, definido no precesso de criação. Exemplo:

    Pixel_4a_API_30 • Pixel 4a API 30 • Google • android

Tendo o esse resultado, é possível inicializar o emulador do terminal de comando da seguinte forma:

    flutter emulators --launch Pixel_4a_API_30

Com o dispositivo escolhido no exemplo, temos o seguinte resultado:

<div align="center">
 <img src="https://user-images.githubusercontent.com/61476935/120112169-1b520480-c14b-11eb-8fc5-d43d1dbd52d9.png">
</div>