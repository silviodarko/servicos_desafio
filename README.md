# servicos_desafio

O projeto refere-se a um sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica. O objetivo é oferecer uma solução para registrar e acompanhar as ordens de serviço dos clientes, atribuir veículos a equipes de mecânicos, calcular os valores dos serviços e controlar o processo de execução.

O esquema conceitual consiste em várias entidades principais:

Tabela "users":

A tabela "users" armazena informações sobre os usuários do sistema.
Possui atributos como ID do usuário, ID do tipo de usuário, ID do usuário em formato Parse, e-mail, senha, status de login, tokens para autenticação em redes sociais, token de usuário, data de expiração do token e outros atributos relevantes.
Tabela "user_schedules":

A tabela "user_schedules" registra os horários dos usuários.
Ela está relacionada com a tabela "users" por meio do ID do usuário.
Possui atributos como ID do agendamento, ID do usuário, meta do agendamento e ID do agendamento na nuvem.
Tabela "user_types":

A tabela "user_types" armazena os diferentes tipos de usuários do sistema.
Possui atributos como ID do tipo de usuário e tipo de usuário (ex: admin, cliente, etc.).
Tabela "user_addresses":

A tabela "user_addresses" contém informações sobre os endereços dos usuários.
Está relacionada com a tabela "users" por meio do ID do usuário.
Possui atributos como ID do endereço, ID do usuário e título do endereço.
Além disso, o esquema conceitual inclui outras entidades específicas para o contexto da oficina mecânica:

Tabela "cliente":

A tabela "cliente" armazena os dados dos clientes da oficina.
Possui atributos como ID do cliente, nome do cliente, CPF, endereço, telefone e e-mail.
Tabela "veiculo":

A tabela "veiculo" registra as informações dos veículos dos clientes.
Está relacionada com a tabela "cliente" por meio do ID do cliente.
Possui atributos como ID do veículo, marca, modelo, ano de fabricação e ID do cliente.
Tabela "mecanico":

A tabela "mecanico" armazena os dados dos mecânicos da oficina.
Possui atributos como ID do mecânico, código do mecânico, nome do mecânico, endereço, telefone e especialidade.
Tabela "ordem_servico":

A tabela "ordem_servico" registra as informações das ordens de serviço.
Está relacionada com as tabelas "cliente" e "mecanico" por meio dos IDs do cliente e do mecânico, respectivamente.
Possui atributos como ID da ordem de serviço, descrição, valor da ordem de serviço, data de emissão, forma de pagamento, status, número da ordem de serviço, data de conclusão, tipo de ordem de serviço, autorização e valor de pagamento.

Esse esquema conceitual proporciona uma estrutura básica para a implementação do sistema de controle e gerenciamento de ordens de serviço em uma oficina mecânica. Vale ressaltar que o esquema pode ser expandido e refinado conforme as necessidades e requisitos específicos do projeto.
