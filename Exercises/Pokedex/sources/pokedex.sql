-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2020 at 05:11 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.21

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pokedex`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `pokemon`
--

TRUNCATE TABLE `pokemon`;
--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`) VALUES
(1, 'Bulbizarre'),
(2, 'Herbizarre'),
(3, 'Florizarre'),
(4, 'Salameche'),
(5, 'Reptincel'),
(6, 'Dracaufeu'),
(7, 'Carapuce'),
(8, 'Carabaffe'),
(9, 'Tortank'),
(10, 'Chenipan'),
(11, 'Chrysacier'),
(12, 'Papilusion'),
(13, 'Aspicot'),
(14, 'Coconfort'),
(15, 'Dardargnan'),
(16, 'Roucool'),
(17, 'Roucoups'),
(18, 'Roucarnage'),
(19, 'Rattata'),
(20, 'Rattatac'),
(21, 'Piafabec'),
(22, 'Rapasdepic'),
(23, 'Abo'),
(24, 'Arbok'),
(25, 'Pikachu'),
(26, 'Raichu'),
(27, 'Sabelette'),
(28, 'Sablaireau'),
(29, 'NidoranF'),
(30, 'Nidorina'),
(31, 'Nidoqueen'),
(32, 'NidoranM'),
(33, 'Nidorino'),
(34, 'Nidoking'),
(35, 'Melofee'),
(36, 'Melodelfe'),
(37, 'Goupix'),
(38, 'Feunard'),
(39, 'Rondoudou'),
(40, 'Grodoudou'),
(41, 'Nosferapti'),
(42, 'Nosferalto'),
(43, 'Mystherbe'),
(44, 'Ortide'),
(45, 'Rafflesia'),
(46, 'Paras'),
(47, 'Parasect'),
(48, 'Mimitoss'),
(49, 'Aeromite'),
(50, 'Taupiqueur'),
(51, 'Triopikeur'),
(52, 'Miaouss'),
(53, 'Persian'),
(54, 'Psykokwak'),
(55, 'Akwakwak'),
(56, 'Ferosinge'),
(57, 'Colossinge'),
(58, 'Caninos'),
(59, 'Arcanin'),
(60, 'Ptitard'),
(61, 'Tetarte'),
(62, 'Tartard'),
(63, 'Abra'),
(64, 'Kadabra'),
(65, 'Alakazam'),
(66, 'Machoc'),
(67, 'Machopeur'),
(68, 'Mackogneur'),
(69, 'Chetiflor'),
(70, 'Boustiflor'),
(71, 'Empiflor'),
(72, 'Tentacool'),
(73, 'Tentacruel'),
(74, 'Racaillou'),
(75, 'Gravalanch'),
(76, 'Grolem'),
(77, 'Ponyta'),
(78, 'Galopa'),
(79, 'Ramoloss'),
(80, 'Flagadoss'),
(81, 'Magneti'),
(82, 'Magneton'),
(83, 'Canarticho'),
(84, 'Doduo'),
(85, 'Dodrio'),
(86, 'Otaria'),
(87, 'Lamantine'),
(88, 'Tadmorv'),
(89, 'Grotadmorv'),
(90, 'Kokiyas'),
(91, 'Crustabri'),
(92, 'Fantominus'),
(93, 'Spectrum'),
(94, 'Ectoplasma'),
(95, 'Onix'),
(96, 'Soporifik'),
(97, 'Hypnomade'),
(98, 'Krabby'),
(99, 'Krabboss'),
(100, 'Voltorbe'),
(101, 'Electrode'),
(102, 'Noeunoeuf'),
(103, 'Noadkoko'),
(104, 'Osselait'),
(105, 'Ossatueur'),
(106, 'Kicklee'),
(107, 'Tygnon'),
(108, 'Excelangue'),
(109, 'Smogo'),
(110, 'Smogogo'),
(111, 'Rhinocorne'),
(112, 'Rhinoferos'),
(113, 'Leveinard'),
(114, 'Saquedeneu'),
(115, 'Kangourex'),
(116, 'Hypotrempe'),
(117, 'Hypocean'),
(118, 'Poissirene'),
(119, 'Poissoroy'),
(120, 'Stari'),
(121, 'Staross'),
(122, 'M. Mime'),
(123, 'Insecateur'),
(124, 'Lippoutou'),
(125, 'Elektek'),
(126, 'Magmar'),
(127, 'Scarabrute'),
(128, 'Tauros'),
(129, 'Magicarpe'),
(130, 'Leviator'),
(131, 'Lokhlass'),
(132, 'Metamorph'),
(133, 'Evoli'),
(134, 'Aquali'),
(135, 'Voltali'),
(136, 'Pyroli'),
(137, 'Porygon'),
(138, 'Amonita'),
(139, 'Amonistar'),
(140, 'Kabuto'),
(141, 'Kabutops'),
(142, 'Ptera'),
(143, 'Ronflex'),
(144, 'Artikodin'),
(145, 'Electhor'),
(146, 'Sulfura'),
(147, 'Minidraco'),
(148, 'Draco'),
(149, 'Dracolosse'),
(150, 'Mewtwo'),
(151, 'Mew');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_has_type`
--

CREATE TABLE `pokemon_has_type` (
  `pokemon_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `pokemon_has_type`
