# Moldura da câmera da MichaFesta 🐝🌻

Moldura animada pra câmera da [MichaFesta](https://www.twitch.tv/michafesta), feita pra fonte **Navegador** do OBS. O fundo é transparente, e é HTML/CSS/JS puro: sem build e sem dependências.

**No ar:** [michafesta.carlosandemberg.com.br](https://michafesta.carlosandemberg.com.br). Lá você escolhe as opções e copia o link pro OBS. A moldura em si fica em `https://michafesta.carlosandemberg.com.br/moldura-camera.html`.

| Arquivo | O que é | Tamanho no OBS |
|---|---|---|
| `moldura-camera.html` | Borda de mel com girassol, favo, folhas, florzinhas e abelhas voando | **1920 × 1080** (a tela toda) |
| `index.html` | Gerador de link: nome, posição e tamanho da câmera, abelhas e festinha. Também mostra a live com a moldura por cima | — |

## A moldura

A moldura foi feita pro lugar da câmera na live: embaixo, encostada no rodapé, entre o painel de itens (à esquerda) e o minimapa (à direita). Medido da live, isso dá **x 1190, y 843, 423 × 237** numa tela 1920 × 1080.

Por isso ela só tem borda **em cima e dos lados**, e as bordas dos lados ficam por dentro da câmera: nada cobre os itens nem o minimapa. O girassol, o favo de mel, a plaquinha com o nome e as abelhas ficam em cima da câmera, onde só tem o mapa do jogo. Se a câmera não encostar no rodapé, a borda fecha embaixo também.

A borda é de mel com textura de favo, e um brilho corre por ela de vez em quando. Pingos de mel escorrem e caem, as folhas e as flores balançam, e sobe pólen das flores. As abelhas voam pela área do mapa, passam pelas flores e deixam um rastrinho pontilhado. A cada 25 segundos tem **festinha**: a plaquinha pula, as flores estouram em pétalas e as abelhas voam em volta do nome.

### Colocar no OBS

1. **Fontes → + → Navegador**
2. **URL**: o link da moldura, ex.: `https://michafesta.carlosandemberg.com.br/moldura-camera.html`
3. **Largura 1920, Altura 1080** (o tamanho da tela do OBS). A fonte cobre a tela toda e a moldura cai sozinha em volta da câmera.
4. Na lista de fontes, deixe a moldura **acima** da câmera.

Abrindo o link num navegador normal aparece um fundo de exemplo, com o painel de itens e o minimapa de mentirinha no lugar em que ficam na live. Clique em qualquer lugar pra fazer a festa. Dentro do OBS o fundo fica transparente.

### Opções no link

Junte com `&`, ex.: `moldura-camera.html?abelhas=5&festa=40`.

| Opção | O que faz |
|---|---|
| `x=1190&y=843` | Canto de cima-esquerdo da câmera, em pixels da tela |
| `largura=423&altura=237` | Tamanho da câmera. Os enfeites crescem ou encolhem junto |
| `tela=1280x720` | Tamanho da tela do OBS, se não for 1920 × 1080. Sem `x`/`y`, a posição padrão encolhe junto |
| `nome=Micha` | Texto da plaquinha (`nome=` sem nada esconde a plaquinha) |
| `abelhas=5` | Quantas abelhas voando (0 a 8) |
| `festa=40` | Segundos entre as festinhas (`festa=0` desliga) |
| `zoom` | Só na prévia: mostra a moldura de pertinho |

**Mudou a câmera de lugar?** No OBS, botão direito na câmera → **Transformar → Editar transformação**. Copie a posição e o tamanho pro gerador de link. O tamanho da tela fica em **Configurações → Vídeo → Resolução base**.

### Personalizar

O resto fica no bloco `CONFIG`, no começo de `moldura-camera.html`: cores, grossura da borda, cantos, posição da plaquinha, rastro das abelhas e pingos de mel. Edite, salve e faça o deploy de novo. No OBS, botão direito na fonte → **Atualizar**.

O nome usa a fonte [Fredoka](https://fonts.google.com/specimen/Fredoka), do Google Fonts.

## Publicar

São arquivos estáticos, então qualquer hospedagem estática serve.

**Coolify**

1. **Projects → New Resource → Public Repository** (ou **GitHub App**, pra fazer deploy a cada push) e cole a URL deste repositório.
2. **Build Pack**: `Static`, ou `Dockerfile` (já está aqui e serve na porta **80**).
3. Defina o domínio e clique em **Deploy**. A moldura fica em `https://SEU-DOMINIO/moldura-camera.html`.

A seção "Em cima da live" do gerador usa o player da Twitch, que só funciona em HTTPS (ou em `localhost`).
