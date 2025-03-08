-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 May 2024, 18:45:57
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `raven`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Baran\'s Best Hits', 2, 4, 'assets/images/artwork/baranerol.jpg'),
(2, 'Tarkan Malkoc\'s Best Hits', 5, 10, 'assets/images/artwork/catahmet.jpg'),
(3, 'Katy Demir In Wonderland', 3, 1, 'assets/images/artwork/sude.jpg'),
(5, 'Bad Merve Good Elif', 1, 3, 'assets/images/artwork/merveelif.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Merve Elif Swifts'),
(2, 'Baran Erol'),
(3, 'Sude Perry'),
(5, 'Tarkan Malkoc');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(3, 'Hip-hop'),
(5, 'R & B'),
(7, 'Pop');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Bad Blood', 1, 5, 1, '3.32', 'assets/music/Bad Blood.mp3', 1, 20),
(2, 'Blank Space', 1, 5, 1, '3.57', 'assets/music/Blank Space.mp3', 2, 10),
(3, 'Shake It Off', 1, 5, 5, '2:33', 'assets/music/Shake It Off.mp3', 3, 15),
(4, 'I Knew You Were Trouble', 1, 5, 3, '2:02', 'assets/music/Trouble.mp3', 4, 17),
(5, 'Look What You Made Me Do', 1, 5, 1, '1:29', 'assets/music/Look.mp3', 5, 16),
(6, 'Pus', 2, 1, 1, '2:59', 'assets/music/Pus.mp3', 4, 28),
(7, 'Ben Hala', 2, 1, 5, '2:03', 'assets/music/Ben Hala.mp3', 5, 27),
(8, 'Kuzu Kuzu', 5, 2, 1, '2:28', 'assets/music/Kuzu Kuzu.mp3', 1, 14),
(9, 'Simarik', 5, 2, 7, '4:44', 'assets/music/Simarik.mp3', 2, 5),
(25, 'Kis Gunesi', 5, 2, 3, '3:26', 'assets/music/Kis Gunesi.mp3', 3, 6),
(26, 'Dudu', 5, 2, 3, '2:20', 'assets/music/Dudu.mp3', 4, 24),
(28, 'I Kissed a Girl', 3, 3, 7, '2:03', 'assets/music/I Kissed a Girl.mp3', 4, 20),
(29, 'Firework', 3, 3, 5, '4:16', 'assets/music/Firework.mp3 ', 3, 17),
(30, 'Hot N Cold', 3, 3, 7, '2:26', 'assets/music/Hot N Cold.mp3 ', 2, 31);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `profilePic`) VALUES
(1, 'ahmetmalkoc', 'Ahmet@gmail.com', '25765107e44f84f169ae6b2b5dc927bc', 'assets/images/profile-pics/head_emerald.png'),
(2, 'elifdemir', 'Elifdemir@gmail.com', '61f520434e3fdf31b8a198d5b8d735d2', 'assets/images/profile-pics/head_emerald.png'),
(3, 'elifsude', 'Elifsude@gmail.com', 'f882385961c676eca6367ba06e4531fe', 'assets/images/profile-pics/head_emerald.png'),
(4, 'merve', 'Merve@gmail.com', 'a51b5bc5a09772ed77668af72b0247a9', 'assets/images/profile-pics/head_emerald.png'),
(15, 'adana', 'Adana@gmail.com', '12345678', 'assets/images/profile-pics/head_emerald.png');

--
-- Tetikleyiciler `users`
--
DELIMITER $$
CREATE TRIGGER `before_user_insert` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
    IF CHAR_LENGTH(NEW.password) < 8 THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Password must be at least 8 characters';
    END IF;
END
$$
DELIMITER ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
