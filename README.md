# Script de Provisionamento de Infraestrutura

## Descrição
Este projeto consiste em um script Bash que automatiza a criação de uma infraestrutura básica de usuários, grupos de usuários, diretórios e permissões em um sistema Linux. O objetivo é facilitar a configuração de novos ambientes, garantindo que todas as permissões e estruturas necessárias sejam aplicadas de maneira consistente e eficiente.

## Estrutura do Projeto
setup_infrastructure.sh: Script principal que realiza todo o provisionamento da infraestrutura.


### Como Usar
Pré-requisitos
Sistema operacional Linux.
Permissões de superusuário (root) para execução do script.
Passos

### Clone o repositório:

bash
git clone https://github.com/seu_usuario/nome_do_repositorio.git
Navegue até o diretório do projeto:

bash
cd nome_do_repositorio
Dê permissão de execução ao script:

bash
chmod +x setup_infrastructure.sh
Execute o script:

bash
sudo ./setup_infrastructure.sh

### Resultado Esperado:

Grupos e usuários criados com as permissões corretas.
Diretórios configurados com as permissões apropriadas.
Contribuição
Sinta-se à vontade para contribuir com este projeto. Caso encontre algum problema ou tenha sugestões de melhorias, abra uma issue ou envie um pull request.


### Contato
Para dúvidas ou sugestões, entre em contato:

Nome: Mayko Rossi

Email: maykorossi@hotmail.com

GitHub: MaykoRossi
## Funcionalidades

- Criação de Grupos de Usuários: Cria grupos específicos para diferentes departamentos.
- Criação de Usuários: Cria usuários e os atribui aos grupos correspondentes.
- Configuração de Permissões: O diretório público é acessível a todos os usuários. Os usuários de cada grupo têm permissões totais dentro de seus respectivos diretórios. Usuários que não pertencem a um grupo não têm acesso aos diretórios dos outros grupos. 
-  Reexecução Segura: Antes de criar a infraestrutura, o script remove qualquer configuração anterior, garantindo que o ambiente esteja limpo.

