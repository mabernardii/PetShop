-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/05/2026 às 20:42
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`, `descricao`, `ativo`) VALUES
(1, 'Cachorro', 'Produtos para cães', 1),
(2, 'Gato', 'Produtos para gatos', 1),
(3, 'Peixe', 'Aquários e rações', 1),
(4, 'Pássaros', 'Utensílios para aves', 1),
(5, 'Outros pets', 'Explore diferentes produtos para seus animais', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `petshopensina` text DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `preco_desconto` double DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `qtd_estoque` int(11) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `descricao`, `petshopensina`, `preco`, `preco_desconto`, `imagem`, `qtd_estoque`, `ativo`, `id_categoria`) VALUES
(1, 'Ração Premier Nutrição Clínica Hipoalergênico para Cães de Médio e Grande Porte 10,1kg', '- Indicada para cães;\r\n- Auxilia na redução das reações adversas aos alimentos;\r\n- Feita com farinha de mandioca e proteínas hidrolisadas;\r\n- Conta com níveis ideais de ácidos graxos ômega 3 e 6;\r\n- Proporciona maior suporte à saúde da derme;\r\n- Conta com ingredientes de alta digestibilidade,\r\n- Disponível em embalagem de 10,1 kg.', 'Alguns cães precisam de cuidados especiais com a alimentação durante a vida, devido ao tratamento de reações adversas aos alimentos. Se seu pet de médio ou grande porte passa por essa situação, saiba que você pode contar com a ração Premier Hipoalergênica 10 kg.\r\n\r\nPreparada por uma equipe especialista em saúde animal, a ração Hipoalergênica Premier da linha Nutrição Clínica traz diversas vantagens:\r\n\r\n- conta com fonte exclusiva de proteína hidrolisada;\r\n- possui níveis ajustados de ácidos graxos para a integridade da pele;\r\n- apresenta ingredientes de alta palatabilidade para agradar o animal.\r\n\r\nGostou das vantagens da ração Premier nutrição clínica hipoalergênica para cães? A seguir, você confere mais informações importantes sobre o produto. Acompanhe.', 379.9, 341.91, 'https://images.petz.com.br/fotos/10001330000180_1758819245128.jpg', 20, 1, 1),
(2, 'Ração Golden Power Training para Cães Adultos Sabor Frango e Arroz - 15 kg', '- Indicada para cães em treinamento e competição;\r\n- Saúde oral: Auxilia a redução da formação do tártaro;\r\n- Redução do odor das fezes: Seleção de ingredientes especiais que auxiliam na redução do odor das fezes;\r\n- Rico em BCAA e L-carnitina: Aminoácidos de cadeia ramificada e L-carnitina que auxilia na manutenção da massa magra;\r\n- Blend de nutracêuticos: Com condroitina e glicosamina;\r\n- Ingredientes naturais: Sem corantes e aromatizantes artificiais;\r\n- Disponível em embalagens de 15 kg.', 'Cachorros adultos, dependendo da raça e do porte, tendem a praticar intensas atividades físicas, participando inclusive de competições. Por essa razão, precisam se alimentar de uma maneira saudável. A Golden Power Training é o alimento ideal para você oferecer ao seu peludo para repor as energias vitais de seu organismo.\r\n\r\nAlém de assegurar uma melhor performance, o alimento foi cientificamente desenvolvido com fórmula nutritiva e deliciosa! Além disso, a ração Golden Power Training possui outros benefícios, como:\r\n\r\n- Proteção articular;\r\n- Sem corantes e aromatizantes artificiais,\r\n- Alimento balanceado e rico em nutrientes. \r\n\r\nEstá pensando em incluir o alimento no dia a dia do seu companheiro? Então, continue a leitura e descubra outras dicas e informações sobre a ração Golden Training!', 179.9, 161.91, 'https://images.petz.com.br/fotos/10002310000105_1775762789219.jpg', 15, 1, 1),
(3, 'Ração Golden Special para Cães Adultos Sabor Frango e Carne', '- Indicada para cães adultos;\r\n- Redução do odor das fezes, seleção de ingredientes especiais que auxiliam na redução do odor das fezes;\r\n- Blend de proteínas, máxima satisfação para o paladar;\r\n- Maior rendimento, ingredientes de alto aproveitamento;\r\n- Saúde e vitalidade, alimento de alta qualidade, rico em vitaminas e minerais;\r\n- Com antioxidantes naturais;\r\n- Disponível em embalagens de 15kg, leve 15 kg pague 14 kg e 20kg.', 'A ração Golden Special 15 kg é um alimento premium desenvolvido para atender às exigências nutricionais de cães na fase adulta. Formulada com ingredientes selecionados, como proteínas de origem animal, ela oferece um equilíbrio entre sabor e nutrição.\r\n\r\nDurante as refeições principais, como café da manhã e jantar, a ração Golden Special para cães adultos sabor frango e carne​ fornece os nutrientes essenciais para a manutenção da energia. Confira alguns benefícios:\r\n\r\n- contribui para a manutenção da energia diária, graças à combinação de proteínas e carboidratos que ajudam a sustentar as atividades do animal;\r\n- inclui nutrientes que auxiliam na saúde do trato digestivo, promovendo uma absorção eficiente dos componentes essenciais;\r\n- favorece a aparência da pelagem, com ingredientes que ajudam a manter o brilho e a maciez, refletindo o bem-estar interno do cão.\r\n\r\nIdentificar uma ração que alie composição balanceada e adaptação ao porte, como a Golden Special 15 kg, é um diferencial.', 159.9, 143.91, 'https://images.petz.com.br/fotos/10002310000032_1770146642399.jpg', 30, 1, 1),
(4, 'Ração Úmida GranPlus Gourmet Sachê para Cães Adultos Sabor Carne - 100g', '- Indicada para cães;\r\n- Alimento úmido 100% completo e balanceado;\r\n- Feito com deliciosos pedacinhos cozidos ao vapor;\r\n- Atende os paladares mais exigentes;\r\n- Não possui transgênicos, conservantes, aromas e corantes artificiais;\r\n- Contribui para a saúde do pelo: com ômega 6, zinco e vitamina A;\r\n- Auxilia na saúde intestinal: Com prebiótico MOS;\r\n- Disponível em embalagem com 100 g.', 'Um alimento saboroso que ainda auxilia na saúde intestinal do seu bichinho? É a ração Gran Plus cachorro! Ela possui uma fórmula que contribui para melhorar a qualidade de vida do pet. Por isso, é a escolha certa para a dieta do seu companheiro de quatro patas!\r\n\r\nConfira as principais vantagens em adquirir a ração para cachorro da Gran Plus:\r\n\r\n- Possui alta absorção de nutrientes;\r\n- Refeição completa e balanceada,\r\n- Sem conservantes artificiais.\r\n\r\nConheça mais sobre o produto e adquira já essa novidade para seu animalzinho de estimação!', 6.59, 3.39, 'https://images.petz.com.br/fotos/1673983416718.jpg', 10, 1, 1),
(5, 'Super Secão Tapete Higiênico para Cachorro 30 un', '- Indicado para cães;\r\n- Fofinho igual fralda de bebê;\r\n- Ideal para quem faz trocas menos frequentes do tapete no ambiente, com superabsorção;\r\n- Alças no pacote que facilitam para levar para qualquer lugar;\r\n- Gel superabsorvente;\r\n- Atrativo canino que faz com que o seu pet encontre o tapete e tenha vontade de fazer xixi nele;\r\n- Fitas adesivas em todas as extremidades do tapete, que podem ser coladas no piso ou na parede, caso seu pet levante a pata para fazer xixi;\r\n- Mantém a sua casa sempre limpa, sem patas molhadas pelo chão;\r\n- Disponível em embalagens com 30 unidades.', 'Quem tem um cachorro em casa sabe quanto é importante separar um cantinho especial para que ele faça as necessidades fisiológicas. Para facilitar os cuidados com a higiene e auxiliar na organização do lar, a Petix desenvolveu o SuperSecão!\r\n\r\nIndicado para cães de todos os portes e idades, o Tapete SuperSecão traz vantagens incríveis, como, por exemplo:\r\n\r\n- Poder de alta absorção e secagem rápida;\r\n- Abas laterais para vedação e fitas adesivas para fixação;\r\n- Atrativo canino para incentivar o uso.\r\n\r\nAlém de tudo isso, o produto atua no controle de odores para que o ambiente do seu melhor amigo fique sempre confortável e cheiroso.', 117.99, 99.99, 'https://images.petz.com.br/fotos/10031181000038_1777999839729.jpg', 8, 1, 1),
(6, 'Ração Golden para Gatos Adultos Castrados Sabor Salmão 1kg', '- Indicada para gatos adultos castrados;\r\n- Redução do odor das fezes, seleção de ingredientes especiais que auxiliam na redução do odor das fezes;\r\n- Controle do ganho de peso, contém L-carnitina e teores reduzidos de calorias e gorduras;\r\n- Trato urinário saudável, minerais balanceados e controle do pH urinário;\r\n- Sabor inigualável, máxima satisfação para o paladar;\r\n- Disponível em embalagens com 1kg.', 'A ração Golden para gato castrado é um alimento desenvolvido para atender às necessidades nutricionais de gatos adultos que passaram pelo processo de castração. Os benefícios incluem:\r\n\r\n- controle de peso com fórmula balanceada;\r\n- controle do pH urinário, contribuindo para reduzir riscos de problemas urinários comuns em felinos;\r\n- redução do odor das fezes com ingredientes específicos.\r\n\r\nEsse alimento reúne proteínas, minerais e nutrientes essenciais para a rotina do felino. Descubra mais sobre essa ração de salmão para gatos aqui, na Petz.', 44.5, 33.5, 'https://images.petz.com.br/fotos/1706727927063.jpg', 20, 1, 2),
(7, 'Areia Higiênica Viva Verde Grãos Finos para Gatos 4Kg', '- Indicada para gatos;\r\n- Areia preferida do encantador de gatos, jackson galaxy;\r\n- Torrão perfeito instantâneo;\r\n- Eliminação imediata e duradoura do odor da urina;\r\n- Sem poeira;\r\n- Melhor rendimento;\r\n- Zero desperdício;\r\n- Não forma lama;\r\n- Produzida com fontes renováveis (milho e mandioca);\r\n- Biodegradável;\r\n- Grãos finos para absorção ainda mais rápida;\r\n- Cor clara;\r\n- Remova todos os dias os torrões formados e faça a higienização total da caixa de areia;\r\n- Aprovada pelos veterinários;\r\n- Disponível em embalagem de 4 kg.', 'Que os felinos são pets exigentes e reservados os tutores já sabem. Por isso, um dos principais cuidados é proporcionar o maior bem-estar deles com uma areia higiênica de gato ideal para que possam se aliviar com o máximo conforto.  \r\n\r\nA areia para gato,daViva Verde!, agrada pets e tutores com vantagens como:\r\n\r\n- É produzida com fontes naturais e biodegradáveis;\r\n- Auxilia na diminuição do odor da urina do felino,\r\n- Possui torrões firmes com formação instantânea.', 69.9, 62.91, 'https://images.petz.com.br/fotos/1707319108148.jpg', 25, 1, 2),
(8, 'Areia Higiênica Pipicat Classic para Gatos 12Kg', '- Indicada para gatos;\r\n- Controle de odores superior com pipicat odor block;\r\n- Forma torrões mais firmes;\r\n- Fácil de limpar;\r\n- Grãos finos;\r\n- Sem fragrância;\r\n- Disponível em embalagem com 12kg', 'A organização e a limpeza do banheiro dos felinos devem ser uma tarefa diária. Assim, a areia Pipicat Classic é uma escolha estratégica para garantir um ambiente higienizado e livre de aromas desagradáveis.\r\n\r\nA areia para gato Pipicat Classic ajuda a conter odores fortes de forma natural, facilitando a rotina do responsável. Conheça alguns benefícios do produto:\r\n\r\n- absorção superior de líquidos;\r\n- torrões que facilitam a remoção dos resíduos;\r\n- casa livre de cheiros persistentes de urina.    ', 47.99, 43.19, 'https://images.petz.com.br/fotos/1713268716370.jpg', 12, 1, 2),
(9, 'Ração Úmida Royal Canin Lata Mother & Babycat Instinctive para Gatas Gestantes/Lactantes e Gatos Filhotes 195 g', '- Indicada para gatos filhotes;\r\n- Alimento inicial ideal para gatos filhotes: Textura de mousse ultra macia para facilitar a transição para alimentos sólidos;\r\n- Fortalecimento do sistema imunológico: apoia o desenvolvimento do sistema imunológico saudável do filhote;\r\n- Desenvolvimento do cérebro: enriquecido com ácido graxo ômega-3 (DHA) para apoiar o desenvolvimento cerebral do gato filhote e promover uma visão saudável;\r\n- Suporte do microbioma:  ajuda a promover um equilíbrio saudável da microbiota intestinal para a saúde digestiva;\r\n- Disponível em latas com 195 g.', 'Tutores mais experientes sabem que para ter um pet saudável é necessário que ele tenha a alimentação ideal, certo? Ciente da importância nutricional dos nossos companheiros, a ração Royal Canin gatos filhotes foi desenvolvida para que os felinos tenham o melhor desde pequenos.\r\nA ração úmida produzida para a primeira etapa de crescimento do pet, oferece vantagens como:\r\n\r\n- Maior palatabilidade;\r\n- Bom equilíbrio nutricional,\r\n- Ótima digestibilidade.', 22, 17, 'https://images.petz.com.br/fotos/1711639583526.jpg', 22, 1, 2),
(10, 'Purê Churu Atum e Salmão para Gatos 56g', '- Indicado para gatos;\r\n- Petisco cremoso feito com ingredientes aptos para o consumo humano;\r\n- Livre de grãos, corantes e conservantes artificiais;\r\n- Enriquecido com Taurina, Vitamina E e Extrato de Chá Verde;\r\n- Em embalagem com 4 tubos de 14g;\r\n- Disponível em embalagem de 56g.', 'Os felinos amam o Petisco Churu Atum e Salmão. E não é por acaso, já que essa versão do purê reúne a tradicional textura cremosa numa combinação de sabores que não tem erro. Elaborada com salmão do Pacífico, puro e natural, e atum selvagem, essa comidinha é um ótimo agrado para os bichanos de todas as idades.\r\n\r\nDesde que desembarcou em solo brasileiro, a marca japonesa de petisco Churu está fazendo o maior sucesso entre os tutores e gatinhos. Muito disso se deve aos diferentes benefícios dos snacks, como:\r\n\r\n- Petisco Churu para gato que promove interação entre pet e tutor;\r\n- Alimento baixo em calorias para evitar sobrepeso;\r\n- Embalagens com quatro sachês práticos de 14 g.', 24.99, 22.99, 'https://images.petz.com.br/fotos/20003280000111_1740159239287.jpg', 10, 1, 2),
(11, 'Medicamento Labcon Peixes Bacter', '- Indicado para peixes;\r\n- Ideal para peixes ornamentais;\r\n- Mantém o aquário e os pets livres de bactérias;\r\n- Composto por Sulfato de Neomicina, agente antimicrobiano,\r\n- A embalagem contém 10 capsulas 2,5 gr.', 'O Labcon Bacter nada maisé do que um medicamento para peixes composto com um antimicrobiano chamado Sulfato de Neomicina. Isso mesmo, um remédio para peixes! Isso porque eles também ficam doentes, especialmente se a água do aquário estiver suja.\r\n\r\nSim, é possível encontrar um peixe Betta doente. Nesse caso, o uso de um remédio pode ajudar a manter seu amigão nadador mais saudável; mais que isso: o aquário num todo também!\r\n\r\nConfira a seguir algumas das doenças causadas pelas bactérias de grupo gram-negativo:\r\n\r\n- Escamas com relevos;\r\n- Hemorragia;\r\n- Olhos saltados;\r\n- Feridas e bolhas sobre o corpo;\r\n- Mudança de cor;\r\n- Dificuldades para respirar;\r\n- Nadadeiras avermelhadas;\r\n- Coluna com má formação,\r\n- Nado irregular.', 27.9, 20.5, 'https://images.petz.com.br/fotos/1454964376656.jpg', 10, 1, 3),
(12, 'Cerâmica Ocean Tech para Aquários Bio Glass Mini 70g', '- Indicada para aquários;\r\n- Uma mídia filtrante de vidro sintetizado;\r\n- Altamente porosa chegando a 1500 m² por litro;\r\n- Atua na degradação das impurezas;\r\n- Melhora a qualidade da água e a saúde dos habitantes do aquário;\r\n- Com tamanho e formato especial;\r\n- Excelente fluxo e distribuição da água em filtros ou sumps;\r\n- É 30x mais eficiente do que as cerâmicas filtrantes convencionais, \r\n- Disponível em embalagem de 70 g.', 'Um aquarista responsável sabe o quanto é importante manter a manutenção de seu aquário sempre em dia. Se você faz parte desse grupo de criadores, chegou a hora de conhecer mais uma novidade, a cerâmica de aquário Bio Glass!\r\n\r\nPreparada por especialistas para o maior bem-estar dos nossos peixinhos, a cerâmica Bio Glass traz benefícios como:\r\n\r\n- Conta com alta porosidade para maior rendimento e economia;\r\n- Atua de maneira eficaz e segura na degradação de impurezas,\r\n- Contribui para a melhoria da qualidade da água no aquário. ', 13.99, 9.99, 'https://images.petz.com.br/fotos/1574198443165.jpg', 50, 1, 3),
(13, 'Ração Nutribetta Nutricon para Peixes 12g', '- Indicado para peixes;\r\n- Formulado à base de ingredientes de alta qualidade e digestibilidade;\r\n- Possui suplementação de aditivos nutricionais que estimulam o consumo e o realce das cores,\r\n- Disponível em embalagem com 12g.', 'Para que nossos peixinhos tenham uma vida saudável, é muito importante encontrar uma ração nutritiva para eles. Por isso, alimentos como o Nutribetta 12 g foram desenvolvidos para os nossos amigos de escamas terem uma dieta ideal!\r\n\r\nCom a qualidade e a confiança que só os alimentos da Nutricon podem oferecer, essa ração para peixes Betta traz diversas vantagens para eles. Algumas delas são:\r\n\r\n- Não tem corantes artificiais;\r\n- Contém vitaminas, probióticos e prebióticos;\r\n- Possui flocos de tamanho ideal.', 16.7, 11.9, 'https://images.petz.com.br/fotos/1635968782073.jpg', 15, 1, 3),
(14, 'Ração Alcon Guard Herbal para Peixe 25g', '- Indicada para peixes ornamentais;\r\n- Ideal para espécies tropicais e de águas fria;\r\n- Proporciona alimentação completa e balanceada;\r\n- Auxilia no equilíbrio da flora intestinal e melhora o aproveitamento nutricional;\r\n- Conta com ingredientes naturais como sálvia, alecrim, alho e hortelã,\r\n- Disponível em embalagem com 25 g.', 'Não há nada melhor do que ver nossos peixinhos bem alimentados e saudáveis, não é mesmo? Por isso, é muito importante escolher a comidinha certa, como a Alcon Guard Herbal, que traz floquinhos para peixes ornamentais!\r\n\r\nDesenvolvida por especialistas em nutrição e aquarismo, a ração Alcon Guard Herbal apresenta benefícios, como:\r\n\r\n- Indicada para diferentes espécies tropicais e de água fria;\r\n- Conta com ingredientes naturais como alecrim, sálvia, hortelã e alho,\r\n- Favorece o desenvolvimento da flora intestinal saudável. ', 22.3, 19.7, 'https://images.petz.com.br/fotos/1486402584198.jpg', 20, 1, 3),
(15, 'Alimento Poytara Peixes de Fundo 50g', '- Indicado para peixes de fundo;\r\n- Desenvolvido para pets com hábito onívoro/herbívoro;\r\n- Alimento extrusado de alta densidade;\r\n- Contém ingredientes que atuam como imunoestimulantes,\r\n- Disponível em embalagem com 50 g', 'Para quem se preocupa com o cuidado com os pets aquáticos, é muito importante tomar todas as medidas necessárias para promover o bem-estar. A ração da Poytara Peixes de Fundo é excelente para a nutrição de qualidade.\r\n\r\nElaborada com ingredientes específicos para as espécies, vitaminas e minerais essenciais, essa ração para peixes oferece uma série de benefícios. Os que mais se destacam são:\r\n\r\n- Nutrientes adequados para peixes onívoros, focando na dieta equilibrada;\r\n- Grânulos de alta densidade que afundam rapidamente, ficando acessíveis para os peixes de fundo;\r\n- Fortalecimento do sistema imunológico e realce da coloração natural dos peixes.', 23, 21.5, 'https://images.petz.com.br/fotos/1671043459368.jpg', 30, 1, 3),
(16, 'Ração Reino das Aves Gold Mix Calopsita para Pássaros 500g', '- Indicada para pássaros;\r\n- Alimento nutritivo e balanceado com grande variedade de ingredientes de alta qualidade;\r\n- Ideal para calopsita, agapornes, ring neck, rosella e red rumped\r\n- Contém chia, quinoa real e erva doce;\r\n- Contém vitaminas e minerais,\r\n- Disponível em embalagens com 500 g.', 'Os pássaros podem ter uma alimentação balanceada e nutritiva a partir da enorme variedade de grãos e sementes. Com a Gold Mix Calopsita, fica fácil escolher uma ração de alta qualidade, que combina ingredientes selecionados.\r\n\r\nA ração da Reino das Aves tem uma composição saborosa com chia, quinoa real e erva-doce, que apresentam grande propriedade nutritiva. Além disso, ela oferece muitos benefícios, como:\r\n\r\n- Pode ser consumida por pássaros de pequeno e médio porte;\r\n- Contém vitaminas e minerais;\r\n- Auxilia na prevenção do peito seco. ', 16.99, 13.99, 'https://images.petz.com.br/fotos/40013030000812_1730811259880.jpg', 30, 1, 4),
(17, 'Alimento Pássaro Petz Extrusado Natural para Calopsita 1,2 Kg', '- Indicado para calopsitas;\r\n- Alimento super premium;\r\n- Delicioso;\r\n- Menos sujeira quando comparado às versões com sementes;\r\n- Não contém corantes artificiais;\r\n- Com ômega 3, ômega 6 e minerais quelatados;\r\n- Uso de prebióticos e probióticos;\r\n- Disponível em embalagens de 1,2 kg.', 'Os pássaros, assim como outros pets, precisam de cuidados para manter a saúde. Uma dieta balanceada é um dos fatores mais importantes para garantir o bem-estar deles. Para oferecer uma opção de qualidade, apresentamos o alimento pássaro Petz extrusado natural para calopsita. \r\n\r\nEssa comida para calopsita foi desenvolvida para suprir as necessidades nutricionais da espécie. Portanto, contém as substâncias indispensáveis para o organismo do bichinho. Confira alguns dos principais benefícios dessa ração:\r\n\r\n- Contém vitaminas, minerais quelatados e ômega 3 e 6;\r\n- É livre de corantes artificiais;\r\n- Possui grãos em formatos adequados à espécie. ', 113.99, 102.59, 'https://images.petz.com.br/fotos/1725979925587.jpg', 10, 1, 4),
(18, 'Ração Extrusada Megazoo Am16 para Papagaio Regular', '- Indicada para papagaios;\r\n- Pode ser oferecida para outros psitacídeos de grande porte;\r\n- Alimentação completa para aves ornamentais;\r\n- Aumenta a expectativa de vida dos pets;\r\n- Proporciona mais nutrientes e minerais,\r\n- Disponível em embalagem com 600g.', 'As aves são, em sua maior parte, animais que representam a diversidade e a beleza da fauna brasileira. Por isso, muitas pessoas decidem tê-las como integrante de suas famílias e, para cuidá-las da melhor forma, é necessário oferecer uma alimentação de qualidade, como a ração de papagaio desenvolvida pela Megazoo.\r\n\r\nEsse alimento extrusado para pássaros é composto com os ingredientes que fornecem tudo o que esses animais precisam e oferecem algumas vantagens, como:\r\n\r\n- Mantém a coloração das penas;\r\n- É 100% natural;\r\n- Aumenta a expectativa de vida,\r\n- Cuida da musculatura e dos ossos do pet.', 65.99, 54.09, 'https://images.petz.com.br/fotos/1597781502178.jpg', 35, 1, 4),
(19, 'Ração Reino das Aves Néctar para Beija-flor 400g', '- Indicado para beija-flores;\r\n- Alimento natural e saudável\r\n- Enriquecido com vitaminas,\r\n- Disponível em embalagem com 400 g.', 'Não tem quem não ame um beija-flor, não é mesmo? Essas rápidas aves conquistam qualquer um quando aparecem para fazer uma visita surpresa em nossas casas. Para que elas apareçam ainda mais na sua casa, nada melhor do que o Néctar Beija-Flor Reino das Aves!\r\n\r\nEsse delicioso néctar não vai só levantar o seu humor de ver essas aves com mais frequência, bem como levar uma série de benefícios para elas! Confira algumas vantagens:\r\n\r\n- Feito com diversos tipos de vitaminas;\r\n- De fácil preparo,\r\n- Disponível em embalagem de 250 g. ', 21.99, 15.99, 'https://images.petz.com.br/fotos/40013030000776_1730810189220.jpg', 20, 1, 4),
(20, 'Vita Vet C Vetnil 30ml', '- Atua como um poderoso antioxidante, melhorando as funções fisiológicas do organismo do animal;\r\n- Uso interno (gotas);\r\n- É composto por glicose e vitamina C;\r\n- Disponível em embalagem com 30ml.', 'Assim como nós, os animaizinhos de estimação precisam de várias vitaminas para crescerem e viverem bem. Uma delas é a vitamina C que, quando presente no organismo, auxilia no funcionamento de diversas funções vitais e previne nossos companheiros de várias complicações. Pensando nisso, a Vetnil desenvolveu o Vita Vet C, um suplemento vitamínico de vitamina C Pet.\r\n\r\nEssa vitamina traz diversos benefícios para o organismo dos nossos amiguinhos, alguns deles são:\r\n\r\n- Prevenção de doenças cardiovasculares;\r\n\r\n- Melhor qualidade do sistema ocular;\r\n\r\n- Deixa o pet com um sistema imunológico mais resistente;\r\n\r\n- Fortalece os pelos;\r\n\r\n- Mantém a qualidade da pele;\r\n\r\n- Regula o metabolismo,\r\n\r\n- Combate efeitos de estresse.\r\n\r\nAlém de todos os benefícios, a vitamina C é um poderoso agente contra gripes e resfriados. Para os pets que possuem a imunidades baixa, ou então são mais sensíveis aos dias frios e chuvosos, a falta dessa substância pode acarretar em graves complicações.\r\n\r\nApesar de', 18, 14.9, 'https://images.petz.com.br/fotos/1663338587319.jpg', 40, 1, 4),
(21, 'Alimento Supra Funny Bunny Delícias da Horta para Roedores 1,8 Kg', '- Indicada para coelhos e pequenos roedores;\r\n- Alimentação completa e balanceada;\r\n- Formulada com alfafa verde e vitaminas A, C, D & do complexo B;\r\n- Proporciona melhor digestão e saúde à visão,\r\n- Disponível em embalagens com 1,8 kg.', 'Os coelhos e pequenos roedores se tornaram muito populares entre os tutores como companheiros. Porém, necessitam de cuidados assim como qualquer outro bichinho. E com a ração Funny Bunny, você nutre seu peludinho com um produto de alta qualidade.\r\n\r\nVeja as principais vantagens em oferecer essa ração para coelho para seu pet:\r\n\r\n- É elaborada a partir de vegetais nobres;\r\n- Proporciona uma dieta completa e balanceada,\r\n- Auxilia na visão e digestão do pet.', 54.99, 49.49, 'https://images.petz.com.br/fotos/1626379151598.jpg', 30, 1, 5),
(22, 'Granulado Higiênico de Madeira para Roedores Petz 10 Kg', '- Indicado para roedores;\r\n- Não machuca as patas;\r\n- Não suja as patas;\r\n- Fácil descarte;\r\n- Atóxico e esterilizado;\r\n- Sem aditivos químicos;\r\n- Elimina totalmente os odores,\r\n- Disponível em embalagem de 10 kg.', 'Para a gaiola do seu bichinho de estimação ficar completa, é preciso incluir o granulado higiênico de madeira para roedores da Petz. Oferecemos esse produto de muita qualidade para você garantir e proporcionar um espaço confortável ao seu peludinho.\r\n\r\nO granulado higiênico para hamster e outros roedores é tudo o que a gaiola do bichinho precisa. Ele ainda apresenta diversas vantagens, como:\r\n\r\n- Não machuca as patinhas;\r\n- Não possui aditivos químicos;\r\n- Não deixa odores. ', 69.99, 62.99, 'https://images.petz.com.br/fotos/40014180000088_1747913993369.jpg', 10, 1, 5),
(23, 'Ração Nutrópica Coelhos Adultos Natural 1,2 kg', '- Indicada para coelhos;\r\n- Oferece nutrição completa e balanceada;\r\n- Conta com a combinação de soja, alfafa, aveia e trigo integral;\r\n- Proporciona mais saúde e longevidade ao pet,\r\n- Disponível em embalagens de 1,2 kg.', 'Um tutor responsável sabe quanto é importante cuidar da alimentação de seu amigo peludo, não é mesmo? Se você procura a melhor opção de comida para coelho de estimação, chegou a hora de conhecer ração Nutrópica coelho!\r\n\r\nPreparada com muito carinho para nossos dentuços favoritos, a Nutrópica é uma ração super premium e possui benefícios como:\r\n\r\n- Apresenta fórmula extrusada com mais de 30 ingredientes diferentes;\r\n- Possui níveis adequados de nutrientes e vitaminas essenciais,\r\n- Dispensa transgênicos em sua composição.', 89.99, 80.99, 'https://images.petz.com.br/fotos/40013040000202_1752174237438.jpg', 25, 1, 5),
(24, 'Ração Nutrópica para Coelho Filhote 5Kg', '- Indicada para coelhos filhotes;\r\n- Alimentação completa e balanceada;\r\n- Proporciona um desenvolvimento saudável e equilibrado;\r\n- Ideal para coelhos desde o desmame até os 9 meses de idade;\r\n- Combinação de ingredientes nobres e saborosos,\r\n- Disponível em embalagens de 5 kg.', 'Coelhinhos são encantadores, não é? São um pouco diferentes dos pets mais comuns de estimação, mas não perdem em nada no charme, carinho e nos cuidados que devemos ter com eles. Além do ambiente em que vivem, é preciso uma ração como a Nutrópica coelho filhote, capaz de atender às necessidades nutricionais deles.\r\n\r\nA ração Nutrópica para coelho filhote tem tudo o que o seu pequenino precisa para crescer saudável, como:\r\n\r\n- É rica em fibras;\r\n- Mantém a pele e pelagem saudáveis,\r\n- Feita com ingredientes integrais. ', 336.99, 319.9, 'https://images.petz.com.br/fotos/40013040000080_1752252028883.jpg', 20, 1, 5),
(25, 'Ração Megazoo para Coelhos Ornamentais Adultos 500g', '- Indicada para coelhos;\r\n- Proporciona cuidado com os dentes;\r\n- Livre de cascas de arroz;\r\n- Nutrição completa com níveis adequados de nutrientes;\r\n- Conta com grãos integrais de cerais,\r\n- Disponível em embalagens com 500 g', 'Manter a saúde do coelho em dia é primordial para oferecer a esse pet longevidade e energia. Uma boa escolha de alimento é o Megazoo coelhos ornamentais, pois ele contém nutrientes que complementam as necessidades do peludo.\r\n\r\nSão muitas vantagens propostas pela ração Megazoo coelhos, como, por exemplo:\r\n\r\n- Possui pallets mais compactos para desgaste dos dentes;\r\n- É um alimento super premium,\r\n- Livre de ingredientes prejudiciais à saúde intestinal, como casca de arroz.', 48.99, 40.17, 'https://images.petz.com.br/fotos/1597842058419.jpg', 40, 1, 5),
(26, 'Casa Furacão para Cães Rosa', '- Indicada para cães de porte mini;\n- Fácil de montar e higienizar;\n- Confeccionada em material resistente;\n- Serve como casinha no inverno e caminha no verão,\n- Disponível nos tamanhos 1, 2, 3, 4, 5 e 6.', 'Ter um lugar agradável para seu cachorrinho descansar é fundamental. A casinha Furacão Pet traz todo esse conforto que seu amiguinho merece. Afinal, assim como nós, nossos bichinhos também precisam ter seu cantinho de descanso.\n\nDesenvolvida pela Furacão Pet, a casinha de cachorro é ideal para quem está à procura de um lugar confortável e espaçoso para seu animalzinho. Confira alguns benefícios do produto:\n\n- Confeccionada com material de alta resistência;\n- Disponível em diversos tamanhos,\n- Pode ser utilizada como casinha ou caminha.', 59.99, 49.99, 'https://images.petz.com.br/fotos/1443797555167.jpg', 12, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `senha`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '123', 'ADMIN'),
(2, 'Manuela', 'user@gmail.com', '123', 'USER');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
