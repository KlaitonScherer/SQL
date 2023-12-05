create database CarHouse;*/
use CarHouse;

Create table inventario(
inventario_id int not null auto_increment,
modelo varchar(100) not null,
marca varchar(100) not null,
disponivel boolean not null, 
ano int not null,
valor decimal(10,2) not null,
primary key (inventario_id) 

);

Create table cliente(
cliente_id int not null auto_increment,
nome varchar(100) not null, 
telefone varchar(100) not null,
primary key (cliente_id)

);

Create table vendas(
venda_id int not null auto_increment,
inventario_id int not null,
cliente_id int not null,
data_venda date not null,
valor_venda decimal(10,2) not null,
primary key (venda_id),
foreign key (inventario_id)references inventario(inventario_id),
foreign key (cliente_id)references cliente(cliente_id)
); 

insert into inventario(inventario_id, modelo, marca, disponivel, ano, valor)
values ("1", "Focus", "Ford", True, "2015", "30000.00"),
	   (default, "Onix", "Chevrolet", True, "2018", "40000.00"),
	   (default, "ka", "Ford", True, "2013", "20000.00"),
	   (default, "Lancer", "Mitsubishi", True, "2015", "60000.00"),
       (default, "Fusca", "volkswagen", True, "1980", "8000.00");
       
insert into cliente(cliente_id, nome, telefone)
values ("1", "JOSE", "890654787"),
	   (default, "ARMANDO", "345956879"),
	   (default, "DAVI", "154985674"),
	   (default, "WESLEY", "296964908"),
       (default, "JONH", "123456789");
       
insert into vendas(venda_id, inventario_id, cliente_id, data_venda, valor_venda)
values ("1", "4", "3", "21/09/23", "60000.00"),
	   (default, "1", "2", "01/11/23", "30000.00"),
	   (default, "5", "4", "20/03/23", "8000.00"),
	   (default, "3", "1", "15/10/23", "20000.00"),
       (default, "2", "5", "07/07/23", "40000.00");


Select *
from vendas 
where valor_venda       


UPDATE vendas 
SET  data_venda = "23/09/21"
where venda_id = 1
       
UPDATE vendas 
SET  data_venda = "23/11/01"
where venda_id =  2  

UPDATE vendas 
SET  data_venda = "23/03/20"
where venda_id = 3   

UPDATE vendas 
SET  data_venda ="23/10/15"
where venda_id =  4

UPDATE vendas 
SET  data_venda = "23/07/07"
where venda_id = 5   
       
       







