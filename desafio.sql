CREATE TABLE `users` (
	`id` int NOT NULL,
	`user_type_id` int NOT NULL,
	`parse_id` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`password` varchar(255) NOT NULL,
	`logged_in` BOOLEAN NOT NULL,
	`token_facebook` varchar(255) NOT NULL,
	`token_twitter` varchar(255) NOT NULL,
	`user_token` varchar(255) NOT NULL,
	`token_expiration` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `user_schedules` (
	`id` int NOT NULL,
	`user_id` int NOT NULL,
	`goal` varchar(255) NOT NULL,
	`schedule_cloud_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `user_types` (
	`id` int NOT NULL,
	`type` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `user_addresses` (
	`id` int NOT NULL,
	`user_id` int NOT NULL,
	`title` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `cliente` (
	`id_cliente` int NOT NULL,
	`nome_cliente` varchar(255) NOT NULL,
	`cpf` varchar(11) NOT NULL,
	`endereco` varchar(255) NOT NULL,
	`telefone` varchar(20) NOT NULL,
	`email` varchar(255) NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE `veiculo` (
	`id_veiculo` int NOT NULL,
	`marca` varchar(255) NOT NULL,
	`modelo` varchar(255) NOT NULL,
	`ano_fabricacao` int NOT NULL,
	`id_cliente` int NOT NULL,
	PRIMARY KEY (`id_veiculo`)
);

CREATE TABLE `mecanico` (
	`id_mecanico` int NOT NULL,
	`codigo_mecanico` varchar(255) NOT NULL,
	`nome_mecanico` varchar(255) NOT NULL,
	`endereco` varchar(255) NOT NULL,
	`telefone` varchar(20) NOT NULL,
	`especialidade` varchar(255) NOT NULL,
	PRIMARY KEY (`id_mecanico`)
);

CREATE TABLE `ordem_servico` (
	`id_ordem_servico` int NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`valor_ordem_servico` DECIMAL(10,2) NOT NULL,
	`id_cliente` int NOT NULL,
	`id_mecanico` int NOT NULL,
	`data_emissao_os` DATE NOT NULL,
	`forma_pagamento` varchar(255) NOT NULL,
	`status_ordem_servico` varchar(255) NOT NULL,
	`numero_ordem_servico` varchar(255) NOT NULL,
	`data_conclusao_os` DATE NOT NULL,
	`tipo_ordem_servico` varchar(255) NOT NULL,
	`autorizacao_os` varchar(255) NOT NULL,
	`valor_pagamento_os` DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (`id_ordem_servico`)
);

ALTER TABLE `users` ADD CONSTRAINT `users_fk0` FOREIGN KEY (`user_type_id`) REFERENCES `user_types`(`id`);

ALTER TABLE `user_schedules` ADD CONSTRAINT `user_schedules_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `user_addresses` ADD CONSTRAINT `user_addresses_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `veiculo` ADD CONSTRAINT `veiculo_fk0` FOREIGN KEY (`id_cliente`) REFERENCES `cliente`(`id_cliente`);

ALTER TABLE `ordem_servico` ADD CONSTRAINT `ordem_servico_fk0` FOREIGN KEY (`id_cliente`) REFERENCES `cliente`(`id_cliente`);









