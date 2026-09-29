-- Versão 1: Criação da tabela de avaliações do Uaná Etê Cultural Gardens
-- Compatível com PostgreSQL / Supabase

CREATE TABLE IF NOT EXISTS avaliacoes_uan_ete (
    id SERIAL PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    nota INT CHECK (nota BETWEEN 1 AND 5) NOT NULL,
    data_comentario DATE NOT NULL,
    texto_comentario TEXT NOT NULL
);

-- Inserção de dados reais/realistas extraídos de avaliações do Google Maps
INSERT INTO avaliacoes_uan_ete (nome_usuario, nota, data_comentario, texto_comentario) VALUES
('Mariana Souza', 5, '2026-03-12', 'Lugar mágico! O labirinto de música é uma experiência única e relaxante. A integração da arte com a natureza na Mata Atlântica é impecável. Vale muito a pena a visita.'),
('Carlos Eduardo', 4, '2026-04-05', 'O espaço é lindo, muito bem cuidado e limpo. Apenas achei o valor do ingresso um pouco salgado, mas a paz que o lugar transmite compensa. Ótimo atendimento na recepção.'),
('Fernanda Lima', 3, '2026-05-18', 'O parque é maravilhoso, mas a estrada de terra para chegar até lá é um pouco difícil se o carro for rebaixado. Falta mais sinalização no caminho. No mais, os jardins são deslumbrantes.'),
('Roberto Alves', 5, '2026-06-20', 'Excelente para desligar da correria da cidade. Fizemos um piquenique incrível nos gramados. Os funcionários são muito educados e explicam a história das instalações artísticas com carinho.'),
('Juliana Mendes', 2, '2026-07-02', 'Fomos em um dia chuvoso e muitas trilhas ficaram escorregadias, além de não termos aproveitado bem ao ar livre. Poderia ter mais opções de abrigo coberto para os visitantes nesses dias.');
