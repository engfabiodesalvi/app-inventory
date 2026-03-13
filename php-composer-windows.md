# Instalar PHP e Composer no Windows

Foi instalado o **PHP** e **Composer** no Windows 10/11 para desenvolvimento com **Lavarel+Docker** utilizando **WLS2** devido á compatibilidade.

## 1. Métodos de Instalação

A abordagem adotada para utilização **Laravel + Docker** é **WSL2 + Docker Desktop**, pois alinha o Windows ao ambiente Linux, evitando incompatibilidades de caminho e permissão e garantindo a mesma experiência do servidor de produção.
- WSL2 (Ubuntu): Habilitar WSL2 no Windows e instalar PHP/Composer via apt no Linux interno.
- Docker Desktop: Usar containers Docker com imagens oficiais de PHP. Embora não seja uma instalação direta do PHP no Windows, permite usar imagens oficiais PHP (CLI ou com Apache/Nginx).


## 1. PHP no WSL2(Ubuntu)

