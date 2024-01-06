#!/bin/bash

# Atualizar a lista de pacotes
update_packages() {
    sudo apt update
}

# Realizar upgrade de pacotes
upgrade_packages() {
    sudo apt upgrade -y && sudo apt full-upgrade -y
}

# Resolvendo pacotes quebrados
resolve_broken_packages(){
    sudo apt --fix-broken install -y ; sudo dpkg --configure -a ; sudo apt-get install -f -y

}

# Limpeza do sistema
system_cleaning(){
    # Remove pacotes desnecessários
    sudo apt autoremove -y
    sudo apt autoclean -y

    # Limpa o cache do apt
    sudo apt clean -y

    # Limpa a lixeira
    rm -rf ~/.local/share/Trash/*

    # Limpa o cache do sistema
    sudo rm -rf /var/cache/apt/archives/*.deb
    sudo rm -rf /var/cache/apt/archives/partial/*
    sudo rm -rf /var/cache/apt/*.bin

    # Limpa os logs antigos
    sudo journalctl --vacuum-time=7d

    # Limpa arquivos temporários
    sudo rm -rf /tmp/*

    # Remove pacotes órfãos
    sudo deborphan | xargs sudo apt-get -y remove --purge

    # Limpa histórico de comandos
    history -c

    echo "Limpeza completa concluída."
}

# Função para realizar a atualização completa do sistema
update_system() {
    if update_packages; then
        echo "Atualização da lista de pacotes concluída com sucesso."
        if upgrade_packages; then
            echo "Upgrade de pacotes bem-sucedido."
        else
            echo "Erro ao realizar o upgrade de pacotes. Verifique e corrija antes de prosseguir."
        fi
    else
        echo "Erro ao atualizar a lista de pacotes. Verifique sua conexão com a internet e tente novamente."
        # Adicione ações de recuperação, se necessário
        resolve_broken_packages
    fi

    # Realiza a limpeza do sistema após a atualização
    system_cleaning
}

# Chama a função principal
update_system