--

TRUNCATE TABLE `pokemon_has_type`;
--
-- Dumping data for table `pokemon_has_type`
--

INSERT INTO `pokemon_has_type` (`pokemon_id`, `type_id`) VALUES
(1, 9),
(1, 10),
(2, 9),
(2, 10),
(3, 9),
(3, 10),
(4, 5),
(5, 5),
(6, 5),
(6, 15),
(7, 3),
(8, 3),
(9, 3),
(10, 7),
(11, 7),
(12, 7),
(12, 15),
(13, 7),
(13, 10),
(14, 7),
(14, 10),
(15, 7),
(15, 10),
(16, 8),
(16, 15),
(17, 8),
(17, 15),
(18, 8),
(18, 15),
(19, 8),
(20, 8),
(21, 8),
(21, 15),
(22, 8),
(22, 15),
(23, 10),
(24, 10),
(25, 4),
(26, 4),
(27, 13),
(28, 13),
(29, 10),
(30, 10),
(31, 10),
(31, 13),
(32, 10),
(33, 10),
(34, 10),
(34, 13),
(35, 8),
(36, 8),
(37, 5),
(38, 5),
(39, 8),
(40, 8),
(41, 10),
(41, 15),
(42, 10),
(42, 15),
(43, 9),
(43, 10),
(44, 9),
(44, 10),
(45, 9),
(45, 10),
(46, 7),
(46, 9),
(47, 7),
(47, 9),
(48, 7),
(48, 10),
(49, 7),
(49, 10),
(50, 13),
(51, 13),
(52, 8),
(53, 8),
(54, 3),
(55, 3),
(56, 1),
(57, 1),
(58, 5),
(59, 5),
(60, 3),
(61, 3),
(62, 1),
(62, 3),
(63, 11),
(64, 11),
(65, 11),
(66, 1),
(67, 1),
(68, 1),
(69, 9),
(69, 10),
(70, 9),
(70, 10),
(71, 9),
(71, 10),
(72, 3),
(72, 10),
(73, 3),
(73, 10),
(74, 12),
(74, 13),
(75, 12),
(75, 13),
(76, 12),
(76, 13),
(77, 5),
(78, 5),
(79, 3),
(79, 11),
(80, 3),
(80, 11),
(81, 4),
(82, 4),
(83, 8),
(83, 15),
(84, 8),
(84, 15),
(85, 8),
(85, 15),
(86, 3),
(87, 3),
(87, 6),
(88, 10),
(89, 10),
(90, 3),
(91, 3),
(91, 6),
(92, 10),
(92, 14),
(93, 10),
(93, 14),
(94, 10),
(94, 14),
(95, 12),
(95, 13),
(96, 11),
(97, 11),
(98, 3),
(99, 3),
(100, 4),
(101, 4),
(102, 9),
(102, 11),
(103, 9),
(103, 11),
(104, 13),
(105, 13),
(106, 1),
(107, 1),
(108, 8),
(109, 10),
(110, 10),
(111, 12),
(111, 13),
(112, 12),
(112, 13),
(113, 8),
(114, 9),
(115, 8),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(121, 11),
(122, 11),
(123, 7),
(123, 15),
(124, 6),
(124, 11),
(125, 4),
(126, 5),
(127, 7),
(128, 8),
(129, 3),
(130, 3),
(130, 15),
(131, 3),
(131, 6),
(132, 8),
(133, 8),
(134, 3),
(135, 4),
(136, 5),
(137, 8),
(138, 3),
(138, 12),
(139, 3),
(139, 12),
(140, 3),
(140, 12),
(141, 3),
(141, 12),
(142, 12),
(142, 15),
(143, 8),
(144, 6),
(144, 15),
(145, 4),
(145, 15),
(146, 5),
(146, 15),
(147, 2),
(148, 2),
(149, 2),
(149, 15),
(150, 11),
(151, 11);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `type`
--

TRUNCATE TABLE `type`;
--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `label`) VALUES
(1, 'Combat'),
(2, 'Dragon'),
(3, 'Eau'),
(4, 'Electrique'),
(5, 'Feu'),
(6, 'Glace'),
(7, 'Insecte'),
(8, 'Normal'),
(9, 'Plante'),
(10, 'Poison'),
(11, 'Psy'),
(12, 'Roche'),
(13, 'Sol'),
(14, 'Spectre'),
(15, 'Vol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokemon_has_type`
--
ALTER TABLE `pokemon_has_type`
  ADD KEY `pokemon_id` (`pokemon_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pokemon_has_type`
--
ALTER TABLE `pokemon_has_type`
  ADD CONSTRAINT `fk_pokemon_id` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id`),
  ADD CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);
SET FOREIGN_KEY_CHECKS=1;
