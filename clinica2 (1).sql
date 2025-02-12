DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE `bitacora` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint(20) unsigned NOT NULL,
  `chequeo_id` bigint(20) unsigned NOT NULL,
  `observaciones` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bitacora_paciente_id_foreign` (`paciente_id`),
  KEY `bitacora_tratamiento_id_foreign` (`chequeo_id`),
  CONSTRAINT `bitacora_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `patients` (`id`),
  CONSTRAINT `bitacora_tratamiento_id_foreign` FOREIGN KEY (`chequeo_id`) REFERENCES `tratamientos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `consentimientos_informados`;
CREATE TABLE `consentimientos_informados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `medico_id` bigint(20) unsigned NOT NULL,
  `patient_id` bigint(20) unsigned NOT NULL,
  `contenido` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consentimientos_informados_medico_id_foreign` (`medico_id`),
  KEY `consentimientos_informados_patient_id_foreign` (`patient_id`),
  CONSTRAINT `consentimientos_informados_medico_id_foreign` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`),
  CONSTRAINT `consentimientos_informados_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('1', '1', '8', 'Consentimiento Informado para Procedimientos Odontológicos\r\n                    ...', '2024-10-17 03:04:29', '2024-10-17 03:04:29');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('2', '1', '8', 'Consentimiento Informado para Procedimientos Odontológicos\r\n                    ...', '2024-10-17 03:16:51', '2024-10-17 03:16:51');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('3', '1', '10', 'Consentimiento Informado para Procedimientos Odontológicos\r\n                    ...', '2024-10-17 03:18:20', '2024-10-17 03:18:20');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('8', '1', '10', 'Consentimiento Informado para Procedimientos Odontológicos\r\n\r\nFecha: 17/10/2024\r\n\r\nYo, [Nombre del Paciente], identificado con cédula de identidad número [Número de Identidad], por medio de la presente doy mi consentimiento para la realización de los procedimientos odontológicos que se me han explicado.\r\n\r\nDescripción del Procedimiento:\r\nSe me ha informado sobre los procedimientos que se realizarán, que pueden incluir, pero no se limitan a:\r\n- Exámenes clínicos.\r\n- Radiografías.\r\n- Tratamientos preventivos y restaurativos.\r\n- Extracciones dentales.\r\n- Procedimientos quirúrgicos.\r\n\r\nRiesgos Potenciales:\r\nSe me ha explicado que, como en cualquier procedimiento médico, pueden surgir riesgos, tales como:\r\n- Infecciones.\r\n- Sangrado.\r\n- Reacciones adversas a la anestesia.\r\n- Dolor o molestias postoperatorias.\r\n\r\nBeneficios Esperados:\r\nEl objetivo de estos procedimientos es mejorar mi salud dental y prevenir problemas futuros, lo que puede incluir:\r\n- Alivio del dolor.\r\n- Restauración de dientes dañados.\r\n- Prevención de enfermedades orales.\r\n\r\nDerecho a Retirarme:\r\nEntiendo que tengo el derecho a retirar mi consentimiento en cualquier momento antes del procedimiento.\r\n\r\nFirma del Paciente: __________________________\r\n\r\nFirma del Médico: __________________________', '2024-10-17 04:39:11', '2024-10-17 04:39:11');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('9', '2', '10', 'Consentimiento Informado para Procedimientos Odontológicos\r\n\r\nFecha: 17/10/2024\r\n\r\nYo, [Nombre del Paciente], identificado con cédula de identidad número [Número de Identidad], por medio de la presente doy mi consentimiento para la realización de los procedimientos odontológicos que se me han explicado.\r\n\r\nDescripción del Procedimiento:\r\nSe me ha informado sobre los procedimientos que se realizarán, que pueden incluir, pero no se limitan a:\r\n- Exámenes clínicos.\r\n- Radiografías.\r\n- Tratamientos preventivos y restaurativos.\r\n- Extracciones dentales.\r\n- Procedimientos quirúrgicos.\r\n\r\nRiesgos Potenciales:\r\nSe me ha explicado que, como en cualquier procedimiento médico, pueden surgir riesgos, tales como:\r\n- Infecciones.\r\n- Sangrado.\r\n- Reacciones adversas a la anestesia.\r\n- Dolor o molestias postoperatorias.\r\n\r\nBeneficios Esperados:\r\nEl objetivo de estos procedimientos es mejorar mi salud dental y prevenir problemas futuros, lo que puede incluir:\r\n- Alivio del dolor.\r\n- Restauración de dientes dañados.\r\n- Prevención de enfermedades orales.\r\n\r\nDerecho a Retirarme:\r\nEntiendo que tengo el derecho a retirar mi consentimiento en cualquier momento antes del procedimiento.\r\n\r\nFirma del Paciente: __________________________\r\n\r\nFirma del Médico: __________________________', '2024-10-17 04:39:30', '2024-10-17 04:39:30');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('14', '9', '9', 'Consentimiento Informado para Procedimientos Odontológicos\r\n                    ...', '2024-10-26 14:13:39', '2024-10-26 14:13:39');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('15', '2', '9', 'Consentimiento Informado para Procedimientos Odontológicos\r\n                    ...', '2024-10-26 14:13:52', '2024-10-26 14:13:52');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('16', '2', '1', 'Consentimiento Informado para Procedimientos Odontológicos\r\n                    ...', '2024-10-27 14:37:54', '2024-10-27 14:37:54');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('17', '1', '1', 'consentimiento', '2024-10-27 15:11:14', '2024-10-27 15:11:14');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('18', '1', '1', 'consentimiento', '2024-10-27 15:11:53', '2024-10-27 15:11:53');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('19', '1', '21', 'consentimiento', '2024-11-03 17:05:11', '2024-11-03 17:05:11');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('20', '2', '1', 'consentimiento', '2024-11-04 14:13:00', '2024-11-04 14:13:00');
INSERT INTO `consentimientos_informados` (`id`, `medico_id`, `patient_id`, `contenido`, `created_at`, `updated_at`) VALUES ('22', '9', '1', 'consentimiento', '2024-12-01 10:29:41', '2024-12-01 10:29:41');

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE `consultas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `tratamiento_dental_id` bigint(20) unsigned DEFAULT NULL,
  `plan_atencion` varchar(255) DEFAULT NULL,
  `motivo_consulta` text DEFAULT NULL,
  `diagnostico` text DEFAULT NULL,
  `tratamiento_propuesto` text DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `presion_arterial` varchar(255) DEFAULT NULL,
  `pulso` varchar(255) DEFAULT NULL,
  `temperatura` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consultas_patient_id_foreign` (`patient_id`),
  KEY `consultas_tratamiento_dental_id_foreign` (`tratamiento_dental_id`),
  CONSTRAINT `consultas_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `consultas_tratamiento_dental_id_foreign` FOREIGN KEY (`tratamiento_dental_id`) REFERENCES `tratamientos_dentales` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('1', '2', '', '', 'prueba consulta paciente 1', 'prueba 1', 'prueba', 'ninguna', '', '', '', '2024-11-07 03:15:35', '2024-11-07 03:15:35');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('2', '1', '', '', 'dolor de muela', 'el paciente presento un dolor de muela en la parte inferior de la mandibula', 'se le receto al paciente tener una mejor higiene bucal', 'ninguna por el momento', '', '', '', '2024-11-07 04:26:43', '2024-11-07 04:26:43');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('3', '1', '', '', 'sangrado de encias', 'el paciente presenta placa bacteriana en abudancia y requiere una limpieza buscal', 'limpiza dental completa', 'el paciente presento sangrado durante la sesion', '', '', '', '2024-11-07 04:32:09', '2024-11-07 04:32:09');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('4', '17', '4', '', 'consulto con odontograma', 'diagnostico con dontograma', 'diagnostico con odontograma', 'observacion con odontograma', '', '', '', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('5', '1', '1', '', 'Limpieza Dental', 'Seis mese sin una limpieza', 'Limpieza profunda', 'Necesitara rellenos', '120/70', '78 bpm', '36°C', '2024-11-13 19:39:20', '2024-11-13 19:39:20');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('6', '2', '7', '', 'Dolor de muela cordal final', 'estaba dañada', 'extraccion completa', 'se realizo extraccion completa de la muela', '125/45', '78 bpm', '37°C', '2024-11-13 20:47:58', '2024-11-13 20:47:58');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('7', '1', '6', '', 'rellenos iniciales', 'Vino a realizarse rellenos iniciales encontrados en la primera consulta', 'rellenos con resina base', 'estos son los dos primeros rellenos que se realizan al paciente hasta la fecha', '', '', '', '2024-11-13 20:56:03', '2024-11-13 20:56:03');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('8', '2', '2', '', 'rellenos', 'rellenos', 'rellenos', 'rellenos', '', '', '', '2024-11-13 20:57:58', '2024-11-13 20:57:58');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('9', '2', '6', '', 'relleno', 'relleno', 'relleno', 'relleno', '', '', '', '2024-11-13 21:03:40', '2024-11-13 21:03:40');
INSERT INTO `consultas` (`id`, `patient_id`, `tratamiento_dental_id`, `plan_atencion`, `motivo_consulta`, `diagnostico`, `tratamiento_propuesto`, `observaciones`, `presion_arterial`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('10', '1', '1', '', 'dolor de dientes', 'dolor de muelas', 'dolor de muelas', 'ninguna', '120/40', '65 bpm', '45°C', '2024-12-01 10:26:46', '2024-12-01 10:26:46');

DROP TABLE IF EXISTS `enfermedades_comunes`;
CREATE TABLE `enfermedades_comunes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `hipertension` varchar(255) DEFAULT NULL,
  `diabetes` varchar(255) DEFAULT NULL,
  `hemofilia` varchar(255) DEFAULT NULL,
  `tumor_labio` varchar(255) DEFAULT NULL,
  `medicamento` varchar(255) DEFAULT NULL,
  `tumor_cervico` varchar(255) DEFAULT NULL,
  `sindrome_down` varchar(255) DEFAULT NULL,
  `tumor_mama` varchar(255) DEFAULT NULL,
  `tumor_pulmon` varchar(255) DEFAULT NULL,
  `autismo` varchar(255) DEFAULT NULL,
  `tumor_colon` varchar(255) DEFAULT NULL,
  `tumor_estomago` varchar(255) DEFAULT NULL,
  `paralisis` varchar(255) DEFAULT NULL,
  `erc` varchar(255) DEFAULT NULL,
  `cardiopatia` varchar(255) DEFAULT NULL,
  `endocarditis` varchar(255) DEFAULT NULL,
  `otros` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enfermedades_comunes_patient_id_foreign` (`patient_id`),
  CONSTRAINT `enfermedades_comunes_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('1', '29', 'no', 'no', 'no', 'no', 'dolofin', 'no', 'no', 'si', 'si', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2024-11-03 02:21:11', '2024-11-03 02:21:11');
INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('2', '30', 'no', 'no', 'no', 'no', 'dolofin', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2024-11-03 02:23:56', '2024-11-03 02:23:56');
INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('3', '31', 'no', 'no', 'si', 'no', 'panadol', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'si', 'no', 'no', 'no', '2024-11-03 15:55:31', '2024-11-03 15:55:31');
INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('4', '32', 'no', 'no', 'si', 'si', 'dolofin', 'no', 'si', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'si', 'si', 'si', '2024-11-07 19:58:42', '2024-11-07 19:58:42');
INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('5', '33', 'si', 'si', 'si', 'no', 'dolofin', 'no', 'si', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2024-11-07 20:15:12', '2024-11-07 20:15:12');
INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('6', '34', 'no', 'no', 'no', 'no', 'dolofin', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'si', '2024-12-01 10:40:39', '2024-12-01 10:40:39');
INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('7', '38', 'no', 'no', 'no', 'no', 'dolofin', 'si', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2024-12-01 21:23:43', '2024-12-01 21:23:43');
INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('8', '39', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2024-12-01 21:25:18', '2024-12-01 21:25:18');
INSERT INTO `enfermedades_comunes` (`id`, `patient_id`, `hipertension`, `diabetes`, `hemofilia`, `tumor_labio`, `medicamento`, `tumor_cervico`, `sindrome_down`, `tumor_mama`, `tumor_pulmon`, `autismo`, `tumor_colon`, `tumor_estomago`, `paralisis`, `erc`, `cardiopatia`, `endocarditis`, `otros`, `created_at`, `updated_at`) VALUES ('9', '41', 'no', 'no', 'no', 'no', 'dolofin', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2024-12-01 21:59:50', '2024-12-01 21:59:50');

DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `especialidades` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('1', 'Endodoncias', 'Practicamente muy buena', '', '2024-09-22 15:47:53');
INSERT INTO `especialidades` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('3', 'Cirugia Bocal', 'Importante prueba', '2024-09-18 03:54:53', '2024-10-20 16:35:22');
INSERT INTO `especialidades` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('14', 'pediatria', 'pediatria', '2024-10-24 14:36:07', '2024-10-24 14:36:07');

DROP TABLE IF EXISTS `evaluacion_regionals`;
CREATE TABLE `evaluacion_regionals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `condicion` text DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluacion_regional_patient_id_foreign` (`patient_id`),
  CONSTRAINT `evaluacion_regional_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('1', '8', 'ganglios', 'normal', 'ninguno', '2024-10-04 00:17:50', '2024-10-04 00:17:50');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('2', '9', 'dientes', 'anormal', 'por el momento el paciente tiene una condicion anormal', '2024-10-05 20:03:47', '2024-10-05 20:03:47');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('3', '10', 'dientes', 'anormal', 'lesion cariosa extensa con compromiso pulpar', '2024-10-05 20:39:18', '2024-10-05 20:39:18');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('4', '17', 'dientes', 'normal', 'ninguna', '2024-10-15 01:18:50', '2024-10-15 01:18:50');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('5', '18', 'dientes', 'normal', 'ninguna', '2024-10-15 01:21:51', '2024-10-15 01:21:51');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('6', '19', 'ganglios', 'normal', 'prueba', '2024-10-15 01:24:32', '2024-10-15 01:24:32');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('7', '20', 'ganglios', 'normal', 'ninguna', '2024-10-29 15:44:37', '2024-10-29 15:44:37');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('8', '21', 'dientes', 'normal', '', '2024-10-29 15:46:42', '2024-10-29 15:46:42');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('9', '22', 'ganglios', 'normal', 'ninhuna', '2024-10-30 03:46:52', '2024-10-30 03:46:52');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('16', '29', 'ganglios', 'normal', 'ninguna', '2024-11-03 02:21:11', '2024-11-03 02:21:11');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('17', '30', 'dientes', 'normal', 'ninguna', '2024-11-03 02:23:56', '2024-11-03 02:23:56');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('18', '31', 'dientes', 'normal', 'todo bien', '2024-11-03 15:55:31', '2024-11-03 15:55:31');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('19', '32', 'dientes', 'normal', 'ninguna', '2024-11-07 19:58:42', '2024-11-07 19:58:42');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('20', '33', 'dientes', 'normal', 'ninguna', '2024-11-07 20:15:12', '2024-11-07 20:15:12');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('21', '34', 'ganglios', 'normal', 'ninguna', '2024-12-01 10:40:39', '2024-12-01 10:40:39');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('25', '38', 'lengua', 'normal', 'ninguna', '2024-12-01 21:23:43', '2024-12-01 21:23:43');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('26', '39', 'dientes', 'normal', '', '2024-12-01 21:25:18', '2024-12-01 21:25:18');
INSERT INTO `evaluacion_regionals` (`id`, `patient_id`, `region`, `condicion`, `observacion`, `created_at`, `updated_at`) VALUES ('28', '41', 'dientes', 'normal', 'ninguna', '2024-12-01 21:59:50', '2024-12-01 21:59:50');

DROP TABLE IF EXISTS `evaluacion_sistemicas`;
CREATE TABLE `evaluacion_sistemicas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `historia_enfermedad` text DEFAULT NULL,
  `historia_medica_personal` text DEFAULT NULL,
  `antecedentes_medicos_familiares` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluacion_sistematica_patient_id_foreign` (`patient_id`),
  CONSTRAINT `evaluacion_sistematica_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('3', '8', 'no', 'no', 'no', '2024-10-04 00:17:50', '2024-10-04 00:17:50');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('4', '9', 'prueba paciente', 'prueba paciente', 'prueba paciente', '2024-10-05 20:03:47', '2024-10-05 20:03:47');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('5', '10', 'refeire dolor desde hace dos dias', 'sistemicamente estable a la fecha', 'diabetes, hipertencion', '2024-10-05 20:39:18', '2024-10-05 20:39:18');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('12', '17', 'wwwww', 'wwwwwww', 'wwwwww', '2024-10-15 01:18:50', '2024-10-15 01:18:50');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('13', '18', 'cccccc', 'no tiene', 'no cuenta con atecedentes', '2024-10-15 01:21:51', '2024-10-15 01:21:51');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('14', '19', 'prueba', 'prueba', 'prueba', '2024-10-15 01:24:32', '2024-10-15 01:24:32');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('15', '20', '', '', '', '2024-10-29 15:44:37', '2024-10-29 15:44:37');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('16', '21', '', '', '', '2024-10-29 15:46:42', '2024-10-29 15:46:42');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('17', '22', 'ninguna', 'ninguna', 'ninguna', '2024-10-30 03:46:52', '2024-10-30 03:46:52');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('24', '29', 'nin32345yt43', 'ewrtyrewewrty', 'ertytrewrty', '2024-11-03 02:21:11', '2024-11-03 02:21:11');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('25', '30', '', '', '', '2024-11-03 02:23:56', '2024-11-03 02:23:56');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('26', '31', 'ninguna', 'ninguna', 'ninguna', '2024-11-03 15:55:31', '2024-11-03 15:55:31');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('27', '32', 'prueba', 'ninguna', 'ninguna', '2024-11-07 19:58:42', '2024-11-07 19:58:42');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('28', '33', '', '', '', '2024-11-07 20:15:12', '2024-11-07 20:15:12');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('29', '34', 'ninguna', 'ninguna', 'ninguna', '2024-12-01 10:40:39', '2024-12-01 10:40:39');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('33', '38', '', '', '', '2024-12-01 21:23:43', '2024-12-01 21:23:43');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('34', '39', '', '', '', '2024-12-01 21:25:18', '2024-12-01 21:25:18');
INSERT INTO `evaluacion_sistemicas` (`id`, `patient_id`, `historia_enfermedad`, `historia_medica_personal`, `antecedentes_medicos_familiares`, `created_at`, `updated_at`) VALUES ('36', '41', '', '', '', '2024-12-01 21:59:50', '2024-12-01 21:59:50');

DROP TABLE IF EXISTS `examenes_clinicos`;
CREATE TABLE `examenes_clinicos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `examen_extraoral` text DEFAULT NULL,
  `examen_intraoral` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `examenes_clinicos_patient_id_foreign` (`patient_id`),
  CONSTRAINT `examenes_clinicos_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('2', '8', 'no', 'no', '2024-10-04 00:17:50', '2024-10-04 00:17:50');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('3', '9', 'prueba examen clinico extraoral', 'prueba examen clinico intraoral', '2024-10-05 20:03:47', '2024-10-05 20:03:47');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('4', '10', 'normal', 'lesion cariosa extensa', '2024-10-05 20:39:18', '2024-10-05 20:39:18');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('11', '17', 'wwww', 'wwwwwww', '2024-10-15 01:18:50', '2024-10-15 01:18:50');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('12', '18', 'ninguna', 'ninguan', '2024-10-15 01:21:51', '2024-10-15 01:21:51');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('13', '19', 'prueba', 'prueba', '2024-10-15 01:24:32', '2024-10-15 01:24:32');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('14', '20', '', '', '2024-10-29 15:44:37', '2024-10-29 15:44:37');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('15', '21', '', '', '2024-10-29 15:46:42', '2024-10-29 15:46:42');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('16', '22', 'ninguna', 'ninguna', '2024-10-30 03:46:52', '2024-10-30 03:46:52');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('23', '29', 'ertyhgfdsdfgh', 'ertytrewrty', '2024-11-03 02:21:11', '2024-11-03 02:21:11');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('24', '30', '', '', '2024-11-03 02:23:56', '2024-11-03 02:23:56');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('25', '31', 'ninguna', 'ninguna', '2024-11-03 15:55:31', '2024-11-03 15:55:31');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('26', '32', 'ninguno', 'ninguna', '2024-11-07 19:58:42', '2024-11-07 19:58:42');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('27', '33', '', '', '2024-11-07 20:15:12', '2024-11-07 20:15:12');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('28', '34', 'ninguna', 'ninguna', '2024-12-01 10:40:39', '2024-12-01 10:40:39');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('32', '38', '', '', '2024-12-01 21:23:43', '2024-12-01 21:23:43');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('33', '39', '', '', '2024-12-01 21:25:18', '2024-12-01 21:25:18');
INSERT INTO `examenes_clinicos` (`id`, `patient_id`, `examen_extraoral`, `examen_intraoral`, `created_at`, `updated_at`) VALUES ('35', '41', '', '', '2024-12-01 21:59:50', '2024-12-01 21:59:50');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `medicos`;
CREATE TABLE `medicos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `especialidad_id` bigint(20) unsigned NOT NULL,
  `sexo_id` bigint(20) unsigned NOT NULL,
  `password` varchar(255) NOT NULL,
  `dui` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `LicenseNumber` varchar(4) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medicos_email_unique` (`email`),
  UNIQUE KEY `medicos_dui_unique` (`dui`),
  UNIQUE KEY `medicos_licensenumber_unique` (`LicenseNumber`),
  KEY `medicos_especialidad_id_foreign` (`especialidad_id`),
  KEY `medicos_sexo_id_foreign` (`sexo_id`),
  CONSTRAINT `medicos_especialidad_id_foreign` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidades` (`id`),
  CONSTRAINT `medicos_sexo_id_foreign` FOREIGN KEY (`sexo_id`) REFERENCES `sexos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `medicos` (`id`, `name`, `email`, `especialidad_id`, `sexo_id`, `password`, `dui`, `edad`, `LicenseNumber`, `address`, `phone`, `created_at`, `updated_at`) VALUES ('1', 'nombre', 'jimyyy@gmail.com', '1', '1', '$2y$12$8EJUB.gEm3k9YHp5ORcuquP.wMntjVb8XtMf17B4sOx6o3e20wZr.', '12345678', '23', '2345', 'prueba prueba', '+503 12345678', '2024-10-03 02:43:10', '2024-10-04 01:05:57');
INSERT INTO `medicos` (`id`, `name`, `email`, `especialidad_id`, `sexo_id`, `password`, `dui`, `edad`, `LicenseNumber`, `address`, `phone`, `created_at`, `updated_at`) VALUES ('2', 'nombre prueba medico', 'medico@gmail.com', '1', '1', '$2y$12$oSv/RdejKpnYsiLxNH1YjODOwIZ2bbsTiP4SUxBR2EHyEkCOBYeaq', '12345666', '23', '2323', 'direccion prueba', '+503 55555555', '2024-10-04 01:15:08', '2024-10-14 02:07:13');
INSERT INTO `medicos` (`id`, `name`, `email`, `especialidad_id`, `sexo_id`, `password`, `dui`, `edad`, `LicenseNumber`, `address`, `phone`, `created_at`, `updated_at`) VALUES ('9', 'Orlando Mendoza', 'orlandomendoza@gmail.com', '1', '1', '$2y$12$2nAtlEELmRhsf/DSVjf5u.qmQ8OIhdVSrkQwMB/cZFHITjAZm0LkC', '45454545', '23', '3434', 'direccion falsa xd', '+503 34343434', '2024-10-17 18:21:10', '2024-10-17 18:21:10');
INSERT INTO `medicos` (`id`, `name`, `email`, `especialidad_id`, `sexo_id`, `password`, `dui`, `edad`, `LicenseNumber`, `address`, `phone`, `created_at`, `updated_at`) VALUES ('11', 'nombre prueba', 'jimy12123@gmail.com', '1', '1', '$2y$12$1g8qPZtofzwtSx6xuR3Y2.mbSbFWwIjaXDTJ3h7P9ksK8XGTRZ0.a', '23232323-2', '23', '2324', 'qwertyujhbv3', '+503 23232323', '2024-10-17 19:23:21', '2024-10-17 19:23:21');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('2', '2014_10_12_100000_create_password_reset_tokens_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('3', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('4', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('5', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('6', '2024_09_16_020322_create_roles_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('7', '2024_09_17_021652_create_especialidads_table', '2');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('8', '2024_09_17_022758_create_especialidades_table', '3');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('9', '2024_09_18_031916_create_especialidades_table', '4');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('10', '2024_09_22_025241_create_patients_table', '5');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('11', '2024_09_22_061051_create_patients_table', '6');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('12', '2024_09_23_192717_create_sexos_table', '7');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('13', '2024_09_23_192842_create_medicos_table', '8');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('14', '2024_09_28_233933_create_evaluacion_sistemica_table', '9');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('15', '2024_09_28_233947_create_signos_vitales_table', '9');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('16', '2024_09_28_233957_create_evaluacion_clinica_table', '9');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('17', '2024_09_25_021109_create_patient_evaluations_table', '10');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('18', '2024_09_29_022237_create_evaluacion_sistematica_table', '10');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('19', '2024_09_29_022302_create_signos_vitales_table', '10');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('20', '2024_09_29_022433_create_examenes_clinicos_table', '10');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('21', '2024_09_29_022447_create_evaluacion_regional_table', '10');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('22', '2024_10_02_223017_create_medicos_table', '11');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('23', '2024_10_03_002513_create_medicos_table', '12');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('24', '2024_10_03_220912_add_expediente_to_patients_table', '13');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('25', '2024_10_03_222546_create_patients_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('26', '2024_10_06_023737_create_teeth_table', '14');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('27', '2024_10_13_141013_create_enfermedades_cronicas_table', '15');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('28', '2024_10_13_151644_create_enfermedades_cronicas_table', '16');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('29', '2024_10_16_042150_create_odontogramas_table', '17');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('30', '2024_10_17_021029_create_consentimientos_informados_table', '18');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('31', '2024_10_17_030329_create_consentimientos_informados_table', '19');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('32', '2024_10_21_161544_create_tratamientos_table', '20');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('33', '2024_10_21_161553_create_odontograma_table', '20');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('34', '2024_10_23_162759_create_odontograma_table', '21');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('35', '2024_10_30_035734_create_odontograma_inicial_table', '22');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('36', '2024_11_03_004450_create_enfermedades_comunes_table', '23');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('37', '2024_11_03_012817_create_enfermedades_comunes_table', '24');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('38', '2024_11_03_034158_create_bitacora_table', '25');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('39', '2024_11_03_041549_create_tratamientos_table', '26');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('40', '2024_11_07_013543_create_consultas_table', '27');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('41', '2024_11_07_022228_create_tratamientos_dentales_table', '28');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('42', '2024_11_07_022944_create_consultas_table', '29');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('43', '2024_11_06_022538_create_treatments_table', '30');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('44', '2024_11_13_193754_add_vital_signs_to_consultas_table', '31');

DROP TABLE IF EXISTS `odontograma`;
CREATE TABLE `odontograma` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint(20) unsigned NOT NULL,
  `diente` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `tratamiento_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `odontograma_paciente_id_foreign` (`paciente_id`),
  KEY `odontograma_tratamiento_id_foreign` (`tratamiento_id`),
  CONSTRAINT `odontograma_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `odontograma_tratamiento_id_foreign` FOREIGN KEY (`tratamiento_id`) REFERENCES `tratamientos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('186', '2', '5', 'superior', '6', '2024-10-30 17:04:11', '2024-10-30 17:04:11');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('187', '2', '4', 'superior', '6', '2024-10-30 17:04:11', '2024-10-30 17:04:11');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('188', '2', '1', 'centro', '6', '2024-10-31 13:29:58', '2024-10-31 13:29:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('189', '2', '2', 'centro', '6', '2024-10-31 13:29:58', '2024-10-31 13:29:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('190', '2', '3', 'centro', '6', '2024-10-31 13:29:58', '2024-10-31 13:29:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('191', '2', '4', 'centro', '6', '2024-10-31 13:29:58', '2024-10-31 13:29:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('192', '1', '4', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('193', '1', '5', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('194', '1', '6', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('195', '1', '7', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('196', '1', '8', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('197', '1', '9', 'derecha', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('198', '1', '9', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('199', '1', '11', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('200', '2', '17', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('201', '2', '18', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('202', '2', '19', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('203', '2', '20', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('204', '2', '21', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('205', '1', '3', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('206', '1', '4', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('207', '1', '4', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('208', '1', '5', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('209', '1', '5', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('210', '1', '6', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('211', '1', '6', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('212', '1', '7', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('213', '1', '7', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('214', '1', '8', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('215', '1', '8', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('216', '1', '9', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('217', '1', '9', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('218', '1', '10', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('219', '1', '10', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('220', '1', '11', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('221', '1', '11', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('222', '1', '28', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('223', '1', '29', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('224', '1', '30', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('225', '1', '31', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('226', '1', '31', 'izquierda', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('227', '1', '31', 'centro', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('228', '1', '31', 'derecha', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('229', '1', '32', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('230', '1', '32', 'inferior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('231', '1', '32', 'izquierda', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('232', '1', '32', 'centro', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('233', '1', '32', 'derecha', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('234', '8', '4', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('235', '8', '4', 'izquierda', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('236', '8', '4', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('237', '8', '5', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('238', '8', '5', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('239', '8', '6', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('240', '8', '6', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('241', '8', '7', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('242', '8', '7', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('243', '8', '8', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('244', '8', '8', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('245', '8', '9', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('246', '8', '9', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('247', '8', '10', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('248', '8', '10', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('249', '8', '11', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('250', '8', '11', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('251', '30', '4', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('252', '30', '5', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('253', '30', '6', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('254', '30', '7', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('255', '30', '8', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('256', '30', '9', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('257', '30', '10', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('258', '30', '11', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('259', '30', '4', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('260', '30', '5', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('261', '30', '6', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('262', '30', '7', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('263', '30', '8', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('264', '30', '9', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('265', '30', '10', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('266', '30', '11', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('267', '30', '4', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('268', '30', '5', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('269', '30', '6', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('270', '30', '7', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('271', '30', '8', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('272', '30', '9', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('273', '30', '10', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('274', '30', '11', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('275', '30', '12', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('276', '30', '13', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('277', '30', '28', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('278', '30', '29', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('279', '30', '30', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('280', '30', '31', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('281', '30', '32', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('282', '30', '17', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('283', '30', '18', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('284', '30', '19', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('285', '30', '20', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('286', '30', '21', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('287', '30', '4', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('288', '30', '5', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('289', '30', '6', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('290', '30', '7', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('291', '30', '8', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('292', '30', '9', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('293', '30', '10', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('294', '30', '11', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('295', '30', '4', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('296', '30', '5', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('297', '30', '8', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('298', '30', '7', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('299', '30', '6', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('343', '17', '4', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('344', '17', '5', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('345', '17', '6', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('346', '17', '7', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('347', '17', '8', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('348', '17', '9', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('349', '17', '10', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('350', '17', '11', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('351', '17', '12', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('352', '17', '13', 'superior', '11', '2024-11-08 02:03:37', '2024-11-08 02:03:37');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('353', '17', '4', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('354', '17', '5', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('355', '17', '6', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('356', '17', '7', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('357', '17', '8', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('358', '17', '9', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('359', '17', '10', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('360', '17', '11', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('361', '17', '12', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('362', '17', '13', 'superior', '11', '2024-11-08 02:05:20', '2024-11-08 02:05:20');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('363', '1', '8', 'inferior', '6', '2024-11-13 19:25:09', '2024-11-13 19:25:09');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('364', '1', '9', 'inferior', '6', '2024-11-13 19:25:09', '2024-11-13 19:25:09');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('365', '1', '17', 'superior', '6', '2024-11-13 19:25:09', '2024-11-13 19:25:09');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('366', '1', '32', 'superior', '6', '2024-11-13 19:25:09', '2024-11-13 19:25:09');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('367', '2', '24', 'superior', '10', '2024-11-13 20:47:58', '2024-11-13 20:47:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('368', '2', '24', 'izquierda', '10', '2024-11-13 20:47:58', '2024-11-13 20:47:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('369', '2', '24', 'centro', '10', '2024-11-13 20:47:58', '2024-11-13 20:47:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('370', '2', '24', 'derecha', '10', '2024-11-13 20:47:58', '2024-11-13 20:47:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('371', '2', '24', 'inferior', '10', '2024-11-13 20:47:58', '2024-11-13 20:47:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('372', '1', '32', 'superior', '7', '2024-11-13 20:56:03', '2024-11-13 20:56:03');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('373', '1', '17', 'superior', '7', '2024-11-13 20:56:03', '2024-11-13 20:56:03');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('374', '2', '3', 'centro', '7', '2024-11-13 20:57:58', '2024-11-13 20:57:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('375', '2', '2', 'centro', '7', '2024-11-13 20:57:58', '2024-11-13 20:57:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('376', '2', '1', 'centro', '7', '2024-11-13 20:57:58', '2024-11-13 20:57:58');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('377', '2', '17', 'superior', '7', '2024-11-13 21:03:40', '2024-11-13 21:03:40');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('378', '2', '17', 'inferior', '7', '2024-11-13 21:03:40', '2024-11-13 21:03:40');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('379', '2', '18', 'superior', '7', '2024-11-13 21:03:40', '2024-11-13 21:03:40');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('380', '2', '18', 'inferior', '7', '2024-11-13 21:03:40', '2024-11-13 21:03:40');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('381', '2', '19', 'superior', '7', '2024-11-13 21:03:40', '2024-11-13 21:03:40');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('382', '2', '19', 'inferior', '7', '2024-11-13 21:03:40', '2024-11-13 21:03:40');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('383', '2', '22', 'inferior', '7', '2024-11-13 21:03:40', '2024-11-13 21:03:40');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('384', '1', '1', 'superior', '6', '2024-12-01 10:26:46', '2024-12-01 10:26:46');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('385', '1', '25', 'superior', '6', '2024-12-01 10:26:46', '2024-12-01 10:26:46');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('386', '1', '24', 'superior', '6', '2024-12-01 10:26:46', '2024-12-01 10:26:46');
INSERT INTO `odontograma` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('387', '1', '16', 'superior', '6', '2024-12-01 10:26:46', '2024-12-01 10:26:46');

DROP TABLE IF EXISTS `odontograma_inicial`;
CREATE TABLE `odontograma_inicial` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint(20) unsigned NOT NULL,
  `diente` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `tratamiento_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `odontograma_inicial_paciente_id_foreign` (`paciente_id`),
  KEY `odontograma_inicial_tratamiento_id_foreign` (`tratamiento_id`),
  CONSTRAINT `odontograma_inicial_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `odontograma_inicial_tratamiento_id_foreign` FOREIGN KEY (`tratamiento_id`) REFERENCES `tratamientos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('36', '2', '5', 'superior', '6', '2024-10-30 17:04:11', '2024-10-30 17:04:11');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('37', '2', '4', 'superior', '6', '2024-10-30 17:04:11', '2024-10-30 17:04:11');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('38', '2', '1', 'centro', '6', '2024-10-31 13:29:58', '2024-10-31 13:29:58');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('39', '2', '2', 'centro', '6', '2024-10-31 13:29:58', '2024-10-31 13:29:58');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('40', '2', '3', 'centro', '6', '2024-10-31 13:29:58', '2024-10-31 13:29:58');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('41', '2', '4', 'centro', '6', '2024-10-31 13:29:58', '2024-10-31 13:29:58');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('42', '1', '4', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('43', '1', '5', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('44', '1', '6', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('45', '1', '7', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('46', '1', '8', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('47', '1', '9', 'derecha', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('48', '1', '9', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('49', '1', '11', 'centro', '6', '2024-10-31 13:30:23', '2024-10-31 13:30:23');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('50', '2', '17', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('51', '2', '18', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('52', '2', '19', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('53', '2', '20', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('54', '2', '21', 'superior', '11', '2024-10-31 13:32:00', '2024-10-31 13:32:00');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('55', '1', '3', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('56', '1', '4', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('57', '1', '4', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('58', '1', '5', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('59', '1', '5', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('60', '1', '6', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('61', '1', '6', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('62', '1', '7', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('63', '1', '7', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('64', '1', '8', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('65', '1', '8', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('66', '1', '9', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('67', '1', '9', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('68', '1', '10', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('69', '1', '10', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('70', '1', '11', 'superior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('71', '1', '11', 'inferior', '6', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('72', '1', '28', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('73', '1', '29', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('74', '1', '30', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('75', '1', '31', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('76', '1', '31', 'izquierda', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('77', '1', '31', 'centro', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('78', '1', '31', 'derecha', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('79', '1', '32', 'superior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('80', '1', '32', 'inferior', '7', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('81', '1', '32', 'izquierda', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('82', '1', '32', 'centro', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('83', '1', '32', 'derecha', '8', '2024-11-02 18:22:10', '2024-11-02 18:22:10');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('84', '8', '4', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('85', '8', '4', 'izquierda', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('86', '8', '4', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('87', '8', '5', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('88', '8', '5', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('89', '8', '6', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('90', '8', '6', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('91', '8', '7', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('92', '8', '7', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('93', '8', '8', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('94', '8', '8', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('95', '8', '9', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('96', '8', '9', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('97', '8', '10', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('98', '8', '10', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('99', '8', '11', 'inferior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('100', '8', '11', 'superior', '11', '2024-11-02 18:23:59', '2024-11-02 18:23:59');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('101', '30', '4', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('102', '30', '5', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('103', '30', '6', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('104', '30', '7', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('105', '30', '8', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('106', '30', '9', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('107', '30', '10', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('108', '30', '11', 'superior', '6', '2024-11-03 04:56:56', '2024-11-03 04:56:56');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('109', '30', '4', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('110', '30', '5', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('111', '30', '6', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('112', '30', '7', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('113', '30', '8', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('114', '30', '9', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('115', '30', '10', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('116', '30', '11', 'superior', '6', '2024-11-03 05:02:43', '2024-11-03 05:02:43');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('117', '30', '4', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('118', '30', '5', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('119', '30', '6', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('120', '30', '7', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('121', '30', '8', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('122', '30', '9', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('123', '30', '10', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('124', '30', '11', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('125', '30', '12', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('126', '30', '13', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('127', '30', '28', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('128', '30', '29', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('129', '30', '30', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('130', '30', '31', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('131', '30', '32', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('132', '30', '17', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('133', '30', '18', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('134', '30', '19', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('135', '30', '20', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('136', '30', '21', 'superior', '6', '2024-11-03 05:14:22', '2024-11-03 05:14:22');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('137', '30', '4', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('138', '30', '5', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('139', '30', '6', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('140', '30', '7', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('141', '30', '8', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('142', '30', '9', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('143', '30', '10', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('144', '30', '11', 'superior', '6', '2024-11-03 05:21:50', '2024-11-03 05:21:50');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('145', '30', '4', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('146', '30', '5', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('147', '30', '8', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('148', '30', '7', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');
INSERT INTO `odontograma_inicial` (`id`, `paciente_id`, `diente`, `area`, `tratamiento_id`, `created_at`, `updated_at`) VALUES ('149', '30', '6', 'superior', '6', '2024-11-03 05:25:36', '2024-11-03 05:25:36');

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `patient_evaluations`;
CREATE TABLE `patient_evaluations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `region` varchar(255) NOT NULL,
  `condicion` varchar(255) NOT NULL,
  `observacion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_evaluations_patient_id_foreign` (`patient_id`),
  CONSTRAINT `patient_evaluations_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `patients`;
CREATE TABLE `patients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_ingreso` date NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` enum('masculino','femenino') NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `estado_civil` enum('soltero','casado','viudo','divorciado') NOT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `emergencia_contacto` varchar(255) DEFAULT NULL,
  `emergencia_telefono` varchar(255) DEFAULT NULL,
  `ha_visitado_odontologo` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expediente` varchar(255) DEFAULT NULL,
  `dui` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('1', '2024-10-21', 'Juan', 'Pérez', '1990-01-01', 'masculino', '34', 'soltero', '+503 12345678', '+503 98765432', 'juan@example.com', '+503 987654321', 'Ana Pérez', '+503 12345678', '1', '2024-10-21 11:06:23', '2024-10-21 11:06:23', 'EXP001', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('2', '2024-10-21', 'María', 'González', '1992-05-15', 'femenino', '32', '', '+503 87654321', '+503 23456789', 'maria@example.com', '+503 234567890', 'Luis González', '+503 87654321', '0', '2024-10-21 11:06:23', '2024-10-21 11:06:23', 'EXP002', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('8', '2024-10-03', 'jimy  ronaf', 'soriano garcia', '1999-08-08', 'masculino', '25', 'soltero', '+503 12345678', '+503 12345678', 'pruebapaciente123@gmail.com', '+503 12345678', '12345678', '+503 12345678', '0', '2024-10-04 00:17:50', '2024-10-15 01:28:39', '', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('9', '2024-10-05', 'paciente prueba', 'apellidos prueba', '1999-08-08', 'masculino', '25', 'soltero', '+503 23145678', '+503 12345699', 'pruebapaciente23@gmail.com', '+503 88888888', '88888888', '+503 88888888', '0', '2024-10-05 20:03:47', '2024-10-05 20:03:47', '', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('10', '2024-10-05', 'Enma Carolina', 'Sanchez', '1994-02-19', 'femenino', '30', 'soltero', '+503 44444444', '+503 4444444', 'emma.sanmo@gmail.com', '+503 555555', 'Papa', '+503 55555', '1', '2024-10-05 20:39:18', '2024-10-05 20:39:18', '', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('17', '2024-10-15', 'ww', 'wwww', '1999-01-08', 'masculino', '25', 'casado', '+503 33333333', '+503 33333333', 'pruebapaciente2233@gmail.com', '+503 33333333', 'papa', '+503 33333333', '0', '2024-10-15 01:18:50', '2024-10-15 01:18:50', '', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('18', '2024-10-15', 'www', 'www', '1999-08-08', 'masculino', '25', 'soltero', '+503 87888888', '+503 88888888', 'pruebapaciente11223@gmail.com', '+503 11111111', 'papa', '+503 11111111', '1', '2024-10-15 01:21:51', '2024-10-15 01:21:51', '', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('19', '2024-10-15', 'sss', 'sssssss', '1999-08-08', 'masculino', '25', 'soltero', '+503 23232323', '+503 23232323', 'pruebapacient23e12@gmail.com', '+503 23232323', 'papa', '+503 23232323', '1', '2024-10-15 01:24:32', '2024-10-15 01:24:32', '', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('20', '2024-10-29', 'juan carlos', 'perez', '1999-12-12', 'masculino', '24', 'soltero', '+503 45454545', '+503 45454545', 'pruebapaciente1232@gmail.com', '+503 454545', '454545', '+503 454545', '1', '2024-10-29 15:44:37', '2024-10-29 15:44:37', '', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('21', '2024-10-29', 'juen perez', 'soza', '1999-12-12', 'masculino', '24', 'soltero', '+503 43344334', '+503 34433443', 'jimyrts123@gmail.com', '+503 45544545', '45544545', '+503 madre', '0', '2024-10-29 15:46:42', '2024-10-29 15:46:42', '', '', '');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('22', '2024-10-30', 'jimy  pruebaa', 'soriano garcia', '1999-08-08', 'masculino', '25', 'soltero', '+503 343434343', '+503 343434343', 'jimyrts2024@gmail.com', '+503 12345678', '12345678', '+503 12345678', '0', '2024-10-30 03:46:52', '2024-10-30 03:46:52', '', '05911937-7', 'prueba colonia brisas del sur');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('29', '2024-11-03', 'jimt', 'jiertre', '1999-08-08', 'masculino', '25', 'soltero', '+503 234567543', '+503 231456754', 'jimyrts2024@gmail.com', '+503 23456432', 'papa', '+503 213415643', '0', '2024-11-03 02:21:11', '2024-11-03 02:21:11', '', '23456765-4', 'prueba direccion direccion');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('30', '2024-11-03', 'carlos soriano', 'garcia', '1999-08-08', 'masculino', '25', 'soltero', '+503 234567543', '+503 345675432', 'correcopruebajimy2@gmail.com', '+503 12345678', 'papa', '+503 12345678', '0', '2024-11-03 02:23:56', '2024-11-03 02:23:56', '', '23425676-5', 'brisas del sur');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('31', '2024-11-03', 'pedro', 'escalante', '1999-08-08', 'masculino', '25', 'casado', '+503 64554956', '+503 64554956', 'jimyrts2024123@gmail.com', '+503 13423543', 'madre', '+503 23456432245', '0', '2024-11-03 15:55:31', '2024-11-03 15:55:31', '', '32456786-5', 'brisas del sur calle mas mercedes');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('32', '2024-11-07', 'prueba prefijo', 'prefijo', '1999-08-08', 'masculino', '25', 'casado', '+503 64554956', '+503 64554956', 'prefijo@gmail.com', '+503 64554956', 'marcela', '+503 64554956', '0', '2024-11-07 19:58:42', '2024-11-07 19:58:42', '', '82374732-6', 'col brisas prefijo');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('33', '2024-11-07', 'ezequiel', 'martinez', '1999-08-08', 'masculino', '25', 'soltero', '+503 64554956', '+503 64554956', 'ezequiel@gmail.com', '+503 64554956', 'teresa', '+503 64554956', '0', '2024-11-07 20:15:12', '2024-11-07 20:15:12', '', '32432423-3', 'ejemplo prefijo');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('34', '2024-12-01', 'jusna', 'ashdia', '1999-07-07', 'masculino', '25', 'soltero', '1343256342', '213547235', 'pruebapaciente12@gmail.com', '32225', 'papa', '345325342', '0', '2024-12-01 10:40:39', '2024-12-01 10:40:39', '', '31242355-5', 'ejemplo prueba');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('38', '2024-12-01', 'carlos soriano', 'soriano garciaa', '1999-08-08', 'masculino', '25', 'casado', '', '', '', '', '', '', '0', '2024-12-01 21:23:43', '2024-12-01 21:23:43', '', '23423421-4', 'col brisas del sur');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('39', '2024-12-01', 'juan orlando', 'garcia garcia', '1999-08-08', 'masculino', '25', 'soltero', '', '', '', '', '', '', '0', '2024-12-01 21:25:18', '2024-12-01 21:25:18', '', '23423423-4', 'prueba direccion direccion');
INSERT INTO `patients` (`id`, `fecha_ingreso`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `edad`, `estado_civil`, `telefono`, `celular`, `correo`, `whatsapp`, `emergencia_contacto`, `emergencia_telefono`, `ha_visitado_odontologo`, `created_at`, `updated_at`, `expediente`, `dui`, `direccion`) VALUES ('41', '2024-12-01', 'nombres', 'nombre', '1999-08-08', 'masculino', '25', 'soltero', '', '', '', '', '', '', '1', '2024-12-01 21:59:50', '2024-12-01 21:59:50', '', '21342342-3', 'col brisas del sur');

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES ('2', '1', '2', '', '');
INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES ('16', '1', '1', '', '');
INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES ('39', '2', '31', '', '');

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'Administrador', '2024-09-16 02:12:03', '2024-09-16 02:12:03');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'Médico', '2024-09-16 02:12:03', '2024-09-16 02:12:03');

DROP TABLE IF EXISTS `sexos`;
CREATE TABLE `sexos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sexos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('1', 'Masculino', '', '');
INSERT INTO `sexos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('2', 'Femenino', '', '');

DROP TABLE IF EXISTS `signos_vitales`;
CREATE TABLE `signos_vitales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `pa` varchar(255) DEFAULT NULL,
  `pulso` varchar(255) DEFAULT NULL,
  `temperatura` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `signos_vitales_patient_id_foreign` (`patient_id`),
  CONSTRAINT `signos_vitales_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('2', '8', '78/100', '12', '34', '2024-10-04 00:17:50', '2024-10-04 00:17:50');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('3', '9', '79/100', '12', '34', '2024-10-05 20:03:47', '2024-10-05 20:03:47');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('4', '10', '120/80', '10', '37', '2024-10-05 20:39:18', '2024-10-05 20:39:18');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('11', '17', '78/100', '43', '43', '2024-10-15 01:18:50', '2024-10-15 01:18:50');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('12', '18', '78/100', '43', '43', '2024-10-15 01:21:51', '2024-10-15 01:21:51');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('13', '19', '79/100', '12', '34', '2024-10-15 01:24:32', '2024-10-15 01:24:32');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('14', '20', '', '', '', '2024-10-29 15:44:37', '2024-10-29 15:44:37');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('15', '21', '', '', '', '2024-10-29 15:46:42', '2024-10-29 15:46:42');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('16', '22', '78/100', '12', '37', '2024-10-30 03:46:52', '2024-10-30 03:46:52');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('23', '29', '78/100', '43', '34', '2024-11-03 02:21:11', '2024-11-03 02:21:11');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('24', '30', '', '', '', '2024-11-03 02:23:56', '2024-11-03 02:23:56');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('25', '31', '78/100', '12', '54', '2024-11-03 15:55:31', '2024-11-03 15:55:31');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('26', '32', '781/0 mmHg', '43 lat', '45°C', '2024-11-07 19:58:42', '2024-11-07 19:58:42');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('27', '33', '122/3 mmHg', '43 lat', '45°C', '2024-11-07 20:15:12', '2024-11-07 20:15:12');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('28', '34', '781/00', '43 lat', '45°C', '2024-12-01 10:40:39', '2024-12-01 10:40:39');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('32', '38', '', '', '', '2024-12-01 21:23:43', '2024-12-01 21:23:43');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('33', '39', '', '', '', '2024-12-01 21:25:18', '2024-12-01 21:25:18');
INSERT INTO `signos_vitales` (`id`, `patient_id`, `pa`, `pulso`, `temperatura`, `created_at`, `updated_at`) VALUES ('35', '41', '', '', '', '2024-12-01 21:59:50', '2024-12-01 21:59:50');

DROP TABLE IF EXISTS `tratamientos`;
CREATE TABLE `tratamientos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tratamientos` (`id`, `nombre`, `color`, `created_at`, `updated_at`) VALUES ('6', 'Caries Dental', '#e74c3c', '', '');
INSERT INTO `tratamientos` (`id`, `nombre`, `color`, `created_at`, `updated_at`) VALUES ('7', 'Obturación De Resina', '#2e86c1', '', '');
INSERT INTO `tratamientos` (`id`, `nombre`, `color`, `created_at`, `updated_at`) VALUES ('8', 'Obturación En Buen Estado', '#3498db', '', '');
INSERT INTO `tratamientos` (`id`, `nombre`, `color`, `created_at`, `updated_at`) VALUES ('9', 'Ausencia Dental', '#273746', '', '');
INSERT INTO `tratamientos` (`id`, `nombre`, `color`, `created_at`, `updated_at`) VALUES ('10', 'Extracción', '#d5d8dc', '', '');
INSERT INTO `tratamientos` (`id`, `nombre`, `color`, `created_at`, `updated_at`) VALUES ('11', 'Sellante De Fosas Y Fisuras', '#82e0aa', '', '');

DROP TABLE IF EXISTS `tratamientos_dentales`;
CREATE TABLE `tratamientos_dentales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tratamientos_dentales` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('1', 'Profilaxis', '', '');
INSERT INTO `tratamientos_dentales` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('2', 'Aplicación topica de fluor', '', '');
INSERT INTO `tratamientos_dentales` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('3', 'Detartraje', '', '');
INSERT INTO `tratamientos_dentales` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('4', 'Sellantes de fosas y fisuras', '', '');
INSERT INTO `tratamientos_dentales` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('5', 'Obturación de resina sin base', '', '');
INSERT INTO `tratamientos_dentales` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('6', 'Obturación de resina con base', '', '');
INSERT INTO `tratamientos_dentales` (`id`, `nombre`, `created_at`, `updated_at`) VALUES ('7', 'Exodoncia', '', '');

DROP TABLE IF EXISTS `treatments`;
CREATE TABLE `treatments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `tratamientos` enum('Profilaxis','Aplicación tópica de flúor','Detartraje','Sellantes de fosas y fisuras','Obturación de resina sin base','Obturación de resina con base','Exodoncia') NOT NULL,
  `observacion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `treatments_patient_id_foreign` (`patient_id`),
  CONSTRAINT `treatments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `treatments` (`id`, `patient_id`, `tratamientos`, `observacion`, `created_at`, `updated_at`) VALUES ('1', '1', 'Profilaxis', 'Cita para 6 meses previos', '2024-11-10 14:26:16', '2024-11-10 14:26:16');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('1', 'Henry Kaseres', 'henrry@gmail.com', '', '$2y$12$lJbhvAtS7SFsU9P5mBrYPuOFUTB9Mx0Y7oxeAW6nndJmPJcmZqSuu', '', '2024-09-16 02:40:51', '2024-09-16 08:40:51');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('2', 'Eric. Girón', 'admin@example.com', '', '$2y$12$yeXQtzpDbran9EO60sGITenz1DK8Er0zNcTERVbyQ.XJ2gQGQCIDi', 'b2QRTnqq9z0kfCdreg7VgyaP96vdcMpFAaHeCbtUUXmkooCVEmT2AQdP7abN', '2024-09-16 03:30:42', '2024-09-16 03:30:42');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('31', 'Oscar Dubon', 'dubon77@gmail.com', '', '$2y$12$1wz3dLRMxPBVtSMHAUKeq.X1at2eenjVd4mLlAQLJC0H/GGaTG4gG', '', '2024-11-14 20:09:11', '2024-11-14 20:09:11');

