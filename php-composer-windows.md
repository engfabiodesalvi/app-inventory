# Instalar PHP e Composer no Windows

Foi instalado o **PHP** e **Composer** no Windows 10/11 para desenvolvimento com **Lavarel+Docker** utilizando **WLS2** devido á compatibilidade.

## 1. Métodos de Instalação

A abordagem adotada para utilização **Laravel + Docker** é **WSL2 + Docker Desktop**, pois alinha o Windows ao ambiente Linux, evitando incompatibilidades de caminho e permissão e garantindo a mesma experiência do servidor de produção.
- WSL2 (Ubuntu): Habilitar WSL2 no Windows e instalar PHP/Composer via apt no Linux interno.
- Docker Desktop: Usar containers Docker com imagens oficiais de PHP. Embora não seja uma instalação direta do PHP no Windows, permite usar imagens oficiais PHP (CLI ou com Apache/Nginx).


## 1. PHP no WSL2(Ubuntu)

Passo a passo:

1.  **Habilitar WSL2:** No powerShell (Admin), executar:

    ```powershell
    wsl --install
    ```

    Será instalado o kernel WSL2 e será feito o download do Ubuntu padrão. Reiniciar o PC após a intalção.

2. **Iniciar Ubuntu:** Localize e abra o "Ubuntu" no menu Iniciar. Deverá ser criado um usuário e senha para o ambiente Linux.

3. **Instalar PHP:** Execute no terminal do Ubuntu:

    ```bash
    sudo apt update
    sudo apt install php php-cli php-mysql php-mbstring php-xml php-curl php-zip -y
    ```

    Será instalado o PHP e extensões comuns (mbstring, curl, pdo_mysql, etc).

4. **Verificação:** Em `/etc/php/8.x/cli/php.ini`, habilite opções (por exemplo, `opcache.enable=1`).

5. **Configurando php.ini:**

    - Abrir o arquivo para edição com privilégios:

        ```bash
        sudo nano /etc/php/8.x/cli/php.ini
        ```

    - Habilitar o OPcache:

        1. Pressione `Ctrl+W` para buscar.

        2.  Digite `opcache.enable` e dê Enter.

        3. Se a linha estiver como `;opcache.enable=0`, remover o ponto e vírgula (`;`) no início da linha para descomentar.

        4. Altere o valor para `1`:
            ```ini
            opcache.enable=1
            ```
    - Salvar e Fechar:

        1. Pressione `Ctrl+O` e `Enter` para salvar (Write Out).`

        2. Pressione `Ctrl+X` para sair.
 
6. **Coposer no WSL2:**


