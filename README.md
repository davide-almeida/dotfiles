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
Se deu tudo certo, você verá uma msg de sucesso.

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

6 - Usar algum editor de sua preferência e colar o conteúdo copiado anteriormente do ".tmux.conf". Em seguida, salvar o arquivo.

7 - Nesse momento é necessário reuniciar o terminal;

8 - Em seguida, abrir o terminal e definir a "Nerd fonte" que você baixou, como a fonte padrão do seu terminal nas "preferências".

9 - Você pode iniciar o tmux com o seguinte comando:
```bash
tmux
```

10 - Alguns comandos básicos do tmux:
```bash
Ctrl + B ? = Help

Ctrl + B O = alternar entre as "janelas" abertas
Ctrl + B Q = exibe os números de cada janela
Ctrl + B " = cria um novo painel na vertical
Ctrl + B % = cria um novo painel na horizontal
Ctrl + B Z = zoon-in zoom-out na janela ativa
Ctrl + D = Fecha a janela selecionada
Ctrl + B : = abre a parte de comandos
Ctrl + B W = Alternar entre sessões
Ctrl + B , = Renomear janela
Ctrl + B T = Relógio
Ctrl B Alt + 1 = Alterna para o primeiro layout (pode alternar de 0 a 4)
```

<div id='ref'/>

## Referências 
- https://www.nerdfonts.com/
- https://github.com/tmux/tmux
- https://github.com/tmux-plugins/tpm
- https://github.com/dracula/tmux
