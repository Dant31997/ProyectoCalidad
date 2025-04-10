CREATE TABLE `espacios` (
  `cod_espacio` int(100) NOT NULL,
  `nom_espacio` varchar(255) NOT NULL,
  `estado_espacio` enum('Libre','Ocupado') NOT NULL,
  `persona_encargada` varchar(255) NOT NULL,
  `dh_espacio` enum('-','lunes','martes','miercoles','jueves','viernes','sabado') NOT NULL,
  `dh_regreso` varchar(255) NOT NULL DEFAULT 'Libre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `espacios`
--

INSERT INTO `espacios` (`cod_espacio`, `nom_espacio`, `estado_espacio`, `persona_encargada`, `dh_espacio`, `dh_regreso`) VALUES
(4, 'Multiproposito 4', 'Libre', '-', '-', '-'),
(5, 'Polideportivo de la sede', 'Libre', '-', '-', '-'),
(6, 'Multiproposito 3', 'Libre', '-', '-', '-'),
(7, 'sdasd', 'Libre', '-', '-', '-'),
(8, 'asdasd', 'Libre', '-', '-', '-'),
(9, 'asdasd', 'Libre', '-', '-', '-'),
(10, 'asdasd', 'Libre', '-', '-', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `cod_inventario` int(100) NOT NULL,
  `nom_inventario` varchar(255) NOT NULL DEFAULT 'No asignado',
  `estado` enum('Libre','Prestado','Averiado') NOT NULL,
  `nombre_persona` varchar(255) NOT NULL,
  `diahora_p` date NOT NULL,
  `devolucion` varchar(50) NOT NULL DEFAULT 'No devuelto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`cod_inventario`, `nom_inventario`, `estado`, `nombre_persona`, `diahora_p`, `devolucion`) VALUES
(1, 'Portatil 1', 'Prestado', 'Daniel Alejandro Peña Estrella', '2023-11-09', 'No devuelto'),
(2, 'Tablet 1', 'Libre', '-', '0000-00-00', '0000-00-00'),
(3, 'Portatil 2', 'Prestado', 'Mariana Burbano', '2023-11-08', '2023-11-10'),
(4, 'Portatil 3', 'Libre', '-', '0000-00-00', '0000-00-00'),
(5, 'Tablet 2', 'Averiado', '-', '0000-00-00', '0000-00-00'),
(7, 'Portatil 9', 'Libre', '-', '0000-00-00', '0000-00-00'),
(8, 'Tablet 4', 'Libre', '-', '0000-00-00', '0000-00-00'),
(9, 'Portatil 5', 'Libre', '-', '0000-00-00', '0000-00-00'),
(13, 'a', 'Averiado', '-', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peticiones_estudiantes`
--

CREATE TABLE `peticiones_estudiantes` (
  `id` int(100) NOT NULL,
  `equipo` varchar(255) NOT NULL,
  `pide` varchar(255) NOT NULL,
  `estado_peticion` enum('Sin Revisar','Aprovada','Rechazada') NOT NULL DEFAULT 'Sin Revisar',
  `dia_entrega` varchar(255) NOT NULL DEFAULT 'YYYY-mm-dd',
  `dia_devolucion` varchar(255) NOT NULL DEFAULT 'No devuelto',
  `horario_prestamo` varchar(255) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peticiones_estudiantes`
--

INSERT INTO `peticiones_estudiantes` (`id`, `equipo`, `pide`, `estado_peticion`, `dia_entrega`, `dia_devolucion`, `horario_prestamo`) VALUES
(16, 'Portatil', 'Daniel Alejandro Peña Estrella', 'Sin Revisar', '2023-11-08', 'No devuelto', ''),
(17, 'Tablet', 'Daniel Alejandro Peña Estrella', 'Sin Revisar', '2023-11-08', 'No devuelto', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peticiones_profesores`
--

CREATE TABLE `peticiones_profesores` (
  `id` int(11) NOT NULL,
  `pide` varchar(255) NOT NULL,
  `equipo` varchar(255) NOT NULL DEFAULT 'No necesita',
  `sonido` varchar(255) NOT NULL DEFAULT 'No necesita',
  `estado_peticion` enum('Sin Revisar','Aprovada','Rechazada') NOT NULL DEFAULT 'Sin Revisar',
  `dia_entrega` varchar(255) NOT NULL DEFAULT '00-00-0000',
  `horario_prestamo` varchar(255) NOT NULL DEFAULT 'No aplica',
  `estado_prestamo` varchar(255) NOT NULL DEFAULT 'No devuelto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peticiones_profesores`
--

INSERT INTO `peticiones_profesores` (`id`, `pide`, `equipo`, `sonido`, `estado_peticion`, `dia_entrega`, `horario_prestamo`, `estado_prestamo`) VALUES
(1, 'Andrea Pelaez', 'Portatil', 'No', 'Sin Revisar', '2023-12-04', '7 am - 10 am', 'No devuelto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pet_prof_espacios`
--

CREATE TABLE `pet_prof_espacios` (
  `id` int(11) NOT NULL,
  `pide` varchar(255) NOT NULL,
  `espacio` varchar(255) NOT NULL,
  `adicional` varchar(255) NOT NULL DEFAULT 'No necesita',
  `estado_peticion` enum('Sin Revisar','Aprovada','Rechazada') NOT NULL DEFAULT 'Sin Revisar',
  `dia_entrega` varchar(255) NOT NULL,
  `devolvio` varchar(255) NOT NULL,
  `horario_prestamo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pet_prof_espacios`
--

INSERT INTO `pet_prof_espacios` (`id`, `pide`, `espacio`, `adicional`, `estado_peticion`, `dia_entrega`, `devolvio`, `horario_prestamo`) VALUES
(1, 'Andrea Pelaez', 'Salon', 'No necesita', 'Sin Revisar', '2023-12-04', '', '7 am - 10 am'),
(2, 'Andrea Pelaez', 'Salon', 'No necesita', 'Sin Revisar', '2023-12-04', '', '7 am - 10 am');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `contrasena` varchar(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rol` enum('Estudiante','Profesor','Administrador','Supervisor') NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `nacionalidad` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `contrasena`, `nombre`, `rol`, `ciudad`, `nacionalidad`) VALUES
(1, 'admin', 'admin', 'Administrador', 'Administrador', 'cali', ''),
(2, 'AP1234', '123456', 'Andrea Pelaez', 'Profesor', '', ''),
(3, 'CR123', '1234', 'Carlos Rodallega', 'Profesor', '', ''),
(4, 'DIPR123', '123456', 'Dilan Ivan Palta Reyes', 'Estudiante', '', ''),
(7, 'JS123', '1234', 'Jorge Soliz', 'Profesor', '', ''),
(8, 'MJ123', '1234', 'Maryani Jajoy', 'Profesor', '', ''),
(9, 'wr123', '1234', 'Wilson Ramirez', 'Profesor', '', ''),
(10, 'ZP123', 'dzapatA', 'Zuley Zapata', 'Estudiante', '', ''),
(16, 'DP123', '1234', 'Daniel Alejandro Peña Estrella', 'Estudiante', '', ''),
(20, 'MB123', '1234', 'Mariana Andrea Burbano Salazar', 'Profesor', '', ''),
(22, 'MB2002', '1234', 'Mariana Andrea Burbano Salazar', 'Estudiante', '', ''),
(24, 'DanPE', '1234', 'Daniel Alejandro Peña Estrella', 'Supervisor', '', ''),
(26, 'DilanP', '1234', 'Dilan Ivan Palta Reyes', 'Supervisor', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `espacios`
--
ALTER TABLE `espacios`
  ADD PRIMARY KEY (`cod_espacio`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`cod_inventario`);

--
-- Indices de la tabla `peticiones_estudiantes`
--
ALTER TABLE `peticiones_estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peticiones_profesores`
--
ALTER TABLE `peticiones_profesores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pet_prof_espacios`
--
ALTER TABLE `pet_prof_espacios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `espacios`
--
ALTER TABLE `espacios`
  MODIFY `cod_espacio` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `cod_inventario` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `peticiones_estudiantes`
--
ALTER TABLE `peticiones_estudiantes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `peticiones_profesores`
--
ALTER TABLE `peticiones_profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pet_prof_espacios`
--
ALTER TABLE `pet_prof_espacios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

