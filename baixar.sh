#!/bin/bash

# Função para verificar se o ffmpeg está instalado
install_ffmpeg() {
    if ! command -v ffmpeg &> /dev/null
    then
        echo "ffmpeg não encontrado. Instalando..."
        sudo apt update
        sudo apt install -y ffmpeg
    else
        echo "ffmpeg já está instalado."
    fi
}

# Função para configurar e instalar yt-dlp no ambiente virtual
install_yt_dlp() {
    if ! python3 -m pip show yt-dlp &> /dev/null
    then
        echo "yt-dlp não encontrado. Instalando no ambiente virtual..."
        python3 -m venv venv
        source venv/bin/activate
        pip install yt-dlp
    else
        echo "yt-dlp já está instalado."
    fi
}

# Função para compilar o código C++
compile_cpp() {
    echo "Compilando o código C++..."
    g++ -o main main.cpp
}

# Função para rodar o comando de download
download_video() {
    if [ -z "$1" ]; then
        echo "Por favor, forneça o link do vídeo!"
        exit 1
    fi

    LINK=$1
    echo "Baixando o vídeo de: $LINK"

    # Verifica se o ambiente virtual existe e ativa
    if [ ! -d "venv" ]; then
        echo "Criando o ambiente virtual..."
        python3 -m venv venv
    fi
    source venv/bin/activate

    # Executa o yt-dlp
    python3 -m yt_dlp $LINK
}

# Instalar ffmpeg
install_ffmpeg

# Instalar yt-dlp no ambiente virtual
install_yt_dlp

# Compilar código C++
compile_cpp

# Baixar o vídeo se o link for passado como argumento
download_video $1

# Mensagem de sucesso
echo "Download do vídeo finalizado!"
