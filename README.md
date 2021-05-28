
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

