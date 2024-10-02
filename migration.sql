--
-- Estrutura da tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `identificador` int(11) NOT NULL,
  `usuario` varchar(500) NOT NULL,
  `notificacao` varchar(500) NOT NULL,
  `quando` varchar(500) NOT NULL,
  `subscritores` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
