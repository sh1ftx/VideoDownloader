import sys
from yt_dlp import YoutubeDL

def download_video(url):
    ydl_opts = {
        'outtmpl': '%(title)s.%(ext)s',
        'format': 'best',
    }
    with YoutubeDL(ydl_opts) as ydl:
        ydl.download([url])
    print("Download finalizado!")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print('Uso: python download.py <URL>')
    else:
        download_video(sys.argv[1])
