-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: Giu 10, 2015 alle 18:06
-- Versione del server: 5.5.43-0ubuntu0.14.04.1
-- Versione PHP: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `technogym`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `descrizione` text NOT NULL,
  `descrizione_breve` text,
  `img_link` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `categoria`
--

INSERT INTO `categoria` (`id`, `nome`, `descrizione`, `descrizione_breve`, `img_link`) VALUES
(1, 'Piscina', '<p>Nel nostro centro proponiamo attivit&agrave; acquatiche per tutte le et&agrave; I nostri corsi sono rivolti a tutti coloro che desiderano riscoprire il piacere di stare in acqua imparando a nuotare. L&apos;et&agrave; non conta, fin dall&apos;inizio proponiamo un&apos;attivit&agrave; dove i bimbi non toccano; in questo modo il bimbo impara velocemente a &quot;pedalare&quot; e, in breve tempo, a spostarsi autonomamente e a cavarsela da solo nell&apos;acqua alta.</p>', '<p>Nel nostro centro proponiamo attivit&agrave; acquatiche per tutte le et&agrave; I nostri corsi sono rivolti a tutti coloro che desiderano riscoprire il piacere di stare in acqua imparando a nuotare. L&apos;et&agrave; non conta, fin dall&apos;inizio proponiamo...</p>', 'images/categoria/piscina1.jpg'),
(2, 'Arti Marziali', '<p>Con arte marziale si intende un insieme di pratiche fisiche, mentali e spirituali legate al combattimento. Originariamente utilizzate per aumentare le possibilit&agrave; di vittoria del guerriero in battaglia, oggi sono una forma di percorso di miglioramento individuale e di attivit&agrave; fisica completa oltre che difesa personale. Nel nostro centro proponiamo corsi con diversi obiettivi: ottenere abilit&agrave; di combattimento, autodifesa, autocontrollo, meditazione, responsabilizzazione sull&apos;uso della forza, acquisire confidenza col proprio corpo, sicurezza nelle proprie capacit&agrave; e consapevolezza dei propri limiti.</p>', '<p>Con arte marziale si intende un insieme di pratiche fisiche, mentali e spirituali legate al combattimento. Originariamente utilizzate per aumentare le possibilit&agrave; di vittoria del guerriero in battaglia, oggi sono una forma di percorso di miglioramento individuale e di...</p>', 'images/categoria/arti_marziali1.jpg'),
(3, 'Ballo', '<p>Esistono numerosi stili di ballo associati a diverse forme musicali ed il nostro centro &egrave; preparato per offrirvene il pi&ugrave; possibile! Ballare un ritmo che ti prende o una melodia che ti commuove per il susseguirsi regolare delle note che misurano in base alla loro altezza durata ed intensit&agrave; le tue stesse emozioni, &egrave; un qualcosa di unico. Ogni momento in cui ti esprimi ballando &egrave; irripetibile per le sensazioni che provi in quegli istanti, perch&eacute; li e soltanto li sei tu ed il tuo partner, magari stretto nella presa ammaliante e calda di una bachata, mentre esegui un movimento del corpo all&apos;unisono con lei, oppure ti esprimi nella tecnica sopraffina di una sacada del tango argentino.<p>', '<p>Esistono numerosi stili di ballo associati a diverse forme musicali ed il nostro centro &egrave; preparato per offrirvene il pi&ugrave; possibile! Ballare un ritmo che ti prende o una melodia che ti commuove per il susseguirsi regolare delle note che misurano in base alla loro altezza durata ed intensit&agrave; le tue...</p>', 'images/categoria/ballo1.jpg'),
(4, 'Fitness', '<p>&Egrave; un&apos;attivit&agrave; di percezione corporea e benessere fisico improntato sulla corretta respirazione, sull&apos;allungamento e sulla forza muscolare. Obiettivo: miglioramento della tonicit&agrave;, della mobilit&agrave; articolare e maggiore consapevolezza del proprio corpo.</p>', '<p>&Egrave; un&apos;attivit&agrave; di percezione corporea e benessere fisico improntato sulla corretta respirazione, sull&apos;allungamento e sulla forza muscolare. Obiettivo: miglioramento della tonicit&agrave;, della mobilit&agrave; articolare e maggiore consapevolezza del proprio corpo...</p>', 'images/categoria/fitness1.jpg'),
(5, 'Gruppo', '<p>L&apos; idea di praticare un&apos;attivit&agrave; in solitario non fa per te? Non ti preoccupare nel nostro centro proponiamo attivit&agrave; di gruppo per tutte le et&agrave; I corsi di gruppo trasformano il tuo allenamento in vero divertimento. Ti offrono la possibilit&agrave; non solo di allenarti a ritmo di musica, ma anche di incontrare persone che amano lo sport e la vita attiva, pronte a condividere interessi comuni e la ricerca di una dimensione di benessere quotidiano</p>', '<p>L&apos; idea di praticare un''attivit&agrave; in solitario non fa per te? Non ti preoccupare nel nostro centro proponiamo attivit&agrave; di gruppo per tutte le et&agrave; I corsi di gruppo trasformano il tuo allenamento in vero divertimento. Ti offrono la possibilit&agrave; non solo di allenarti a ritmo di musica...</p>', 'images/categoria/gruppo1.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `corso`
--

CREATE TABLE IF NOT EXISTS `corso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `livello` varchar(20) NOT NULL,
  `descrizione` text NOT NULL,
  `orario` text,
  `descrizione_breve` text,
  `id_stanza` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `img_link` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dump dei dati per la tabella `corso`
--

INSERT INTO `corso` (`id`, `nome`, `livello`, `descrizione`, `orario`, `descrizione_breve`, `id_stanza`, `id_categoria`, `img_link`) VALUES
(1, 'Acqua Cardio', 'Media', '<p>Acqua e musica è il binomio che permette un''adeguata intensit&agrave; di allenamento, insieme ad un non-impatto articolare. L''allenamento progressivo di questa lezione è consigliato anche a chi è in sovrappeso, a chi ha problemi di schiena e di circolazione.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Acqua e musica è il binomio che permette un''adeguata intensità di allenamento, insieme ad un non-impatto articolare.</p>', 4, 1, 'images/corso/acqua_cardio1.jpg'),
(2, 'Acqua Gag', 'Media', '<p>L’Acqua Gag permette di ottenere risultati in modo molto divertente, focalizzando l''allenamento in acqua su gambe addominali e glutei.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>L’Acqua gag permette di ottenere risultati in modo molto divertente, focalizzando l''allenamento in acqua su gambe addominali e glutei.</p>', 4, 1, 'images/corso/acqua_gag1.jpg'),
(3, 'Acqua Gym', 'Media', '<p>L''Acquagym rappresenta l''attività fisica ideale per stare in forma, senza sottoporsi a ritmi eccessivi, migliorando anche la propria coordinazione motoria. Adatta anche a coloro che soffrono di dolori alle ginocchia, caviglie...</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>L''Acqua gym rappresenta l''attività fisica ideale per stare in forma, senza sottoporsi a ritmi eccessivi, migliorando anche la propria coordinazione motoria.</p>', 4, 1, 'images/corso/acqua_gym1.jpg'),
(4, 'Acqua Tonic', 'Media', '<p>Tutta la muscolatura del corpo viene sollecitata con esercizi specifici e di coordinazione fra i vari segmenti corporei. Due sono gli elementi importanti per questa attività: la musica e gli attrezzi, utilizzati per rendere il lavoro più incisivo.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Tutta la muscolatura del corpo viene sollecitata con esercizi specifici e di coordinazione fra i vari segmenti corporei.</p>', 4, 1, 'images/corso/acqua_tonic1.jpg'),
(5, 'Bachata', 'Media', '<p>La bachata è un genere musicale latino-americano originario della Repubblica Dominicana che ha dato origine al relativo ballo di coppia. Tra i generi caraibici è uno dei pochi in cui l''influenza dei ritmi africani è meno evidente, difatti la musica presenta un suono dolce e melodico. I testi delle canzoni trattano sempre il tema dell''amore in tutte le sue sfumature, a volte in termini idilliaci e a volte in termini drammatici.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Tra i generi caraibici è uno dei pochi in cui l''influenza dei ritmi africani è meno evidente, difatti la musica presenta un suono dolce e melodico.</p>', 2, 3, 'images/corso/bachata1.jpg'),
(7, 'Body Building', 'Media', '<p>Il body building è lo sport che si pone come fine ultimo il cambiamento della composizione corporea, con l''aumento della massa muscolare, dove le finalità sono estetiche prima che competitive. Ad alti livelli il gusto estetico dei culturisti e degli amanti della disciplina li spinge ad allenarsi per aumentare il più possibile la massa e la definizione muscolare (mantenendo armonia e proporzioni, intese secondo i canoni del body building).</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Il body building è lo sport che si pone come fine ultimo il cambiamento della composizione corporea, con l''aumento della massa muscolare, dove le finalità sono estetiche prima che competitive.</p>', 1, 4, 'images/corso/body_building1.jpg'),
(8, 'Ginnastica Dimagrante', 'Media', '<p>Il metodo migliore per modellare il corpo è una regolare attività fisica ed alimentazione: bastano 45 minuti due volte alla settimana, che devono essere trascorsi nella più totale tranquillità e senza sfidare le proprie capacità.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Il metodo migliore per modellare il corpo è una regolare attività fisica ed alimentazione: bastano 45 minuti due volte alla settimana, che devono essere trascorsi nella più totale tranquillità e senza sfidare le proprie capacità.</p>', 1, 4, 'images/corso/ginnastica_dimagrante1.jpg'),
(9, 'Ginnastica Posturale', 'Difficile', '<p>La ginnastica posturale è indirizzata al trattamento dei vizi e dolori della colonna vertebrale e di alcuni difetti di natura ortopedica degli arti inferiori.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>La ginnastica posturale è indirizzata al trattamento dei vizi e dolori della colonna vertebrale e di alcuni difetti di natura ortopedica degli arti inferiori.</p>', 1, 4, 'images/corso/ginnastica_posturale1.jpg'),
(10, 'Ginnastica Rassodante', 'Media', '<p>Il metodo migliore per rassodare il corpo é una regolare attività fisica: a seconda delle necessità si scelgono esercizi specifici, adatti a rassodare braccia, spalle, gambe, addome, o la parte che si reputa necessario far lavorare.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Il metodo migliore per rassodare il corpo é una regolare attività fisica: a seconda delle necessità si scelgono esercizi specifici, adatti a rassodare braccia, spalle, gambe, addome, o la parte che si reputa necessario far lavorare.</p>', 1, 4, 'images/corso/ginnastica_rassodante1.jpg'),
(11, 'Karate', 'Difficile', '<p>Preceduta da una parte di riscaldamento e attivazione della muscolatura, la lezione si sviluppa nella pratica delle tecniche da soli, poi in coppia e finalmente nello studio dei kata.\r\nQuesti ultimi sono caratterizzati da posizioni meno estreme rispetto a quelle degli stili giapponesi, dalla costante attenzione alla postura di bacino e colonna, alla contrazione e decontrazione della muscolatura, alla respirazione.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Il modello della lezione informale ma rispettoso - com''è uso a Okinawa - è uno dei valori di questa scuola.\r\nAllievi esperti e principianti lavorano assieme, in modo che i primi possano aiutare i secondi nell''apprendimento e nell''interpretazione corretta delle tecniche.</p>', 3, 2, 'images/corso/karate1.jpg'),
(12, 'Pilates', 'Difficile', '<p>E'' un sistema di esercizi a basso impatto, che prevede anche l''utilizzo di piccoli attrezzi.\r\nPermette di migliorare in breve tempo l''aspetto fisico, migliorando la postura, incrementando il tono muscolare, la flessibilità, l''agilità in un''ottica di "economia del movimento". Può essere d''aiuto per la prevenzione del mal di schiena e dei principali problemi muscolari ed articolari.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Permette di migliorare in breve tempo l''aspetto fisico, migliorando la postura, incrementando il tono muscolare, la flessibilità, l''agilità in un''ottica di "economia del movimento".</p>', 2, 5, 'images/corso/pilates1.jpg'),
(13, 'Salsa', 'Difficile', '<p>La salsa è il ballo di coppia danzato sulle note dell''omonimo genere musicale, ed ha movimenti e regole codificate. Esistono varie scuole, stili e tecniche diverse; tuttavia le principali sono la salsa cubana e la salsa portoricana, le quali a loro volta possono dividersi in altre sottocategorie (come la NY Style).</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>La salsa è il ballo di coppia danzato sulle note dell''omonimo genere musicale, ed ha movimenti e regole codificate.</p>', 2, 3, 'images/corso/salsa1.jpg'),
(14, 'Step Plus', 'Facile', '<p>La ginnastica con lo step deve ritenersi estremamente allenante e consigliata a tutti coloro che vogliono mantenersi in forma non potendo usufruire di valide alternative. E'' decisamente indicata sia per uomini sia per donne, a prescindere dall''età: è uno dei metodi più validi per incrementare l''elasticità senza rischiare infortuni.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>La ginnastica con lo step deve ritenersi estremamente allenante e consigliata a tutti coloro che vogliono mantenersi in forma non potendo usufruire di valide alternative.</p>', 2, 5, 'images/corso/step_plus1.jpg'),
(15, 'Taekwondo', 'Media', '<p>Taekwondo - dal coreano Tae ''colpire col piede, Kwon ''pugno'' e Do ''arte''. Metodo di combattimento di antica origine coreana, nata e concepita per la sola difesa. Il TKD è caratterizzati da una componente sportiva ed una componente marziale nelle cosiddette forme, composizioni codificate di tecniche a corpo libero che determinano, in funzione della difficoltà dell''esercizio, il grado ed il livello di preparazione atletica.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Taekwondo - dal coreano Tae ''colpire col piede, Kwon ''pugno'' e Do ''arte''. Metodo di combattimento di antica origine coreana, nata e concepita per la sola difesa.</p>', 3, 2, 'images/corso/taekwondo1.jpg'),
(16, 'Thai Boxe', 'Difficile', '<p>Nota come Muay Thai è uno sport da combattimento che ha le sue origini nell''antica tecnica di lotta thailandese. Attualmente il termine Muay Thai oggi identifica l''aspetto sportivo dell''arte marziale.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Nota come Muay Thai è uno sport da combattimento che ha le sue origini nell''antica tecnica di lotta thailandese. Attualmente il termine Muay Thai oggi identifica l''aspetto sportivo dell''arte marziale.</p>', 3, 2, 'images/corso/thai_boxe1.jpg'),
(17, 'Tonificazione', 'Facile', '<p>Allenamento mirato alla tonificazione, con particolare attenzione alla muscolatura dei pettorali, dorsali, braccia e spalle, senza tralasciare la zona di cosce e glutei. E'' una lezione a basso impatto non coreografata. Inoltre vengono eseguite semplici combinazioni di movimenti a terra.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Allenamento mirato alla tonificazione, con particolare attenzione alla muscolatura dei pettorali, dorsali, braccia e spalle, senza tralasciare la zona di cosce e glutei.</p>', 2, 5, 'images/corso/tonificazione1.jpg'),
(18, 'Total Body', 'Facile', '<p>Il total body nasce con tutta probabilità come integrazione ed evoluzione della ginnastica aerobica, si tratta infatti di un''attività che combina le coreografie tipiche della ginnastica aerobica ad esercizi della pesistica.\r\nSpesso si fa ricorso a manubri di piccole dimensioni per eseguire in modo certamente più coreografico, delle varianti dei classici esercizi con i pesi liberi.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Il total body nasce con tutta probabilità come integrazione ed evoluzione della ginnastica aerobica, si tratta infatti di un''attività che combina le coreografie tipiche della ginnastica aerobica ad esercizi della pesistica.</p>', 2, 5, 'images/corso/total_body1.jpg'),
(19, 'Yoga', 'Facile', '<p>Lo Hatha Yoga è una forma di Yoga basato su una serie di esercizi psicofisici di origini antichissime, originati nelle scuole iniziatiche dell''India e del Tibet. È ad oggi molto praticato anche in occidente è una disciplina ricca di significati spirituali, che può fare avvicinare spesso allo Yoga nella sua totalità.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Lo Hatha Yoga è una forma di Yoga basato su una serie di esercizi psicofisici di origini antichissime, originati nelle scuole iniziatiche dell''India e del Tibet.</p>', 2, 5, 'images/corso/yoga1.jpg'),
(20, 'MMA (Mixed Martial Arts)', 'Difficile', '<p>Tecniche di lotta in piedi e a terra (jiu jitsu), unite alle tecniche di pugno, ginocchio e calcio (muay thai) ed alle leve alla gambe (sambo).</p>\r\n \r\n<p>Il corso comprende 3 ore di allenamento tecnico in palestra ed un''ora di allenamento all''aperto a settimana.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Tecniche di lotta in piedi e a terra (jiu jitsu), unite alle tecniche di pugno, ginocchio e calcio (muay thai) ed alle leve alla gambe (sambo).</p>', 3, 2, 'images/corso/mma1.jpg'),
(21, 'Lezioni Nuoto Private', 'Difficile', '<p>Per chi desidera imparare a nuotare o specializzare ogni stile, ottimizzando i tempi.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Per chi desidera imparare a nuotare o specializzare ogni stile, ottimizzando i tempi.</p>', 4, 1, 'images/corso/lezioni_nuoto_private1.jpg'),
(22, 'Nuoto Libero', 'Facile', '<p>Ogni giorno la piscina offre degli orari liberi dove è possibile nuotare autonomamente, sfruttando così tutti benefici del nuoto: dal migliorare il rapporto con l''acqua ed il movimento del corpo, oppure per rilassare la propria muscolatura e la propria mente in un ambiente confortevole e tranquillo.</p>', '<ul class="program_list_detailed"><li><span class="col2">Lunedì</span><span class="col3">Martedì</span><span class="col4">Mercoledì</span><span class="col5">Giovedì</span><span class="col6">Venerdì</span><span class="col7">Sabato</span><span class="col8">Domenica</span></li><li class="even"><span class="col1">09:00 - 10:30</span><span class="col2">18.45 - 19.30</span><span class="col3">-</span><span class="col4">18.45 - 19.30</span><span class="col5">18.45 - 19.30</span><span class="col6">18.45 - 19.30</span><span class="col7">-</span></li></ul>', '<p>Ogni giorno la piscina offre degli orari liberi dove è possibile nuotare autonomamente, sfruttando così tutti benefici del nuoto: dal migliorare il rapporto con l''acqua ed il movimento del corpo, oppure per rilassare la propria muscolatura e la propria mente in un ambiente confortevole e tranquillo.</p>', 4, 1, 'images/corso/nuoto_libero1.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini_categoria`
--

CREATE TABLE IF NOT EXISTS `immagini_categoria` (
  `id_categoria` int(11) NOT NULL,
  `img_link` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`,`img_link`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `immagini_categoria`
--

INSERT INTO `immagini_categoria` (`id_categoria`, `img_link`) VALUES
(1, 'images/categoria/piscina1.jpg'),
(1, 'images/categoria/piscina2.jpg'),
(1, 'images/categoria/piscina3.jpg'),
(2, 'images/categoria/arti_marziali1.jpg'),
(2, 'images/categoria/arti_marziali2.jpg'),
(2, 'images/categoria/arti_marziali3.jpg'),
(3, 'images/categoria/ballo1.jpg'),
(3, 'images/categoria/ballo2.jpg'),
(3, 'images/categoria/ballo3.jpg'),
(4, 'images/categoria/fitness1.jpg'),
(4, 'images/categoria/fitness2.jpg'),
(4, 'images/categoria/fitness3.jpg'),
(5, 'images/categoria/gruppo1.jpg'),
(5, 'images/categoria/gruppo2.jpg'),
(5, 'images/categoria/gruppo3.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini_corso`
--

CREATE TABLE IF NOT EXISTS `immagini_corso` (
  `id_corso` int(11) NOT NULL,
  `img_link` varchar(50) NOT NULL,
  PRIMARY KEY (`id_corso`,`img_link`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `immagini_corso`
--

INSERT INTO `immagini_corso` (`id_corso`, `img_link`) VALUES
(1, 'images/corso/acqua_cardio1.jpg'),
(1, 'images/corso/acqua_cardio2.jpg'),
(1, 'images/corso/acqua_cardio3.jpg'),
(2, 'images/corso/acqua_gag1.jpg'),
(2, 'images/corso/acqua_gag2.jpg'),
(2, 'images/corso/acqua_gag3.jpg'),
(3, 'images/corso/acqua_gym1.jpg'),
(3, 'images/corso/acqua_gym2.jpg'),
(3, 'images/corso/acqua_gym3.jpg'),
(4, 'images/corso/acqua_tonic1.jpg'),
(4, 'images/corso/acqua_tonic2.jpg'),
(4, 'images/corso/acqua_tonic3.jpg'),
(5, 'images/corso/bachata1.jpg'),
(5, 'images/corso/bachata2.jpg'),
(5, 'images/corso/bachata3.jpg'),
(7, 'images/corso/body_building1.jpg'),
(7, 'images/corso/body_building2.jpg'),
(7, 'images/corso/body_building3.jpg'),
(8, 'images/corso/ginnastica_dimagrante1.jpg'),
(8, 'images/corso/ginnastica_dimagrante2.jpg'),
(8, 'images/corso/ginnastica_dimagrante3.jpg'),
(9, 'images/corso/ginnastica_posturale1.jpg'),
(9, 'images/corso/ginnastica_posturale2.jpg'),
(9, 'images/corso/ginnastica_posturale3.jpg'),
(10, 'images/corso/ginnastica_rassodante1.jpg'),
(10, 'images/corso/ginnastica_rassodante2.jpg'),
(10, 'images/corso/ginnastica_rassodante3.jpg'),
(11, 'images/corso/karate1.jpg'),
(11, 'images/corso/karate2.jpg'),
(11, 'images/corso/karate3.jpg'),
(12, 'images/corso/pilates1.jpg'),
(12, 'images/corso/pilates2.jpg'),
(12, 'images/corso/pilates3.jpg'),
(13, 'images/corso/salsa1.jpg'),
(13, 'images/corso/salsa2.jpg'),
(13, 'images/corso/salsa3.jpg'),
(14, 'images/corso/step_plus1.jpg'),
(14, 'images/corso/step_plus2.jpg'),
(14, 'images/corso/step_plus3.jpg'),
(15, 'images/corso/taekwondo1.jpg'),
(15, 'images/corso/taekwondo2.jpg'),
(15, 'images/corso/taekwondo3.jpg'),
(16, 'images/corso/thai_boxe1.jpg'),
(16, 'images/corso/thai_boxe2.jpg'),
(16, 'images/corso/thai_boxe3.jpg'),
(17, 'images/corso/tonificazione1.jpg'),
(17, 'images/corso/tonificazione2.jpg'),
(17, 'images/corso/tonificazione3.jpg'),
(18, 'images/corso/total_body1.jpg'),
(18, 'images/corso/total_body2.jpg'),
(18, 'images/corso/total_body3.jpg'),
(19, 'images/corso/yoga1.jpg'),
(19, 'images/corso/yoga2.jpg'),
(19, 'images/corso/yoga3.jpg'),
(20, 'images/corso/mma1.jpg'),
(20, 'images/corso/mma2.jpg'),
(20, 'images/corso/mma3.jpg'),
(21, 'images/corso/lezioni_nuoto_private1.jpg'),
(21, 'images/corso/lezioni_nuoto_private2.jpg'),
(21, 'images/corso/lezioni_nuoto_private3.jpg'),
(22, 'images/corso/nuoto_libero1.jpg'),
(22, 'images/corso/nuoto_libero2.jpg'),
(22, 'images/corso/nuoto_libero3.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `informazione`
--

CREATE TABLE IF NOT EXISTS `informazione` (
  `nome` varchar(40) NOT NULL,
  `valore` varchar(50) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `informazione`
--

INSERT INTO `informazione` (`nome`, `valore`) VALUES
('email', 'bodybuilding@email.com'),
('facebook', 'https://it-it.facebook.com/technogym'),
('google', 'https://plus.google.com/+TechnogymSpa/about'),
('indirizzo', 'Piazza Leonardo da Vinci, 32 20133 Milano'),
('posizione_x', '45.478109'),
('posizione_y', '9.228364'),
('telefono', '0321 807090'),
('twitter', 'https://twitter.com/technogym');

-- --------------------------------------------------------

--
-- Struttura della tabella `istruttore`
--

CREATE TABLE IF NOT EXISTS `istruttore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `descrizione` text NOT NULL,
  `mail` varchar(25) DEFAULT NULL,
  `facebook` varchar(30) DEFAULT NULL,
  `twitter` varchar(30) DEFAULT NULL,
  `img_link` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `istruttore`
--

INSERT INTO `istruttore` (`id`, `nome`, `descrizione`, `mail`, `facebook`, `twitter`, `img_link`) VALUES
(1, 'Claudio', '<p><strong>Esperienza / Certificazioni:</strong> Scienze Motorie, quattro anni di esperienza nella professione fitness.</p>\r\n \r\n<p><strong>Perch&eacute; hai scelto questa professione professione:</strong> Mi piace aiutare le persone a raggiungere i loro obiettivi.</p>\r\n \r\n<p><strong>Competenza:</strong> Personal Fitness Trainer</p>\r\n \r\n<p><strong>Hobby:</strong> Allenarmi all''aperto</p>\r\n \r\n<p><strong>Motivazione:</strong> Non mollare quando la situazione si fa difficile.</p>\r\n \r\n<p><strong>Citazione preferita:</strong> i vincitori non rinunciano mai. I rinunciatari non vincono mai.</p>\r\n \r\n<p><strong>Titolo di studio:</strong> Laurea in Scienze Motorie.</p>', 'claudio@technogym.com', '1455736768058531', 'bothetrainer', 'images/istruttore/claudio.png'),
(2, 'Federico', '<p><strong>Esperienza / Certificazioni:</strong> Certificazione Schwinn, tre anni di professione fitness.</p>\r\n \r\n<p><strong>Competenza:</strong> Spinning</p>\r\n \r\n<p><strong>Hobby:</strong> Musica, lettura.</p>\r\n \r\n<p><strong>Motivazione:</strong> Sfida te stesso.</p>\r\n \r\n<p><strong>Citazione preferita:</strong> "Se tu sei la persona più brillante nella stanza, allora sei nella stanza sbagliata."</p>\r\n \r\n<p><strong>Titolo di studio:</strong> Laurea in Medicina.</p>', 'federico@technogym.com', '353954324813716', 'joshualipsey', 'images/istruttore/federico.png'),
(3, 'Laura', '<p><strong>Esperienza / Certificazioni:</strong> Salsa, due anni nella professione fitness.</p>\r\n \r\n<p><strong>Perch&eacute; hai scelto questa professione:</strong> Volevo fare la differenza rispetto alle altre persone, e alla fine la palestra mi ha salvato la vita.</p>\r\n \r\n<p><strong>Hobby:</strong> Lettura, cucina, danza e arte.</p>\r\n \r\n<p><strong>Suggerimento Motivational:</strong> Fallo per te, non per il giudizio degli altri.</p>\r\n \r\n<p><strong>Citazione preferita:</strong> “Today you are you and that’s truer that truer, there is no one alive who’s you-er than you.”- Dr. Suess.</p>\r\n \r\n<p><strong>Titolo di studio:</strong> Laurea in Scienze Motorie.</p>', 'laura@technogym.com', '1586728681576354', 'JillianMichaels', 'images/istruttore/laura.png'),
(4, 'Marco', '<p><strong>Esperienza / Certificazioni:</strong> Istruttore di Arte marziale / cintura nera, speaker motivazionale. Tre anni nella professione fitness.</p>\r\n \r\n<p><strong>Motivazione:</strong> "Lotta per il tuo successo".</p>\r\n \r\n<p><strong>Citazione preferita:</strong> "When you feel like quitting, adjust your focus!"</p>\r\n \r\n<p><strong>Titolo di studio:</strong> Laurea in Medicina.</p>', 'marco@technogym.com', '847966398624937', 'ericthetrainer', 'images/istruttore/marco.png'),
(5, 'Ricky', '<p><strong>Certificazioni:</strong> Accademia Nazionale di Medicina dello Sport - Certified Personal Trainer (NASM-CPT), quindici anni di professione fitness.</p>\r\n \r\n<p><strong>Perch&eacute; hai scelto questa professione:</strong> Anni fa ero un adolescente fuori forma con cattive abitudini. Quando ho scoperto il mondo del fitness e tutti i cambiamenti positivi che sono venuti con esso, sapevo che dovevo condividere il dono e le gioie che mi ha dato. Il momento più gratificante di tutti i miei sforzi è quando qualcuno mi dice "grazie" a me dopo una sessione di allenamento.</p>\r\n \r\n<p><strong>Competenza:</strong> Esercizi correttivi, potenziamento muscolare , circuit training.</p>\r\n \r\n<p><strong>Hobby:</strong> Recitazione, sollevamento pesi, suonare la chitarra.</p>\r\n \r\n<p><strong>Motivazione:</strong> “Dream what no man can ever achieve. Achieve what no man can ever dream.”</p>\r\n \r\n<p><strong>Titolo di studio:</strong> Laurea in Giustizia Penale.</p>', 'ricky@technogym.com', '1595212007398074', 'brad_bwarren', 'images/istruttore/ricky.png'),
(6, 'Stefania', '<p><strong>Istruzione / Certificazione:</strong> Yoga Master, due anni nella professione fitness.</p>\r\n \r\n<p><strong>Perché hai scelto questa professione:</strong> Mi piace stare attivo e aiutare gli altri a rimanere in forma e  a trovare la gioia per l''esercizio.</p>\r\n \r\n<p><strong>Hobby:</strong> escursioni in bicicletta, la cucina, e uscire con gli amici.</p>\r\n \r\n<p><strong>Suggerimento Motivational:</strong> Trova un esercizio che ti piace e miglioralo al massimo.</p>\r\n \r\n<p><strong>Citazione preferita:</strong> "Tra vent''anni sarete più delusi per le cose che non avete fatto che per quelle che avete fatto" - Mark Twain.</p>\r\n \r\n<p><strong>Titolo di studio:</strong> Laurea in Scienze motorie.</p>', 'stefania@technogym.com', '667505476689252', 'valeriewaters', 'images/istruttore/stefania.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `istruttore_categoria`
--

CREATE TABLE IF NOT EXISTS `istruttore_categoria` (
  `id_istruttore` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_istruttore`,`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `istruttore_categoria`
--

INSERT INTO `istruttore_categoria` (`id_istruttore`, `id_categoria`) VALUES
(1, 4),
(2, 1),
(3, 3),
(4, 2),
(5, 5),
(6, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `istruttore_corso`
--

CREATE TABLE IF NOT EXISTS `istruttore_corso` (
  `id_istruttore` int(11) NOT NULL,
  `id_corso` int(11) NOT NULL,
  PRIMARY KEY (`id_istruttore`,`id_corso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `istruttore_corso`
--

INSERT INTO `istruttore_corso` (`id_istruttore`, `id_corso`) VALUES
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 21),
(2, 22),
(3, 5),
(3, 13),
(3, 19),
(4, 11),
(4, 15),
(4, 16),
(4, 20),
(5, 12),
(5, 17),
(5, 18),
(6, 14),
(6, 16);

-- --------------------------------------------------------

--
-- Struttura della tabella `pagina`
--

CREATE TABLE IF NOT EXISTS `pagina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `descrizione` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dump dei dati per la tabella `pagina`
--

INSERT INTO `pagina` (`id`, `nome`, `descrizione`) VALUES
(1, 'Come Trovarci', '<div class="left23 left_content">\r\n        <h2>Mappa</h2>\r\n                <div class="gmap"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2797.601523452159!2d9.230337700000005!3d45.47783039999993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4786c6f67dd11753%3A0x8e30fae1774a3377!2sPolitecnico+di+Milano!5e0!3m2!1sit!2sit!4v1432322038969" width="100%" height="280" frameborder="0" style="border:0"></iframe></div>\r\n\r\n                <div class="form_content">\r\n                \r\n                <h2>Lasciaci un messaggio</h2>  \r\n                \r\n                    <form id="form1" method="post" action="">\r\n                    <div class="form_top">\r\n                        <div class="form_row_half">\r\n                        <input type="text" class="form_input" name="name" placeholder="Nome"/>\r\n                        </div>\r\n                        <div class="form_row_half">\r\n                        <input type="text" class="form_input" name="email" placeholder="Email"/>\r\n                        </div>\r\n                        <div class="form_row">\r\n                        <textarea class="form_textarea" name="comment" placeholder="Tuo messaggio..."></textarea>\r\n                        </div>\r\n                    </div>\r\n                    <div class="form_bottom">\r\n                        <input type="submit" class="form_submit" value="Invia" />\r\n                    </div>           \r\n                    </form>\r\n                </div>\r\n\r\n   		</div>\r\n        \r\n	<div class="left13 sidebar">\r\n        \r\n         <h2>Il Nostro Indirizzo</h2>\r\n                \r\n                <div class="sidebar_blog_entries">\r\n                \r\n                <div class="post_small">\r\n                <img src="images/utils/u39.png" alt="" title="" class="post_thumb" />\r\n                \r\n                <p>\r\n                Piazza Leonardo da Vinci, 32\r\n20133 Milano.\r\n                </p>\r\n                </div>\r\n             </div>   \r\n                \r\n                <h2>Come Contattarci</h2>\r\n                \r\n                <div class="sidebar_blog_entries">\r\n                \r\n                <div class="post_small">\r\n                <a href="mailto:bodybuilding@email.com"><img src="images/utils/icon_contact.png" alt="" title="" class="post_thumb" /></a>\r\n                <h3><div class="red">Email</div></h3>\r\n                <p>\r\n                <a href="mailto:bodybuilding@email.com">bodybuilding@email.com</a>\r\n                </p>\r\n                </div>\r\n                \r\n                <div class="post_small">\r\n                <img src="images/utils/icon_phone.png" alt="" title="" class="post_thumb" />\r\n                <h3><div class="red">Telefono</div></h3>\r\n                <p>\r\n                0321 807090\r\n                </p>\r\n                </div>\r\n               </div>\r\n               \r\n               <h2>Social</h2>\r\n                \r\n                <div class="sidebar_blog_entries">               \r\n                <div class="post_small">\r\n                <a href="https://it-it.facebook.com/technogym"><img src="images/utils/facebook.png" alt="" title="" class="post_thumb" /></a>\r\n                    <h3><div class="red"><a href="https://it-it.facebook.com/technogym">Facebook</a></div></h3>\r\n                <p>\r\n                Entra nella nostra pagina Facebook!\r\n                </p>\r\n                </div>\r\n                \r\n                <div class="post_small">\r\n                <a href="https://plus.google.com/+TechnogymSpa/about"><img src="images/utils/google.png" alt="" title="" class="post_thumb" /></a>\r\n                    <h3><div class="red"><a href="https://plus.google.com/+TechnogymSpa/about">Goggle+</a></div></h3>\r\n                <p>\r\n                Entra nella nostra pagina Google+!\r\n                </p>\r\n                </div>\r\n                \r\n                <div class="post_small">\r\n                <a href="https://twitter.com/technogym"><img src="images/utils/twitter.png" alt="" title="" class="post_thumb" /></a>\r\n                    <h3><div class="red"><a href="https://twitter.com/technogym">Twitter</a></div></h3>\r\n                <p>\r\n                Entra nella nostra pagina Twitter! \r\n                </p>\r\n                </div>\r\n               \r\n                </div>\r\n                               \r\n        </div>\r\n	<div class="clear"></div>'),
(2, 'Footer', '<div class="left13">\r\n <div class="logo_f">\r\n<a href="index.html"><img src="images/utils/logo.png" alt="logo" title="logo" class="logo_image" /></a>\r\n <h1><a href="index.html">Techno Gym</a></h1>\r\n </div>\r\n <p>\r\n ©2014-2015 TechnoGym S.r.l. - TechnoGym.com® è un marchio registrato. Tutti i diritti riservati.</p>\r\n \r\n </div>\r\n \r\n <div class="left13 fdivider">\r\n <h2>I Nostri Servizi</h2>\r\n <ul class="list">\r\n <li>Programma di allenamento tra cui uno -contro-uno ad insegnamento personalizzato.</li>\r\n <li>Palestra con tutti i tipi di macchine per una forma smagliante.</li>\r\n <li>Offriamo pacchetti con i nostri personal trainer certificati.</li>\r\n </ul>\r\n </div>\r\n \r\n <div class="left13">\r\n <h2>Contattaci! </h2>\r\n <p><strong>Email:</strong> info@technogym.com <br />\r\n <strong>Telefono:</strong> 0321 807090</p>\r\n <div class="socials">\r\n <ul>\r\n <li><a href="https://twitter.com/technogym"><img src="images/utils/twitter.png" alt="" title="" border="0"/></a></li>\r\n <li><a href="https://it-it.facebook.com/technogym"><img src="images/utils/facebook.png" alt="" title="" border="0"/></a></li>\r\n\r\n <li><a href="https://plus.google.com/+TechnogymSpa/about"><img src="images/utils/google.png" alt="" title="" border="0"/></a></li>\r\n </ul>\r\n </div>\r\n </div>'),
(3, 'La Nostra Palestra', '<div class="left_full">\r\n      <h2>La Nostra Storia</h2>\r\n  <p>Nel cuore di Piola(MI), la palestra Techno Gym è considerata punto di riferimento per chi cerca benessere ed aspira ad ottimi risultati. Fondata nel 1992, la nostra palestra è diventata un tradizionale punto d''incontro per ragazzi/e signori/e di tutte le età. Dal 2006 la società viene ereditata dai fratelli De Gaspari laureati in scienze motorie che riescono a trasformare la palestra da luogo dedicato all''esclusiva cura del corpo, all''attività muscolare, alla fatica e al sudore, ad un luogo luogo di piacere, di socializzazione e di benessere sia fisico che mentale.\r\n </p></div>\r\n  <div class="left_full post_left">\r\n<h2>Una Palestra Diversa</h2>\r\n<p><iframe align="right" width="50%" height="315px" src="https://www.youtube.com/embed/txVsaLeYh1Q" frameborder="0" allowfullscreen style="margin-left:24px"></iframe>\r\nTechno Gym è una palestra familiare che si distingue dalle altre per la professionalità e per l''attenzione scrupolosa rivolta al singolo cliente.\r\nL''idea era quella di creare una palestra che si basa su un concetto semplice:\r\n"Fornire ai nostri soci le migliori attrezzature, miglior personale e atmosfera possibile. Focalizzarsi sul servizio clienti, la soddisfazione, la fidelizzazione del cliente, fornirgli gli strumenti e le risorse per raggiungere i loro obiettivi di salute e fitness."\r\n<br /><br />\r\nIl nostro servizio di Personal Training è efficace, funzionale e divertente. I nostri insegnanti sono parte della palestra, e rendono ai clienti la loro disponibilità. Poiché operiamo come una squadra di personal trainer ogni allenatore è consapevole di ogni obiettivo del cliente, il progresso e la storia di formazione. \r\nTechno Gym offre ai nostri soci un''esperienza di fitness che deve essere visto per essere creduto.\r\n</p>  \r\n   		</div>\r\n<div class="left_full"><H2> I Nostri Spazi</H2>\r\n\r\n<P>la Palestra Techno Gym copre una superficie di circa 1200 metri quadrati. Il centro è dotato di un’ampia sala pesi con macchinari per la tonificazione e l’allenamento cardiovascolare, una sala cyclette e una piscina per le attività in acqua.\r\nNon mancano due sale destinate ai corsi di gruppo per adulti, bambini e ragazzi, sia di fitness – si va dal pilates allo spinning, dalla salsa allo step & tone – sia di arti marziali.</P>\r\n</div> \r\n  <ul class="portfolio_items"> \r\n        \r\n        <li class="left13 gym" data-id="id-1">\r\n        	<div class="gallery_item">\r\n                <img class="gallery_foto" src="./images/stanza/sala_ballo.jpg" alt="" title="" border="0"/>\r\n\r\n                    <div class="gallery_caption">\r\n                    <h3>Sala Ballo</h3>\r\n                    <p>Allora vuoi provare la sala da ballo? Stai per entrare in un mondo di classe e tanto divertimento.</p>\r\n                    </div>\r\n            </div>\r\n        </li>\r\n        \r\n        <li class="left13 bodybuilding" data-id="id-2">\r\n        	<div class="gallery_item">\r\n                <img src="./images/stanza/sala_arti_marziali.jpg" alt="" title="" border="0" class="gallery_foto" />         \r\n                    <div class="gallery_caption">\r\n                    <h3>Sala Arti Marziali</h3>\r\n                    <p>La nostra sala per le arti mariziali è spaziosa, confortevole e molto luminosa.</p>\r\n                    </div>\r\n            </div>\r\n        </li>\r\n        \r\n        <li class="left13 video" data-id="id-3">\r\n        	<div class="gallery_item">\r\n            <img src="./images/stanza/piscina.jpg" alt="" title="" border="0" class="gallery_foto" />\r\n              \r\n                    <div class="gallery_caption">\r\n                    <h3>Piscina</h3>\r\n                    <p>Una piscina per le attività in acqua, dalle attività aerobiche ai corsi di nuoto per tutte le età.</p>\r\n                    </div>\r\n            </div>\r\n        </li>\r\n        </ul>\r\n  \r\n     <div class="clear"></div>'),
(4, 'Orari', '<div class="left_full left_content">\r\n    <h2>Orari apertura/chiusura:</h2>\r\n       <ul>\r\n<li><strong>Lunedì :</strong> 7.45 - 22.00</li>\r\n<li><strong>Martedì :</strong> 8.00 - 22.00</li>\r\n<li><strong>Mercoledì :</strong> 7.45 - 22.00</li>\r\n<li><strong>Giovedì :</strong> 8.00 - 22.00</li>\r\n<li><strong>Venerdì :</strong> 7.45 - 22.00</li>\r\n<li><strong>Sabato :</strong> 9.00 - 19.00</li>\r\n<li><strong>Domenica :</strong> CHIUSO </li>\r\n</ul>\r\n       </div>      \r\n  <div class="left_full ">   \r\n  <h2>\r\n       Tabella orari TechnoGym per il primo semestre 2015\r\n    </h2>  \r\n <ul class="program_list_detailed">\r\n        <li>\r\n        <span class="col1">Orario</span>\r\n        <span class="col2">Lunedi</span>\r\n        <span class="col3">Martedi</span>\r\n        <span class="col4">Mercoledi</span>\r\n        <span class="col5">Giovedi</span>\r\n        <span class="col6">Venerdi</span>\r\n        <span class="col7">Sabato</span>\r\n        </li>\r\n        \r\n        <li class="even">\r\n        <span class="col1">09:00 - 10:30</span>\r\n        <span class="col2">Pilates</span>\r\n        <span class="col3">Yoga</span>\r\n        <span class="col4">Step Plus</span>\r\n        <span class="col5">Pilates</span>\r\n        <span class="col6">Yoga</span>\r\n        <span class="col7">-</span>\r\n        </li>\r\n        \r\n        <li>\r\n        <span class="col1">10:30 - 11:30</span>\r\n        <span class="col2">Acqua Gag</span>\r\n        <span class="col3">Acqua Cardio</span>\r\n        <span class="col4">Acqua Gym</span>\r\n        <span class="col5">Acqua Gag</span>\r\n        <span class="col6">Acqua Gym</span>\r\n        <span class="col7">Acqua Cardio</span>\r\n        </li>\r\n        \r\n        <li class="even">\r\n        <span class="col1">11:30 - 16:30</span>\r\n        <span class="col2">Total Body</span>\r\n        <span class="col3">Karate</span>\r\n        <span class="col4">Step Plus</span>\r\n        <span class="col5">Total Body</span>\r\n        <span class="col6">Karate</span>\r\n        <span class="col7">Step Plus</span>\r\n        </li>\r\n        \r\n        <li>\r\n        <span class="col1">16:30 - 18:30</span>\r\n        <span class="col2">Salsa</span>\r\n        <span class="col3">Bachata</span>\r\n        <span class="col4">Yoga</span>\r\n        <span class="col5">Salsa</span>\r\n        <span class="col6">Bachata</span>\r\n        <span class="col7">Yoga</span>\r\n        </li>\r\n        \r\n        <li class="even">\r\n        <span class="col1">18:30 - 19:30</span>\r\n        <span class="col2">Step Plus</span>\r\n        <span class="col3">Pilates</span>\r\n        <span class="col4">Step Plus</span>\r\n        <span class="col5">Pilates</span>\r\n        <span class="col6">Step Plus</span>\r\n        <span class="col7">Pilates</span>\r\n        </li>\r\n        \r\n        <li>\r\n        <span class="col1">19:30 - 20:30</span>\r\n        <span class="col2">MMA</span>\r\n        <span class="col3">Thai Boxe</span>\r\n        <span class="col4">MMA</span>\r\n        <span class="col5">Thai Boxe</span>\r\n        <span class="col6">MMA</span>\r\n        <span class="col7">-</span>\r\n        </li>\r\n        \r\n        </ul>\r\n </div>\r\n  \r\n     <div class="clear"></div> '),
(5, 'Attrezzature', '<div class="left_full"><H2>Tecnologia e Innovazione</H2>\r\n\r\n<P>La TechnoGym è lieta di offrirvi le migliori attruzzature sul mercato in fatto di tecnologia e innovazione.\r\nAvrete a vostra completa disposizione macchine isotoniche; macchine cardio; tapis roulant; attrezzature per la riabilitazione; panche multi funzioni; manubri; bilancieri; panche; accessori per la ginnastica di tutti i tipi.\r\nQui di seguito potete ammirare alcune delle nostre attrezzature offerte.</P>\r\n</div> \r\n\r\n<div class="left_full">\r\n<img src="images/attrezzature/u53.png" alt="" title="" class="border_img" height="430" width="430" style="float:left"/>\r\n<img src="images/attrezzature/u55.png" alt="" title="" class="border_img" height="430" width="430" style="float:right" />\r\n<img src="images/attrezzature/u57.png" alt="" title="" class="border_img" height="430" width="430" style="float:left"/>\r\n<img src="images/attrezzature/u59.png" alt="" title="" class="border_img" height="430" width="430" style="float:right" />\r\n<img src="images/attrezzature/u69.png" alt="" title="" class="border_img" height="430" width="430" style="float:left"/>\r\n<img src="images/attrezzature/u71.png" alt="" title="" class="border_img" height="430" width="430" style="float:right" />\r\n<img src="images/attrezzature/u77.png" alt="" title="" class="border_img" height="430" width="430" style="float:left" />\r\n<img src="images/attrezzature/u79.png" alt="" title="" class="border_img" height="430" width="430" style="float:right" />\r\n</div>\r\n<div class="clear"></div>'),
(6, 'Testimonials', '    <div class="left_full">\r\n    <h2>Opinioni dei nostri clienti</h2>\r\n         <div class="post">\r\n            <div class="post_right_test">\r\n            <iframe width="100%" height="200" src="https://www.youtube.com/embed/4ROq9EqBflI" frameborder="0" allowfullscreen></iframe>\r\n            </div>\r\n            <div class="post_right testimonial">\r\n\r\n            <p>\r\n      Simone, July, Matteo la vostra palestra è di gran lunga la migliore che abbia mai frequentato. I suoi tocchi personali e l''attenzione fanno la differenza. Kim e Charlie sono state estremamente disponibili e mi sento molto soddisfatto dei miei miglioramenti!\r\n            </p><p><strong>\r\n            Paolo Bonolis</strong></p>\r\n            </div>         \r\n         </div>\r\n         \r\n         <div class="post">\r\n            <div class="post_right_test">\r\n            <iframe width="100%" height="200" src="https://www.youtube.com/embed/XNqD5KPJJXc" frameborder="0" allowfullscreen></iframe>\r\n            </div>\r\n            <div class="post_right testimonial">\r\n\r\n            <p>\r\n      Le attività a Techno Gym sono diverse, ben pianificate e divertenti. Gli istruttori sono esperti, professionali e realmente aiutano a motivarti. Incoraggiano e ti spingono ad andare oltre, ma fanno in modo che si facciano le cose nel giusto modo. Il personale è professionale, gentile e sempre pronto ad aiutare. \r\n\r\n            </p><p><strong>\r\n            Maria De Filippi</strong></p>\r\n            </div>         \r\n         </div>\r\n         \r\n         <div class="post">\r\n            <div class="post_right_test">\r\n            <iframe width="100%" height="200" src="https://www.youtube.com/embed/XnucFZAvhMc" frameborder="0" allowfullscreen></iframe>\r\n            </div>\r\n            <div class="post_right testimonial">\r\n            <p>\r\n      Sono stato un membro di Techno Gym per oltre tre anni e di recente ho incoraggiato molti dei miei amici ad unirsi a questa struttura ben gestita. Il mio allenamento è parte del mio programma di riabilitazione cardiaca e sono riuscito a perdere oltre 13 kg, ad abbassare la mia frequenza cardiaca e la pressione sanguigna a riposo in modo significativo.\r\n            </p>\r\n            <p><strong>Bobo Vieri</strong></p>\r\n            </div>         \r\n         </div>\r\n         \r\n         <div class="post">\r\n            <div class="post_right_test">\r\n            <iframe width="100%" height="200" src="https://www.youtube.com/embed/hA40RP7xeqE" frameborder="0" allowfullscreen></iframe>\r\n            </div>\r\n            <div class="post_right testimonial">\r\n\r\n            <p>\r\nHo evitato lezione di ginnastica dai tempi del liceo, ed ora sono sorpreso da quanto vado spesso. Ho perso peso e guadagnato massa muscolare. Sono più forte, in forma e faccio cose che probabilmente non avrei potuto fare nei miei 20 anni. \r\n\r\n            </p>\r\n            <p><strong>\r\nArnold Schwarzenegger</strong></p>\r\n            </div>         \r\n         </div>\r\n         \r\n         \r\n        </div>      \r\n  \r\n  \r\n     <div class="clear"></div> '),
(7, 'Tariffe', '    <div class="left_full">\r\n    <h2>Le Nostre Tariffe</h2>\r\n    </div>\r\n    <div class="left12">\r\n        <h2>Ingressi Singoli</h2>\r\n        \r\n        <ul class="program_list_detailed_half">\r\n        <li>\r\n        <span class="col1">Tipo</span>\r\n        <span class="col2">Durata</span>\r\n        <span class="col3">Prezzo</span>\r\n        <span class="col3">Note</span>\r\n        </li>\r\n        \r\n        <li class="even">\r\n        <span class="col1">Entrata singola</span>\r\n        <span class="col2">1 Ingressi</span>\r\n        <span class="col3">€ 7,50</span>\r\n        <span class="col3">*offerta del mese</span>\r\n        </li>\r\n         \r\n        </ul> \r\n        \r\n        <ul class="program_list_detailed_half">\r\n        <li>\r\n        <span class="col1">Tipo</span>\r\n        <span class="col2">Durata</span>\r\n        <span class="col3">Prezzo</span>\r\n        <span class="col3">Note</span>\r\n        </li>\r\n        \r\n        <li class="even">\r\n        <span class="col1">Multi entrata</span>\r\n        <span class="col2">5 Ingressi</span>\r\n        <span class="col3">€ 30,50</span>\r\n        <span class="col3">*offerta del mese</span>\r\n        </li>\r\n        \r\n        <li>\r\n        <span class="col1">Multi entrata</span>\r\n        <span class="col2">10 Ingressi</span>\r\n        <span class="col3">€ 60,00</span>\r\n        <span class="col3"></span>\r\n        </li>\r\n        \r\n        <li class="even">\r\n        <span class="col1">Multi entrata</span>\r\n        <span class="col2">20 Ingressi</span>\r\n        <span class="col3">€ 110,00</span>\r\n        <span class="col3">*offerta del mese</span>\r\n        </li>\r\n         \r\n        </ul> \r\n        \r\n        </div>\r\n        \r\n     <div class="left12">\r\n        <h2>Abbonamenti</h2>\r\n        \r\n        <ul class="program_list_detailed_half">\r\n        <li>\r\n        <span class="col1">Tipo</span>\r\n        <span class="col2">Durata</span>\r\n        <span class="col3">Prezzo</span>\r\n        <span class="col3">Note</span>\r\n        </li>\r\n        \r\n        <li class="even">\r\n        <span class="col1">Very small</span>\r\n        <span class="col2">Mensile</span>\r\n        <span class="col3">€ 55,00</span>\r\n        <span class="col4"></span>\r\n        </li>\r\n        \r\n        <li>\r\n        <span class="col1">Small</span>\r\n        <span class="col2">Trimestrale</span>\r\n        <span class="col3">€ 140,00</span>\r\n        <span class="col4">*offerta del mese</span>\r\n        </li>\r\n        \r\n        <li class="even">\r\n        <span class="col1">Medium</span>\r\n        <span class="col2">Semestrale</span>\r\n        <span class="col3">€ 260,00</span>\r\n        <span class="col4"></span>\r\n        </li>\r\n        \r\n        <li>\r\n        <span class="col1">Abbonamento 12</span>\r\n        <span class="col2">Semestrale</span>\r\n        <span class="col3">€ 455,00</span>\r\n        <span class="col4">*offerta del mese</span>\r\n        </li>\r\n        \r\n        \r\n        </ul> \r\n        \r\n        </div>\r\n        \r\n        <div class="left_full">\r\n    <p>Tutte le nostre formule di abbonamento includono tutti i servizi nella quota senza alcun costo aggiuntivo e senza limitazione di orario.</p>\r\n    </div>\r\n     <div class="clear"></div> '),
(11, 'Registrati', '<div class="left_full"><h1>Crea il tuo account TechnoGym</h1>Un account è tutto ciò che ti serve<br /><br />Ti bastano solo un nome utente e una password per accedere a tutti i servizi di TechnoGym<br /> <br />\r\n<form method="POST"> \r\n        <table width=''100%''>\r\n  <tbody>\r\n    <tr>\r\n      <td>Nome</td>\r\n      <td><input type="text" /></td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cognome</td>\r\n      <td><input type="text" /></td>\r\n    </tr>\r\n    <tr>\r\n      <td>Paese</td>\r\n      <td><select><option>Italia</option><option>Bangladesh</option><option>Ruspa</option></select></td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sesso</td>\r\n      <td><select><option>Maschio</option><option>Femmina</option><option>Altro</option></select></td>\r\n    </tr>\r\n    <tr>\r\n      <td>Email</td>\r\n      <td><input type="text" /></td>\r\n    </tr>\r\n    <tr>\r\n      <td>Crea una password</td>\r\n      <td><input type="password" /></td>\r\n    </tr>\r\n    <tr>\r\n      <td>Conferma la tua password</td>\r\n      <td><input type="password" /></td>\r\n    </tr>\r\n  </tbody>\r\n</table><br />\r\n<br />\r\nDimostra di non essere un robot\r\n<div class="g-recaptcha" data-sitekey="6LdYsQcTAAAAAG3anKDti5VQAEzUZTYQ4s8aU1w5"></div>\r\n        <br /><br />\r\n        <input type="checkbox" /> Accetto i termini di servizio e le norme sulla privacy di TechnoGym<br /><br />\r\n        <input type="submit" value="Registrati!"/>\r\n        </form>\r\n        </div>\r\n    <div class="clear"></div>'),
(12, 'Login', '<div class="left_full"><h1>Entra nella tua area personale TechnoGym</h1>Inserisci nome utente e password<br /><br />Non sei ancora registrato?<a href="registrati.html">clicca qui</a><br /> <br />\r\n<form method="POST"> \r\n        <table width=''100%''>\r\n  <tbody>\r\n    <tr>\r\n      <td>Utente</td>\r\n      <td><input type="text" /></td>\r\n    </tr>\r\n    <tr>\r\n      <td>Password</td>\r\n      <td><input type="password" /></td>\r\n    </tr>\r\n  </tbody>\r\n</table><br />\r\n        <input type="submit" value="Login"/>\r\n        </form>\r\n        </div>\r\n    <div class="clear"></div>     ');

-- --------------------------------------------------------

--
-- Struttura della tabella `stanza`
--

CREATE TABLE IF NOT EXISTS `stanza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prev` int(11) DEFAULT NULL,
  `id_next` int(11) DEFAULT NULL,
  `nome` varchar(25) NOT NULL,
  `descrizione` text,
  `descrizione_breve` text,
  `img_link` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `stanza`
--

INSERT INTO `stanza` (`id`, `id_prev`, `id_next`, `nome`, `descrizione`, `descrizione_breve`, `img_link`) VALUES
(1, 3, 2, 'Sala Attrezzi', '<p>Nella nostra sala attrezzi troverete macchine per l''allenamento della forza/resistenza che vi permetteranno di tonificare tutti i distretti muscolari, sia degli arti inferiori sia di quelli superiori. Comode e sicure, in grado di far lavorare il corpo con maggiore efficacia e rischi minimi per le articolazioni. Istruttori esperti e qualificati vi guideranno nelle postazioni di lavoro, offrendovi assistenza e competenza per un corretto utilizzo dei macchinari.</p>', '<p>Macchine che vi permetteranno di tonificare tutti i distretti muscolari.</p>', 'images/stanza/sala_attrezzi.jpg'),
(2, 3, NULL, 'Sala Ballo', '<p>La nostra sala da ballo è spaziosa e confortevole, dotata di specchi sulle pareti e realizzata con un ottimo parquet.\r\nInoltre è dotata di un impianto stereo all''avanguardia, il divertimento è garantito</p>', '<p>Allora vuoi provare la sala da ballo? Stai per entrare in un mondo di classe e tanto divertimento.</p>', 'images/stanza/sala_ballo.jpg'),
(3, 4, 1, 'Sala Arti Marziali', '<p>La nostra sala per le arti marziali è spaziosa,confortevole e molto luminosa,inoltre è dotata di pannelli assorbenti per assorbire gli urti sia sul pavimento che sulle pareti per evitare al minimo qualsiasi tipo di infortunio e salvaguardare la tua salute.</p>', '<p>La nostra sala per le arti marziali è spaziosa, confortevole e molto luminosa.</p>', 'images/stanza/sala_arti_marziali.jpg'),
(4, NULL, 3, 'Piscina', '<p>All’interno della nostra sede è compresa anche una piscina per le attività in acqua, dalle attività aerobiche in acqua ai corsi di nuoto per tutte le età. La piscina misura 15x10 metri ed è riscaldata per mantenere una temperatura costante di 29°.\r\nLa vasca è munita di una copertura telescopica che la rende utilizzabile anche durante i mesi invernali, mentre nei mesi estivi viene rimossa lasciando la piscina a cielo aperto. La piscina Fidia è inoltre il punto di riferimento per i laureandi della Facoltà di\r\nScienze Motorie dell’Università di Milano che svolgono qui le attività funzionali ai loro corsi di studio.</p>', '<p>Una piscina per le attività in acqua, dalle attività aerobiche ai corsi di nuoto per tutte le età.</p>', 'images/stanza/piscina.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
