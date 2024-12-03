#include <iostream>
#include <cstdlib>
#include <string>
using namespace std;

void ChamarPythonScript(const string& url) {
  // Montar o comando para chamar o script py
  string comando = "python3 -m yt_dlp " + url;
  cout << "Executando o comando: " << comando << endl;

  // Executa o comando
  int resultado = system(comando.c_str());

  // Verifica se o comando foi bem sucedido
  if (resultado == 0) {
    cout << "Download finalizado com sucesso!" << endl;
  } else {
    cout << "Erro ao executar o script Python." << endl;
  }
}

int main() {
  string url;
  cout << "Digite o link do vídeo: ";
  getline(cin, url);

  if (!url.empty()) {
    ChamarPythonScript(url);
  } else {
    cerr << "Nenhum link foi fornecido!" << endl;
  }

  return 0;
}
