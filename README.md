# dotfiles

*******
Conteúdo
 1. [Tmux](#tmux)
 2. [Referências](#ref)

*******

_Este tutorial assume que o usuário está utilizando o Ubuntu ou qualquer distro debian. Mas pode ser adaptado facilmente de acordo com a necessidade._

<div id='tmux'/>  

## Tmux 
1. Instalar o Tmux
```bash
sudo apt install tmux
```

2. Instalar o TPM (Tmux Plugin Manager):
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

3. Baixar e instalar uma NerdFont. _(No meu caso, costumo usar a Fira Code Nerd Font e ela pode ser encontrada [aqui](https://www.nerdfonts.com/))_
```bash
wget -P ~/.fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
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

4. Copiar o conteúdo do arquivo [.tmux.conf](https://github.com/davide-almeida/dotfiles/blob/main/.tmux.conf) deste repositório;

5. Acessar o diretório do seu usuário e criar um arquivo chamado ".tmux.conf":
```bash
cd ~
```
```bash
touch .tmux.conf
```

6. Usar algum editor de sua preferência e colar o conteúdo copiado anteriormente do ".tmux.conf". Em seguida, salvar o arquivo;

7. Nesse momento é necessário reiniciar o terminal;

8. Em seguida, abrir o terminal e definir a "Nerd fonte" que você baixou, como a fonte padrão do seu terminal nas "preferências";

9. Inicie o tmux com o seguinte comando:
```bash
tmux
```

10. Para se certificar de que o arquivo de configuração será carregado, você pode rodar o seguinte comando:
```bash
tmux source ~/.tmux.conf
```

11. Instalar os plugins listados:
```bash
Ctrl+a I
```

Se tudo ocorreu como o esperado, agora você já pode está vendo o tmux, com esse visual _(dracula theme)_:
![image](https://user-images.githubusercontent.com/85287720/235815575-c2f8429d-6697-492f-8539-873b6c1215b9.png)

12. Conceitos e comandos básicos:

`sessão > janela > painel`

| **#** | **Definição** |
| :----: | :------------------: |
| sessão | Um grupo de janelas |
| janela | Um grupo de paineis |
| painel | Contém um terminal |


### Sessões
| **Comando** | **Definição** |
| :---- | :------------------ |
| Ctrl + b n | Vai para a próxima sessão |
| Ctrl + b p | Vai para a sessão anterior |
| Ctrl + b w | Alternar entre sessões |
| Ctrl + d | Fecha a janela selecionada e se ela for a última janela da sessão, fechará a sessão também |
| Ctrl + b ) | Vai para a próxima sessão |
| Ctrl + b ( | Vai para a sessão anterior |

**Criando uma sessão:**
| **Comando** | **Definição** |
| :---- | :------------------ |
| Ctrl + b : | Abre o prompt de comandos do Tmux |
| new-session -s *<nome-da-sessão>* | Digitar esse comando no prompt do tmux, trocando o *<nome-da-sessão>* pelo nome que a nova sessão terá |

**Fechando o terminal sem perder a sessão:**
| **Comando** | **Definição** |
| :---- | :------------------ |
| Ctrl + b : | Abre o prompt de comandos do Tmux |
| :detach-client | Ao digitar esse comando e pressionar "Enter" você será "desanexado" da sessão e pode fechar o terminal sem perder a sessão |

**Entrando em uma sessão a qual você está desanexado:**
| **Comando** | **Definição** |
| :---- | :------------------ |
| tmux attach | Entrará na última sessão a qual você foi desanexado |

### Janelas
| **Comando** | **Definição** |
| :---- | :------------------ |
| Ctrl + b c | Cria uma nova janela dentro da sessão atual |
| Ctrl + b , | Renomeia a janela atual |
| Ctrl + b n | Vai para a próxima janela |
| Ctrl + b p | Vai para a janela anterior |
| Ctrl + d | Fecha a janela selecionada |

### Paineis
| **Comando** | **Definição** |
| :---- | :------------------ |
| Ctrl + b " | cria um novo painel na vertical |
| Ctrl + b % | cria um novo painel na horizontal |
| Ctrl b Alt + *1* | Alterna para o para o primeiro layout *(pode alternar de 0 a 4)* |
| Ctrl + b q | Exibe o número referente a cada painel |
| Ctrl + b q *<número>* | Vai para o painel referente ao número digitado |
| Ctrl + b o | alternar entre os paineis abertos |
| Ctrl + b z | zoon-in zoom-out no painel ativo |

### CopyMode - Busca
| **Comando** | **Definição** |
| :---- | :------------------ |
| Ctrl + b [ | Entra no CopyMode |
| Ctrl + r *<palavra>* | Busca a palavra digitada |
| n | Vai para a próxima ocorrência da busca |
| N | Vai para a ocorrência anterior |
| q | Sai do CopyMode |

**Copiar alguma string do terminal:**
| **Comando** | **Definição** |
| :---- | :------------------ |
| Ctrl + b [ | abre o copy mode |
| Ctrl + r <palavra> | busca palavra |
| Ctrl + space | modo de seleção |
| Ctrl + w | Copia o que estiver selecionado e sai do copy mode |

### Outros
| **Comando** | **Definição** |
| :---- | :------------------ |
| Ctrl + B ? | Help |
| Ctrl + b : | abre o prompt de comandos do tmux |
| source-file ~/.tmux.conf | rodar o .tmux.conf (deve ser executado no prompt do tmux) |
| Ctrl + b t | Relógio |


<div id='ref'/>

## Referências 
- https://www.nerdfonts.com/
- https://github.com/tmux/tmux
- https://github.com/tmux-plugins/tpm
- https://github.com/dracula/tmux
- https://draculatheme.com/tmux

