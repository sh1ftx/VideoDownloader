# VideoDownloader

**VideoDownloader** é uma ferramenta de linha de comando simples e eficiente para baixar vídeos diretamente do YouTube. O projeto utiliza a poderosa biblioteca **yt-dlp** para o download de vídeos e **ffmpeg** para garantir a melhor qualidade possível. Tudo é configurado automaticamente para o usuário, facilitando a instalação e o uso.

---

## Funcionalidades

- **Download de vídeos do YouTube**: Baixe vídeos diretamente da plataforma com apenas um comando.
- **Instalação automatizada**: As dependências necessárias (**yt-dlp** e **ffmpeg**) são instaladas automaticamente durante a configuração.
- **Qualidade do vídeo**: O programa garante o download na melhor qualidade disponível.
- **Facilidade de uso**: Um simples comando para rodar o processo de download.

---

## Pré-requisitos

Antes de começar, você precisa ter os seguintes programas instalados:

- **Git**: Para clonar o repositório.
- **Python 3**: A versão 3 do Python é necessária para rodar o script de download.
- **g++**: Compilador C++ para compilar o programa.
- **Sistema operacional**: Funciona em sistemas baseados em Unix (Linux, macOS).

Caso o **Python 3** ou **g++** não esteja instalado, siga as instruções abaixo para instalá-los no Ubuntu:

```bash
sudo apt update
sudo apt install python3 python3-pip g++
```

---

## Instalação

### 1. Clone o repositório

Clone o repositório **VideoDownloader** para sua máquina local:

```bash
git clone https://github.com/sh1ftx/VideoDownloader.git
cd VideoDownloader
```

### 2. Execute o script de configuração

Para configurar o ambiente automaticamente, incluindo a instalação das dependências (yt-dlp e ffmpeg), execute o script `setup.sh`. Esse script criará um ambiente virtual, instalará as dependências necessárias e compilará o código C++.

No terminal, execute:

```bash
chmod +x setup.sh  # Torna o script executável
./setup.sh         # Executa a configuração
```

### 3. Execução

Após a configuração ser concluída, o programa estará pronto para ser usado. Para baixar um vídeo do YouTube, basta rodar o comando abaixo substituindo `LINK_AQUI` pela URL do vídeo desejado.

```bash
baixar LINK_AQUI
```

Exemplo de uso:

```bash
baixar https://youtu.be/pNU-zR8GlJM?si=B02bms_QaOejAprf
```

---

## Como funciona

### Script Python: `download.py`

O script **download.py** utiliza a biblioteca **yt-dlp** para realizar o download do vídeo a partir da URL fornecida. Ele também verifica se o **ffmpeg** está disponível para garantir que o vídeo seja baixado na melhor qualidade possível.

### Compilação C++: `main.cpp`

O programa C++ **main.cpp** recebe o link do vídeo, executa o script Python `download.py` e gerencia o fluxo de execução de forma simples, garantindo que o processo de download seja iniciado sem erros.

### Script de Setup: `setup.sh`

O script **setup.sh** automatiza todo o processo de instalação:

1. Cria um ambiente virtual Python.
2. Instala **yt-dlp** e **ffmpeg** no ambiente virtual.
3. Compila o código C++.
4. Deixa o sistema pronto para o uso.

---

## Como contribuir

Contribuições são bem-vindas! Caso queira melhorar o projeto, siga as etapas abaixo:

1. Faça um fork do repositório.
2. Crie uma branch para sua feature: `git checkout -b minha-feature`.
3. Faça suas modificações e commit: `git commit -am 'Adiciona nova feature'`.
4. Envie para o seu repositório: `git push origin minha-feature`.
5. Abra um Pull Request no repositório original.

---

## Licença

Este projeto está licenciado sob a **MIT License**. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## Problemas comuns

### 1. **Erro "No module named yt_dlp"**

Se você receber o erro `No module named yt_dlp`, certifique-se de que o ambiente virtual foi criado corretamente e que as dependências foram instaladas. Execute o seguinte para garantir que o ambiente virtual esteja ativado:

```bash
source venv/bin/activate
```

### 2. **Erro "ffmpeg not found"**

Se aparecer o erro de que o **ffmpeg** não foi encontrado, o script `setup.sh` já instala o **ffmpeg** automaticamente. No entanto, se você estiver enfrentando problemas, verifique se ele está instalado corretamente:

```bash
sudo apt install ffmpeg
```

---

## Agradecimentos

Este projeto utiliza a biblioteca **yt-dlp**, que é um fork melhorado do **youtube-dl**. Agradecemos aos desenvolvedores da biblioteca pela contribuição para a comunidade.

---

### Exemplo de uso:

```bash
# Após a instalação
$ baixar https://youtu.be/pNU-zR8GlJM?si=B02bms_QaOejAprf
```

Isso fará o download do vídeo do YouTube e o salvará no seu diretório atual.
