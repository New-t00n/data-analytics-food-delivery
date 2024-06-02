# Data Analytics: Food & Delivery
--
## Processo de análise de dados realizado em ferramentas de ETL e visualização de dados.
Inicialmente é realizado a modelagem dos dados através de um MER (Modelo Entidade Relacional), seguido da criação do banco de dados na ferramenta do Microsoft SQL Server. Adiante, é feito o processo de três fases do ETL:

  * Extract: Coleta da base de dados de <a href="https://www.kaggle.com/datasets/romanniki/food-delivery-cost-and-profitability" target="_blank">Food Delivery Cost and Profitability</a> através do site da Kaggle;
  * Transform: A limpeza e organização dos dados foi realizado pela ferramenta Alteryx, a fim de transformá-los em dados utilizáveis;
  * Load: Os dados são inseridos no banco de criado anteriormente.

Por fim, o banco de dados foi conectado à ferramenta Power BI para que as informações possam ser visualizadas e analisadas através de um dashboard interativo.

## Ferramentas utilizadas
<img src="https://community.alteryx.com/t5/image/serverpage/image-id/259688iF6C1C4BD0BC11851?v=v2" alt="Alteryx" width="50" height="50">
<img src="https://cdn.freebiesupply.com/logos/large/2x/microsoft-sql-server-logo-svg-vector.svg" alt="SQL Server" width="50" height="50">
<img src="https://1000logos.net/wp-content/uploads/2022/08/Microsoft-Power-BI-Logo-2013.png" alt="Power BI" width="50" height="50">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Microsoft_Office_Excel_%282019%E2%80%93present%29.svg/1101px-Microsoft_Office_Excel_%282019%E2%80%93present%29.svg.png" alt="Excel" width="50" height="50">
<img src="https://asset.brandfetch.io/idYImgMHFx/idSWeeYsRC.png" alt="Bizagi" width="50" height="50">

## Como utilizar?
1. Clone esse projeto;
2. Abra a pasta de "SQL Server" e abra o arquivo "Food_and_Delivery.sql" e rode o script;
3. Acessa a pasta "Alteryx", abra o arquivo "Food_and_Delivery.yxmd", aponte os caminhos corretos de entrada (Food_orders_new_delhi.csv) e saída dos dados (o banco de dados SQL);
4. No arquivo do Power BI (food_and_delivery.pbix), como fonte de dados, faça conexão direta com o banco de dados ou utilize o arquivo "food_and_delivery.xlsx" na pasta "Excel".

## Imagem do Dashboard
![alt text](Dashboard.jpg)

## Ficou em dúvidas sobre a modelagem de dados?
Na pasta de documentos, encontrá-se a parte de documentação do projeto: um MER e dicionário de dados.






