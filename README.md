# dotfiles

*******
Conteúdo
 1. [Tmux](#tmux)
 2. [Referências](#ref)

*******

_Este tutorial assume que o usuário está utilizando o Ubuntu ou qualquer distro debian. Mas pode ser adaptado facilmente de acordo com a necessidade._

<div id='tmux'/>  

## Tmux 
1 - Instalar o Tmux
```bash
sudo apt install tmux
```

2 - Instalar o TPM (Tmux Plugin Manager):
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

3 - Baixar e instalar uma NerdFont. _(No meu caso, costumo usar a Fira Code Nerd Font e ela pode ser encontrada [aqui](https://www.nerdfonts.com/))_
```bash
wget -P ~/.fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
```
```bash
unzip ~/.fonts/FiraCode.zip -d ~/.fonts
```
```bash
fc-cache -fv
```
Se deu tudo certo, será exibida uma mensagem de sucesso.

Também é possível verificar se a "Fira Code Nerd Font" está instalada da seguinte forma:
```bash
fc-list | grep "Fira Code"
```

4 - Copiar o conteúdo do arquivo [.tmux.conf](https://github.com/davide-almeida/dotfiles/blob/main/.tmux.conf) deste repositório;

5 - Acessar o diretório do seu usuário e criar um arquivo chamado ".tmux.conf":
```bash
cd ~
```
```bash
touch .tmux.conf
```

6 - Usar algum editor de sua preferência e colar o conteúdo copiado anteriormente do ".tmux.conf". Em seguida, salvar o arquivo;

7 - Nesse momento é necessário reiniciar o terminal;

8 - Em seguida, abrir o terminal e definir a "Nerd fonte" que você baixou, como a fonte padrão do seu terminal nas "preferências";

9 - Inicie o tmux com o seguinte comando:
```bash
tmux
```

10 - Para se certificar de que o arquivo de configuração será carregado, você pode rodar o seguinte comando:
```bash
tmux source ~/.tmux.conf
```

Se tudo ocorreu como o esperado, agora você já pode está vendo o tmux, com esse visual _(dracula theme)_:
![image](https://user-images.githubusercontent.com/85287720/235815575-c2f8429d-6697-492f-8539-873b6c1215b9.png)


11 - Alguns comandos básicos do tmux:
```bash
Ctrl + B ? = Help

Ctrl + b o = alternar entre as "janelas" abertas
Ctrl + b q = exibe os números de cada janela
Ctrl + b " = cria um novo painel na vertical
Ctrl + b % = cria um novo painel na horizontal
Ctrl + b z = zoon-in zoom-out na janela ativa
Ctrl + d = Fecha a janela selecionada
Ctrl + b : = abre a parte de comandos
Ctrl + b w = Alternar entre sessões
Ctrl + b , = Renomear janela
Ctrl + b t = Relógio
Ctrl b Alt + 1 = Alterna para o primeiro layout (pode alternar de 0 a 4)
```

<div id='ref'/>

## Referências 
- https://www.nerdfonts.com/
- https://github.com/tmux/tmux
- https://github.com/tmux-plugins/tpm
- https://github.com/dracula/tmux
- https://draculatheme.com/tmux

