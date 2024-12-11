-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 01 déc. 2023 à 14:07
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `base_miniprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE IF NOT EXISTS `participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `url_photo` text CHARACTER SET utf8mb4 ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `participants`
--

INSERT INTO `participants` (`id`, `nom`, `prenom`, `url_photo`) VALUES
(1, 'Montgomery', 'Brenda', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgWFhYYGRgZGhwcGBocGhoeGhwcHBwaGhoaHBocIS4lHB4rHxoaJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHjErJCs0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0Pz80NP/AABEIAMUBAAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQIDBgABB//EAD0QAAIABAQEAwYFAwQABwAAAAECAAMRIQQSMUEFIlFxMmGBBhNCkaHBI1Kx0fAUYnIzguHxBxUWQ2Nz0v/EABkBAAMBAQEAAAAAAAAAAAAAAAECAwAEBf/EACIRAAICAwEBAAIDAQAAAAAAAAABAhEDITESQSJREzJhBP/aAAwDAQACEQMRAD8AQNESIk0RIjzzrIzBymATB76GAWgoAwOkdS/pHnw+kSH2hfoSDC0VP4ovbQxQ3ijGOzUiz3kVkR7WBQSwGPSwGkUl6ftFKOXqaco1gpWBsvWaCaA1PlFK4wZst9YL9nOEvPdgqEjY6H0rGiPspIkHNOmEuBcLTXepjScY9DFOXDNqxO/pE0ViNK9r6do1+AGFzAe5FRYMTX6ftGhkYSRqktFJFmUZTSIPLEp/E10+YFdiCPS8eMlDasbec2GeYEdd6G9q+VIG4v7KWL4dsw/Ix5gf7GP6GCsq4aUGjIGseFeseTaqcrWI2OsDTcVS4iyi2TYU7/zyin3hatBb94HClqE3g2UlK9v0MN5S6CxQCS9CawZjJfL/ADrFCL+J6mDMaId9QEUtL50/xEeYaawzVuAdPWLX8Yv8P2ihPjjOn0wTh8UG010vBCzDC3CChH+cTStXvoRCyivhrGAfyjs8A4p2C1BiIqZeap01hfBrDJo07wTloIT4N2JAJMOibRpKnQU7KyIg0Te0RMABFhYwvcQwOh7GAWNoZGDx4fSPf+Y8Qco7RKukKwkW3iiah1AP8EEkax20YwvSeDa9Y6ZNNDS0Qljn+cTcWilJALsElakjMaaefn5Ro/ZDgwxM1rFkQ87eFSTotth9YU8EwDTSFWtWYAdz+2sfVcLhUwUhJMsC9BX4mY+NjE5ySWw7v/T2c0vDrllLcglm7W9adIwfFMcalnZiWNh8R8yBt2jZ+0OJCy8q0zADMToAdAevYax86xb8zHVjbMdfXoOgEc0W5StnRjSUf9KVnPXNUAV1J+tBesXz+J4kWDEoLV0N7b6x7hFZSGJ1vQaRZjRmVtaakDU12qftFfxbqh90LcJMZmrVqit6j19fONZwPi7eFiP7T06A+UY7DoUegXVRY/MxpeGTkbldSD8LdITLFM0bD/aDhSYmrJRJwHMtbOBup6xgsdh2Q5WBBrvY6fpH0SepUa1ZKEdcvUeYgfjXDlnyg9qr8YFx5n53gYczi6YuTDatGHlDlEFUvTyP6xX7gpmVvEpp5enlFzrcR2Wc3wVOv4h77wTjB5bxTPX8QekW4q/z/aCwIky86/4j9IGGr/SDCnOKn4ftA6DxRk7QWVSxYn+8V9RE08TxGWLN/msSTxv2+8Z8Ai/Ejk+X1iGH/wBA+sTn3lntEcNT3B7GN80Zg+CFwfOHLG0J8IKEdxDeFn00UQMQIixoi0KgnhuKeUAtB4+0ANGRgyT4R2iYOkRkDlHaJiAZHh3iQ0jqRwNoDYRago59f1i2aLfzrFYHN6mC5MkuQqi7UHzO0U5tio1//h3hsiPiHplHKtdjuflB8/i5aeX1BAVB0HXuaRVxKesnDrJSyoQjdS1AXb7Rn+EzC75ybKCR5AWH6RySuVs6YQS2+mi41ikWUWOiNQdGmUqzU3oLCMlhMO8xs5NiwAGgoLtFXGsQzvLT4QM1PMk/M7wxwhJVRsug8z1hlHzGxlt0WY2QzsXNBmO1gANKegitcOa3vp8zpFyua0+cEMCBfWAkOCvgBUMf+9oJ4W6gHMLg2PpSn0i8TQUpuNPMwomsVB2aM1YeDl5mYhl0BKuNaennHgxhlMwJtoR1U+XaE/D8Uc7Cuo+sEY2cGObWooab21iTjsN2CcTlUIoCVIOU/b5QK62U+cMOHMHXI1dbHcHp9IhPw1JQb++3aOzE7WzkyRpiWdLq6/zeITRVqecOsPKBmioresBTJQGII/vP1i3klZHJzj/GB1TlJ7w9myQHWw8BP0MBS5Y9wTvmNPnGUTehOi2b0jxf9U+Y+0Xqlj51ikH8UeY9dIFGL28B7GKsKfwm9Ym3gbyr+kVYFvw29Y3wJDDC47w46Qow20NjtE5dNEg0eGJMIgxgNmOgFt4OGsBNqYIAvDnlHrExtEcL4B6xIC0B9CiREeLHDWPRAYQA+P1MPPZ+WC6mosa1NaAA3PmaaQjbxnvGu9n+DPMIsVSl78znXKOnU+UGT0aPbL+M4cOiZaku7VJ3JFToYS8GbIyId0ysO+YiNnxTB0yIllU1dthSxIO8fOWxdJrTKUFbDyr+0QgvSaOpyWmWcUFJiE/lpX/E0h5w+dLUEs4FQAAesJcZODXp1I3/AIYHSdNnKKhVWuUcpY23PSOiMfUaZKU/LtG7w0mSy1RgepHWJzJKKCTteE/CcCUZ0LDl+JbBh26w2xUklKipAF+tIjKNOiyl6jZn8dxhNEAF6gtYQJMcvRjMDE/CKfO0Gz+Hyjnd8pIAEuoqo6kgXrCxcAjFMgo4NWZAaEUsDXU6xZRj5sg5y9UDS59WNLa17CG0qYAnMFIaho1gARpXbvCsYQ+/KaCoPpDp3ShBFagDsNNPnEZeUy0baBpDqKgVWtCKkGjKdiNQRDTishkVlI3BNO1dITpwk+8VQDYgjcFelI1nFUzu5oQpAH+6lCP0imNxJ5E2jO4anvE86fpAnERScD1ofrF4HMp8v+LwNxPxqbaAfeOlS0czGONNHX/6zAuHX8ButTF+NepQ/wDxwLgm/CceZ/SN9YPiF6Cx7wHMtMX0gyTf5/tAWM8YPb9YT6EJc8rj+bwNgTyN6/pBbjx9oEwI5G7mAuML6dhhp3hxsIUYbaHAtSEl0yK2EQMWNbaIGB8CRUQG+p7waBAc3xGMgBOEPKB3iyKsJ4exMWiAwo9reOGkSAvEV08oAQRZdXp5iPqHs8SJKlQEzAjMLmldBXc61j5rhpTNN5aClGYnwqBuf2j6hgHREWoLBQLnVmOgUbCEzPSoaC09FvE8K85QqjIpF2NzlG1Opj577T8OVGyLYnRdwouzHv8ASNzO9oCucEVVLGmhY/APIdY+bcbx9S7ZquxvTZdh+8LhT9FFaVMDwzgkA3oQT5iot8of8M4QoBYFlBaygmh8/KM3wmQzMBfmYfLePoslAiDoBF5S8sMY+lbKcPhcgvqYb8ONa16QoZpmTMioWY/FWyxb/XzE5Vl3/MNP+ok9lFSCJnDpecCpRiK3uDE3wqoD9CIW4kYgorOVLLU8tbDp8oNTE50HWBsKSMhxWf8AikgUNgflWK5aZiX/ADb9KbR5xiWM1a3Yv+tBHuAahynSgP2MM+C3sf8ADXWmR9QQytuKdDDKSrMXvdjmG/eM5LnZWS+oYEb0pp9IO4ZiXqchNetNtYkri7Gf5KmCzpDKbrQAsSSdb1hfjRm02NYecSzOvMwz100DVGo6GE7yiFJ3/aOuEvSOOcfLOz5sn+H7xTgX5Zg7GOwwJK+QIMRwKAlx/aDFF0X4CSTc9z+kC448w7QXLW57wHjdu33gXswU5181r9IFwJqjdzBOy+a/uIE4d4G9Y3xmfSzDaDvDcaDSFGGNh3/lYbrtE5WaJEiKzFjRWVhUws8EBzvETBogTEeIxlYC7B+HsYuG8VYIWPeL4zCjjrHKI96RyvT5wAk8KlHz0NFocoua6VodY3Du4UErQ0qtWqanS+51vGYwWHeeypLBZqVJCjKq9WY6RouIYUSkRC7PNO5NQBSlFG1OsSybKwpMzz4ogZa7sw82IvGQmrRr7k940XEJJUZy1BmAC75tz2pCtcLnvWpJNOw1JimJ0rKSVleCxOSeh+GuQ+uh+cb9DmW4saVj5pipfiHQUr+hEbX2V4oJskBvGvKw7aH1h8kbipIWEqbixljOJypQq7KBoNz8oE/9QyBdcxNNMv1jzF8KQsHRVVxapAIIO14qOJdSBy/7ZS19DCJRooosLke0cl7BqHdW1PY6Rc7gKzLZdu5ECYeQjNndBmFlqACAe1hA/EsSUSg9B5k8o+dIVpX+IedEuPYEil6VraKZM25NPh+pgvjEtpTe4bxIqs9f7zmgVZdSKixP1ABENVIROwmQSzgV7fK8F4dnQmhuNPP1iyWFVQyHmGoO/nWKUxBYdz9NSYldj8CXxDEZqAXG2/2ih7oCdcx/QxpsJKllMsxanL6wp4hhFVaI2ZcwO/LUb+XaL4siqjnyxd2IcCeY3iWAIzuOoMQwtnPYj5RHBn8Q+sWTJMgi0Zh5/eAcdt2PzrDADnfuTAePGnY/rGfwBd8KH0gTh45W7t94LA5FPneBsItnH9x+8BcaMRw2nqIcjSE+F09f2hvtCS2wxPGEVsIsYRFhCVoJEQJiBzGCRFGJ1hlQGSwJse8FdYGwe/pBJreA+mOA0jlB/gj1Rp+kcNf50gBN1wKXMXD/AIYUEjM7NQE6ADpSm8SwUpWerkO9L5boAL1zHT7xlDinfKHzZQBQDfahFvKNJIQSJBUZg5vMYbbhKk0B+sQmqKRBvaeTKAM0FSKZSlNvzAdYwn9Vl0tWwFNB+8abGy3mhmy6LUW+E2HptGXfCEk/P5aQ+OqplmqQPiJykZd/tHcExLynDJ1uNiPP9Yk6Gttd7XB0zdqQxfDSw4MtiVZzlDHmVQAObpU1MdSryc9v0bPBYpJi/wAqIKGHQa6RnWlFSGW2xpHTZ07QN9I53HZ0KX7GuPnS0BoYxeOxzTHVh4UYMBpUqa/aGD4d28RML8TLyntDRSiJJtkuK4r306ZOUEZ6MBrQUuD1grhUszBlQGvT084D4a7KMy0zobVFQR0Ihrw/ijzJqsURagK2UUr5ws7oMQQy3E3IbDcDQWhlhkULUeFTWo1iEpQXmudCKdienrA+EAqOcW+E2r1HmYm9jrQ6TEZ1ZqnoCK3odYFZ6VoagkA9K6wyTK6AIb0stQPl1jO4kMjJmBF+hH/cPj3olk0UEUmdLn6xTKak31METxz94Cm2mesdP3RBlpajsPP7QJxAXHYmCpg/EI7H5iB+Ii6/4n7QX8FLAPwx5EQNIXx9/tBaryGBpYu3pX5Qg1FWFP6w62hPhtPWG1bQsgJnNEGixtYi0KhisCB8Ub+kE+sDYrX0gtbsBLA/FBMDYQ3PaCKwAkhoInKmZTUa7b6+URG0MOH8OMwkmygVLba2FTaA3syKMGCZqtrpsTpv/wAQyxHE35kbNqamgpWug2HeHXC0w0hWdn944FBQHKvkK2J84W4rNPBmF1ly18ArqwN1VRqabxNq2VhInhluKE0plapOh8vIwj4tI925NLNoNwaQScXlotkK6Ncs+4zDaPBgXmVZjU61bYb9zCRVbfC7dozWMehJpalx+0M5XDssr+oBJFRUk6jSw1NNzHnGcIGAI00HT1ilZeQZQSQ1A+oFtLdKx6H/ADxeSNI5M8lBps0GFmBgKXrFk1KQs4aCjDYH6Rojl1IiOWEoSpl8c45I2hWsuvUwgx685/mkaue4AsKQoxOGSuY7mnqftGxpylVGyaQklKyG1anWD8LRDmNLXP8AP5vFOJnAGw3uesL52IZ2MulBWlR1/eDKPptrgkWkqfR9wqer50LDMxsKi46d4jjOGsGDaXBr2hRhkAJVQDSxc7Ea5Y1eA4is5GlsQxC2NdKfcRzyXl2iy2qYtEwhkp8PiO4IvT5w6TjAPiyErlKqwzq1VJdSprpTUUpWFOZsxFsvXXbeAeIS5iTC6MGDrkaooVVhdaaCwsfOK41+RDJuNDPis6SZqIVyOx5mSmRSxoqZOgBBqOsLuN4BpE8q1CK8rA2bSAGbNyu9JjtNZySDQKAUUVGpIvD/AIhImuXZwzgy7ZFoiFAprUmvxV846nHVnN6p0Kpn+r6LAeO1X/EwS7fiIeqj9YFxWq9m/Uwnwb6ESxyEeX2gWUbn+bGCZOh7CBkF/Q/eEQzZ5hvDDWloVYXww1BtCyBE2nFeGKZTmgBUV8I27RiWj6zPkg1U6MKfaPl+Pwvu5jobZWIH2+kc+GfrTLTp7QHFGK1G1oIa0D4nbtF30kRwniMGKL+kB4XxekGqLwGFHqSywCjViABuSbCkbX2smL7r+mR0RpSqVWuUNMUqwUnzofWEfs4iq3v3pyHkB0LAHMx/tUXPmRBvtxhhPXDXAzzGZ7E5qKKlRv0XvF8SXltkpt+lQqBzplNQWmF2J1OYVA7An5CLZ7GiojV5SdKgAGrfM3gmbgsktFcqDk8GpWh5QzfE1BfatYRPLdSWNgaAUOzVA07RPI1K/JbFcasWTuJOHqrCq6W0HXvDB+JlQM7h7VAQZVqetbmBeKYL3Q5qZ2FfNd7jeAkFFWgzMb7/AGgKMZJUirk49HbYozWVmWiqKAAW7x48slmJFjQj/jzhvwPDo6ZypBOqtanz2hnieHoy5bAGlL6HrFcGb+OdVonnxfyQtGcR6i519AOvrBEjGulqhlGn/HWHUrgLuaoyO1aE1FTTah1psYJT2VxLDM3u1r1N/pasenP+Ka/I8uDyQf4iSZii5ChaMTav8tC3FElwcwCrZa/FQ3II6mHHGcMMGjIyt7yYPw31CqLOppYn6wjZyRVlKi1B+h8qxFLBBNot7z5GkROLlaMtLEHubiA5CAMjC5u3kKVFT6GCTg1ci1ADfqY6QioWVdDYV6R5jkt+T0lHjl0m+FIlLlW5Bag1PUwJg390GcaUoo6m4j08RcHIuwoABpWtaeUUoS6u7LojU1pXaES1sZ/4EYfGsRWhItcDTv1hvh5eYE1ND10/eFOEDCWSDStvPztGk4cCZRbKGpykZqEGlNOkNFXKkJOVRtiWVhkMx0yqrgEVpmqHo1jWxI8o2WBnFUeblLVVSMoHY1U7qL0jMcbkCTM98AW5ENhyhl89NK0jU4XnkJQZwWbMFtdgpGbqoqfSOvVUjha/K2YnjCIs1GlMWRhVSRlvXmFNgDpCzEjm2+P9YfTsOHkz1XKf6SYHDrXnDMVeg2AFPlCHEnmvfxfUAxN6RZF8ixP+IgUWY+dfvBMo83+2BW8R9fvCLozWj3BjlAhmotC3BLyQ0XQQJAifXMQbA9Iw/tphKMs0fFyt3GhjXGbUQDj8OJstkO4sehGkcEPxkdPh+aPm7aQPihp2gmbLZCVYUKmh9IHxOgjrVEGVYY83pBu/8+UBYazDsYb8KQGdLroGDHeirzE/SGq3Rvgbi3ZAmEyHnATNWleYM9beG1D1FoZ8TnVRWBJyXVqDlLcq06Gm3lC2dxNM5d6qaZPeCjhkDMQVvUk5r/LaLeIHNJUsWkjOjhXFS2SpAtvS5B6iOpxSjRz23JMEmTM7qvMSoobkgW0r5D9YMwmF946IaEVGUbW0r57QoXATnU5HOc5WEtSBUtozk7C1oMmYNkdi1SqsEzKcozU8QIuTWpoLARzvHKK0dKmmxT7Rh2muWrYk31r07AWgLBkpMJaqioAag1sSKtpU7jaNAkhAW941CDZibEHUHzrCnjUyXlVpbBlY5SpzE1UWuaUp1hsO0bK6dfsZSeKumdzKJQzD7pa0YV2FRUoDXX81I0vs3xFJk2W2YDxAgjRsppUGMHIwauC7u8tSVVGZXcMQDUEi4PQCHz+z80rnSapKgZCHI0G4dQQTSK+E3ZNzcYuP7N3jsBkIpMWrknw0ApvURXicUtlGcMt7vVSRYMOl4w2D9uXRQk2QjspuxJBtqCNPWLMf7bBlHu8Oqsa1qbDtBfSXljr2um53lJ7wTCoLsfylqBR8q/KEU+gfm0Gvy6Rm04i4Jcklmart1Pn6QwfiAdSp21bqvnHPli7uzrwtJV9CsTxSWOUU0NuvcwuEwuLrRdgKlidqDpEOF8OafMyKoFPEQK28tqxqMNw5FVlAusssMzGrkmlSei9B1ikccUuE5ZHdWZL3pViGUgUAIAqwrUElugg6VJ5EVb5iK7VBP3g/DYYuWmADKq0cVHIKaU86H5wPwbEiZLotmRSBv5qYlkVRtFccrbTCWKkClBlJt1r0+sHcMmKrEBw6TLA3sSRVWpp5GFXEJbPKGUAOGGZQKk+YIOm8RwmEmVyvQMdCCNTpWkTj+P5IaVS/Fmu43K94UCoZisAhWwUFxSWzCmimpqIH9jJcwScQkyjsHlkDNatLLauXlUGkVSJJWqlXejAEISDt4WrVdTpF3BWRDP5Tll0dlrVmRcwB7qjC+pMdMJps5ZwpaC+FSxMnYuWyojTFy5VoRTKQGsNSbx87xgIcjp/+afaNRwZHl4kNKqwDc19ZTmstyTqdyPKEvtJhTKxTodiOuhWoP1gy4COnQOh5/wDb+0Cz/EfWCmFG/wBv2gbEHmbb/oRNPZV8JYQcg3hkBb0hbgjyesMl2hZdFib9Z8Td4FPBJofKZgyFQyvXl1ApTrcRSuHmZV5qt7woy18K5suc+W8cv8dHSsyYp9pMHU+9Xez/ALxmMToI+iPgGJIqrLWhIbVAtWYDcAxheNYfI7DYG3mNjFYOtEp7doAk+IQ54ZMKOXANVRjtvQEgG2hhNIHOIf8ABZaETmmS2mKsvw1KrViAM7C4XtFYq5IRukLMZgXRgJhpzhpjClEU5fdim1msBuY0LYQByHVlVFZ8jmtbrRlWt6ggPXe0VysEi4UPiM7MpzyzrZqCUGNTVARQVgLhXFCuIJm8zzJbB81+Z2BUEE0U2BptHS+E09h2Hwxd82VVKoazCWNACcuenLnY7KP1g2Tg3VCEoysAFmGpcKas4A+EltTstBAvBc8zEsWcZUJChTRAdyVsCIfcQxIbMqEtqOUHMSGy+gJ0UbVO0c7lJukUqMdsx+IwDO6ywC4IuEpm7kmy3O8PMDweWiEiWgfwsFyW/MMz7kUrFmGwhlcq2di3NQ7eIhr1XXbWAeMYqZLyIhyGaTzFK0RdCrHlqa3FzzRfFDyiOTL6YcOHiYys0nKErkJmIWFqAUUDY1F4Ad52FRnebiJ8knKQrpVDT4w4JANgCIXYn2knSHdA8uYyhaFpYU1LUay0qQAKWhrK4piWkTJoVQ7NVZZUUaUnjzodQVirVE09mRxdJqGYFC5WKU3K6h2oKVGloWFqWMaXA8Uk52IkS5SPLIIRy6ZiRdwfACLU23hNxvBiXQqcyNUo2xWvh6GnXeFktWUjJp0waQhc5EFzBk+aqKUAGaoqx+vftA/DmIei6kHL3Ih9hOCq6sr/ABHmbcEUPKdgL+ZrEvPp0yjmoqxt7LYNUlFyaIFzMTUMTQgE9R+0K5XH/eYllpVGdgh0ouVVy9iVr6wx4hgPwBLUs6y1FVzsoYUtUi4GtBGUThcwojylZswzZgRytmNEIqLgAXh5XVInFpythXFW/FmgVBXKRQ5SyEqGRqa+IUPmYY+z/Cs/vJwORMxREHiJ1oRoABQV6wDicU+V1IVphAzZQHKCoLCoGpNO0V4HHzllhZJVGq7kkgzJh6UYWAFqDWFSUo00O207QViyyNWlGHzp5QemIdlDHLpWq6nephDi+JvPmSmcUJXI4ApcGlQNjD+VhcxCggEi62PcRyZYKLpnVjk5RsJlTltRyWy1W5AubmvlC1BOBNGyCcGFbVyWR602sD/zDLEy0klH/wBSXlIa3Lmy+FhqCGpboIo4ZKzLLbNlGVqmlwS2aq7Uqx+UXxQaIZciHXs5h3LvMylS4VZaHXIgopPSuw1hN7fYfLiZbj/3Ja161QlTXuKQBikxWHmsEdmJXOjVJLVJ57fl37wVieIz8Ug96UfICVPu8rucv5huL6RaX9aIxTcvX7Ez+P8A2/aBpwu3Y/aCJh5h2+xiiYKk9r/KOcseYV6Ka9YbytB2hBh5ZdqbaxoJa0A7RpgQyxntDMsiMciIUGxZag172ECNxly7PcFlpY6WpXvCsNUVjtonr6Nf6G7cbchAa8isutubUwvx87PQnpT6axTHk/wiDVGuyjD+Ne8afAGmGmKAS02bKQgbIGFR3JIjMS/EveNjKzph5QlFROLjJUAsrPW4JsOWl9tYpj/tZOXCjiOHQlpCOUl51TmFcrJzTES/OF1oYA/8plI4GR3Zsrl3bLWx5vKpve+kPSicqhSjKxIHjo2jTCxuXPNEMXJrKqSq5WOVyeYubX302jpZFPehFgJMxJ4w8lDuWNicuuYnZiaC1Y1SIUUBWaoYsM55qvaxtpW0YzD4cTMXh8zFLMWJqoIXRSRe/UxsyuUmpIGWi1NTyjr94XzT0H1a2FPLBYFs7NkCZEIsmj85Hiqbwn4kMOZqIyZ5ighPxHKralA9lJsdIY8QxJRCo5GKqzsBmZQ3wpl1JFz5WjIe1cyqAh35XBoEKoNs+c3BGw84Ks1JhczFNP5JTsjqpzpMlgOhUG4mUuo89YX+zuJdsamckkpMR1DZgRkINq8vbziODxWJRx7xnmIhB92KFX6AubZbi9YI4JhShmTS6CdNDrLRL5A5IZvPpbpDN2CKp7MtJA5r0ArfrQ0oFOpi/K+UqhLrlz5dRlrUsB+WC+J8OcMDMGVyQM4I9256qa8jndTvAYkMhGd8jIaAFTQDW5FrnY6+cD4UYy9kAhnMrUqaFTvlqMyqfPWNVieHAu/MTQ8uUV0tqaVMYjBY1kBmSzzKVZwVUqQTYi1r2ptGgke1jO6ossJUEEqud3YAcir8IJ+LaNqib9XaNPKwbrLehuZbCrbWqW9BaPl39KwlCZojOUrUjO1Km3YbxqONTMa4KM8xlIFVQIqVIBocpqaaX6QPhZ8zCpLlYhFfDuWd0KBih6I1daUJEBNBimtsG9lJuWcF5aMjDIajcEKrbNao7Q34hwwLkm0Iqzpm3UtqR5gsrV82jhxHhstWdMNNzi6EgCttRmbkHnSK8TxWU6qvvwgqW0LkO1K20AUADNepvSGT1RpW5JgHD8GqFXns5bmKqgzTGIOtT4FFLudb0g3DYp9VSxZQXDCoJNrV03iudxGQFKI9yOZlYlnP97NT7AbCPeHsrZUvSve9DWvpHNmST/Z0Ym3/AIMuITM0ghySS5Y0Bo1BQsSNNqRVw/HFEUKAMq0APhp17iAOPYsZluUAUEZSwza0zUtQiFEniFJqjMWVqC9TStjQ9IOO9C5a2b+agm5XkuBPQDJnYqpqQaEgGgYgGgFyAIFyAMjBMqOwVHBOWqkLNYK11Gcsb6gwmnYpaBrAqBUmoGu9NK+URxc6YUTI71VmJBczMsogDOqseRBWlDzEjyi0lZHHrQPxnANh8Q0tvhNjsymuVh5EfpCxwSxAp/BD3HzjOlIcpd5ctvxCSHCI4Cl1FnBDamhEJpcnKe4v6xFpplk7R5gFpmHaHI27QnwZu1b6Q3T4e0TkGItQxPrHR0K+jHlY6d4Y6OgAIIvML6kD6gfeNviWyzWFBSWyUAFNgB1pQCOjoviEnwvJpzDWpr50NLwPxR/dy0sGLgMcwqOYE6bkbGOjosQMvKFZzM3MUIW+9TS/7RqVnGWBYEWIFKU2oPKPI6M+BXCfFAQqoGIZyjFxSoZzQEA1FFAoBCb2mwjPh2czXohunLlY1ABNALj1jo6M+hgJvZnh6MM71YA2Qnl1pcbjyjXSJIlyZ2IX/UWZ4jc5DbINgoGlBaOjoL4ZnTpSFzJKgymVgUN9AKmulTW5pGIMwrOOHqSEZllvXmCg2U/nXyMdHRjRKJDNNmJIZqI7BTlCrfZjbmp0Me8GwxLzCHZTKBIK2Njlsfh366+sdHRn0ZGu9kppxHvGfd6AbKAqqAPQX6x5/wCJcwyxJkr4as5O5agUHsAdPKOjoDAumJ4mAjOgFkNCfiY9SftDBlAVBQE/04mk01apqCOhFo9joK6MyjhsxEViZasWpSuwJpTzEX8GxBafMWgHIxqNaADlB2BrHsdAktBXRt7ZyAJauNbA+YKiMUmJPKaCo08r0jo6HS2xJcL8TjWoo2BBI/NQ2B8vKNLgU5XmkklESYQDQO7zAKtTpmsPIR0dCsVfBv7FyV/qypGZXlHMGuaTCFcV89fWFPHMGJU90BJCkgV6Xp8tI8jojMqv7C3C+JobJoO0dHRKXR0f/9k='),
(2, 'Bellingsworthhhh', 'Bo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU-38afgqzLBZ85GBnnLx7Xj1UE-7lwRF6Bw&usqp=CAU'),
(3, 'Walters', 'Becky', 'https://m.media-amazon.com/images/M/MV5BZDczZWNlNTEtNWQ0Zi00MTliLWFiNTEtOTcwN2MyODQzM2ExL2ltYWdlXkEyXkFqcGdeQXVyMDI3OTIzOA@@._V1_UY1200_CR485,0,630,1200_AL_.jpg'),
(4, 'Taylor', 'Ridge', 'https://64.media.tumblr.com/2f92004e784afab773a568dde39c069a/tumblr_ol84u877ii1uem9fjo1_400.gif'),
(5, 'Montgomery', 'Brett', 'https://media.tenor.com/cc9DIAoxOFQAAAAM/le-coeur-a-ses-raisons-le-coeur.gif'),
(6, 'Montgomery', 'Brad', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCAwPEgkKCgoNDQkPCQ8KCQkJCR8JDwwZGCEZGRghFhYcIS4lHB4rHxYWJjgmKy8xNTU1GiQ7QDtAPy40NTEBDAwMEA8QGBISHDEdGB0xNDQxPzQxMTExMTE/MTExPzQ/MT8xMTE0PzExNDE0Pz8/MTQ/ND8xPzQ0MTE0NDE0Mf/AABEIAQgAsQMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAECB//EAE0QAAECBAMEBgUHCQYEBwAAAAIBAwAEERIFISITMTJBBkJRUmFiFHFygZIjgpGhotHSBzNUVZWxweHwFRaTlLLCRVPi8iQlQ2N10/H/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAjEQACAgIDAAMAAwEAAAAAAAAAAQIRITEDEkETUWEUInEE/9oADAMBAAIRAxEAPwBAzJX1LOqkUdlhsG4emWcFLHkSm06R2KKaEq4bvrnA54fRVSHy+ECOb1gU2JxQkekVTlEKye+lfnQ4mOUClzilNh1RDhkipHRO7D3+zRFE2hiNStEjKIcBZMnFNEFAQLicPgH2oeNyrZE4bhkYIVxmJWAPs+WKUmwUUCBg4ogoTgiS8A9Ykgk8MbBQEnAHTbcZIGfzoml2BNSBm5aDxE2ssJdbrZkP0Rt+UfQKCTarcQkJAsyI/F1ofZi6RFb8syqqg3EqFaYBS35pbojKVFLL1HVqbQeIU7CHtgx0FCivkqqnrO3upphfMTrAXuA24Ttwibh0DOvmKtPckNNg4pB0vggGVzbiEiFrAuIe9z/q6Op3AiW0m0uFB1kHVjvDJwlQ1FCRojEDfJvUJFxJ8P8AphuU6EuNxojjClYb201D/Xqgla0xKKYhnMHTZgaUWATwnSi+aGz86JqXorgm11mXNBD7Jbijsyq2hIioi22jbEOUlsrqhIWF0QYVYrICCiipqXyxbj3BlCLHiFFbuWHGTbJlFUVopWqeoYgSWpWqQzVwd1YhdcBM0SNVJkUgJZVV7IkSUXKJPSBTOkdNzKruTKDswpA/opeMbgjaOeHwxkHZhRbJClv+6CV8YFw/MUgtY5JbZtHRGqJAjm9YMXKsBuotd0ShgsxTlEbYAShtHFEFK3QG0IvZGJJhd2aJ3iLqx1LAJqLoqQog7MLRvIh8vdrGsY9hDCWmANCYlmLZcOMx43C6txbhGDpnFHW21yS9NIuCXLsLLVClHiDJRRpgdREY8/8AdCqdnSdKg1VtRG87r/KKRr1Bugp7pLMKpi4+0iXaGzbQy+b3fpjgxfIhN+bIhUtQNigFSntVheGHITjLmVbRcMTG/hiZTIVS6oghiZ3dnF/pjRRiRbOpxBFWjEasuOWkLjpHb3tVYMlwdBDcRpBb4GjvWwuLOAnjbJG2yFFBDJu+6/MV0rEzc+Siuu5oLbRIe7xafih3gVDXDMeJ5omnZYEVBIxJvqr28rS9UQHihIrjBLV42xILh0vJ+KFDU02O3sURHaEYiI2eb+UDzLgGIuI4iuCVwd4c4TjkaYyuA6OS7pAYfnGHB1QRJ4uIpapXNEWos9KxXlfUlF9tVF1C1iGi7xtjUy8pIriJSul0R/fEuN4DsegIaEIEKooqNwkMIekIIqt1SN9GJtTbJklRTArrS6yRrpDvbVIyS6yocnaEZAO/lEZii7kjt0lRKQKZFnSNkZmjtTJUyjpkxqgiWXswKj1MiSsbRwMrRz60U42hrAfVexf8P+UbgT0sfN8MaiejH2Lxh2QpTuwUUC4fwwUXqjkls0jo4WA3a1XNYMWA3N65Qkhi3ECVVZbKqgpXGIlYRW8oNCdFkEsUb1MRARFDIUGEeITSi6aovAFgauFYiYcVx2XZQisQb3SHrFS6nxR1QhhEOQ5OYcdXauqhEv5pkaW+su9A6mKOCqCNoARWjxEXCP2ozaInDpG0RuLrIOn5sQGcsFCW7aEWvXpFNWcV/gthJThIgi22KKjekxHTX/ugARdcVwyJVVeoRc6FEjUyjqi22CiikQmfdHhiGfdsMAZWpW6u7DW6HWLOiatEgUslcJy4S5xyRIAWoRXqerVy0xjYmViCikqDqMe0uJYxyWc4RRSNS1WjyhXkaiwNAWprvqVoxJLShHdbmltvtWrdB0thbpEKkiiN3D1oszOFCAAiaaDA5fRSheyjk2YFRU3Fwl2RtBUVNF3L3v3Ra8RwkXEVW0o4gxUJknW1VskoqF1utbDi+xnKPUP6POKExLimSERAXdJCT/ph30mcELFXmUVrDzUTZcRc23RIfZrq+iHfTBwbWSJFIV4SiZRuSE3URGc2C+KwMU0NVSiRCky32QO84K0tyWN48Zl2DhVFzokSiyNEJFhY26SV1ZQQE7aJBktetA4NPBXZE13gv9e+NwF6QvaMbh1IVnpGHcI+zBawLhyaUgpY82Wzojo4WBHd+VYMXLOA3s1VeyBDKbiJkrs0hLX5Qv3wThygAm4VSdXhIh4YhxcER5zJc9RadMQqdUcREoiW22x2rMVRl6TzMyukBWq2Wlq06oFECIScVctoIRxKjcerdbpu8sWHBpO5t5shQiV4RAbeK77oJVEcYuRBJSbqALjbiA4QiWYX5Q1wnoq+a7WYOiLzMeL5sWnD8Kk5cQcdFScs65XiPzY3PdIpcKiAkVNPDpiOzNuqQO3gDLaIhKRU4epGwlmQRSsRVS666F59JAPhQh9oo3LT+0ctFaoQENo64hmkQ5x5sUQkEUHq2jCmfxlARRCpEsRYijgXJRbbtPdhMQkRALa0JS1OEPOHGNkylQxYcfNbxIhLiIh1lEOK4ckw248mT4BcVvCULGH5hDRsXiRb7bbViyYW+TqKjg2uJocHvJFNOLTM01JUU6WWioKpVVHf4daDukzinLyJ1qtoiVvl0xBPSxNOutEipY6Vi+BcMD4gVzOzrwmLgjd3uKNIr+yZlJYaEdEjEGMtpyjdqx02Y0YgovOMoqRtEXdG0SGBzs07PtRkdWeU/hWMgA9Rw3gSC1gXDkS1KwUq+qPHltnVHRxlz3QK/Sq0T50FLTku+BnVSq6soSGVbpACidybiESu9lYWhXWm/h1Q96QhUWizohEFw+bV/tKEksJbSm9F4bY7YO4mctkMrxoiqiUPTHo3R9gQbQiTUpkV0eeLLkjpIOVCtFRG+PTsJUTYZIUTMNYj29aJ5fGi+H1A0y6bhFc4oNhqPVZl5oSYq4w2lxCRuKN4iZaiTtt6ow3xJl07GGkpcYkfqHVAZYZRHEeQjcU7yMA4friY1eTWSdYERktqGTYiCnYNo35xZuiEkYE4+aIoLaAQCEohE2022q0LT17YuEtLi0ANpSqCN1owSarAoprZNMSbbouNuNoTajxW/wC6KLP4cbThCNwohaCEo9PYUUBR3qg3EUV3GWmjVCbUSJeIDhL+uR1ZUQAqo4Jal03WpdFgw5hKCSpWg6it4ogZk2lqSKol3S4YkIzFKIq2wN9gjGhR0olRVW3ERLyGzT1rV0xVZtohbdU0oKkFpW6tWqLrioCbbZkmYOjaPeuhB0rbQWQURtQjAiFfhjTju0Z8kaTZTvDlG926Oa+6NoXjHZRy2jtFVY6Tly1REheKRtDVIVAmSae0vijI5uXvjG4KY7PUXZ4ZdJltuUUgWUA23xFTIT1FpLNLdQpmn74X/wBvzxKJSzbYN3EAPThCA00lW8qak1boX4XJviPpUtOuOqmgwMLxZIVuFTAqoSaRiOcCcnXGpnFn2hZbEGRFsEZS0V3AAomdOcZdYrwrs6oup9LAMwalH5eWVXwvflpdJwxbESI1PqlUrae6tYh/tgCbmJrb3AJmMoT0oDkzMoS21IiRRaFS3UFVoMVlSGoK0OyllcIHSAFP5HrXd6ggSw36R4Yw2OGtSpk62/Pi2xYdm1HZtEK+VLjL90KrQYTJeloMLIkYzpk+gg4MucuFpFpIrTEUUaCW7nHn8i6iFRU82qLr0yYl2WsPkmVFyeOddcdbbc2hiAqIihiPag1SKfNyZsOq0QqiXaD6pdXSXWoQkkNrDQ14FAJISOClUQxuG6Lv0XcEmjFF4XSEhLqxUgIUFV2aEijf7Q9oxaMHl1aGo5I4AOh6o5pPFM6Ixp2WYGm1QkQRRV4iHigOYlEXTVc+r3oiV4kp2LxRKy5TetVXrFGaNKZLKSTTSE4qJtF4jgJ3ExAZmYNLqOWAEETkwqAS1REthWkvLqwpTZlcZXiAFYW/TFbEsK2LmumLjqOAMs4Jpcl1ulYXzGIThECoNgqdxmRcKdgjHZTTTaG22Ki2vCRayL2ihcs6iqhKutBK0l6qxpX0iO1elkE3AUVcFUQxEhIuGJ1crnXf1YQBjLqpa4qGHdthjKTCGiWFUVG4fL4RDTRUZKWg5DEbSMbhQxIQtvuWEPTNkgYAyTimCIUUr8uyHJOEmpBuVdNneWEnTIzVgNpQV2mlu6+2L48SRPI11aKKSJlbXzXRq36I6qmWaRiU5KnxR22cVGra9sZb2x0lO1I3VPfBY6RzYXdH6oyOrh70ZAFF1eccabamh0Grvoc+AEoCaiglQvNaQ++JpzJptHHgBFIXNmYaiu4VG3ywJO43KPixKuNG3Kg4czMkFL3ToIj7KaRRV7IhLFWlUBFRJUEQE3CW0UHy17LURPLvjLw0rNkqvEqbO64FGwuoQoVw/wC6Dp+ZCmHum5a8zhfo7ACdhMuCVpF7VuaL90JJrFBK9BG4Lrbyo2ReyO/64hDETRUMUcuTTbZfdEux4ux1h+OHJqs6TDUwrtw3zPGVvMToqjQrVr5Y06Tc22E4/Osy7yNbKUkglyZaYBF0oBZoVea7813qsJEbm500BAJUuG8i4RTzFFlSRZbBuVNBIBtO0wvtUrYXZRVNjpt2gyXlmZlllxtAFxAsPVYOniQftfFDsQBttpuiirbYWkfq724oU4c0w2SMXIMu4InbbpA+33w9mGGyRKuLYgiRBfp+bGEsnTF2kQoQqme5eGOkGlVWF0nPNGrzYEi7NwgLVB6GqoqVTMdMRVbHYPiBqSA2O4jtKKviOIkZKKIqIJbMRui3k0mlzco6vaWEwYC5Mm46pDLtatYhqJfL98VFpPJMk3orR3Lk5QUtt4uLxgcWQVbkIi13WiC6YvKYPIMiqEG1NB1OOHeRQrdJrMQYARu09eNeyEoqslcKWEsm0cE7usC6oc4JLkHGS3Keq7sgoBBaVFEicwFKECUTvREpWqBRSdnGKTJNAhA5s3FO0HLb7YRzOKPkljk8Lg8RI5LC5/CGGI2nahLVB5eJQsdZFMxGi3fFCjLq6CUbyQJNGlVB4ERdWqQD8MSJOurkTsuScVp4eH4IkAFRFuQS7unVG0l0WlBy9nhh/M0R0Rws8udRkVqPWwoP/rgcppUzEZGv/wAYH4IJclRSic/ZgSYARoiInm0xUeWwlBUb/tE+3D/2WH4IyBLh7ixka/IyOiHTJ3W7SSA1TVeVt3xRKYsmiX4elyDaJFaH8IZYaMubZIkrLqd1hObAjKpJcK/EVI03IshVURp6gkJlszAa1u8baDGDnllKOBa1KsKSEkiqqgahQkgpTMSublCGnCRmPV90TtNsGRo2gEicAtyZnaXEPKB1wh8lNBU1BLrTKSMMx5EP8fNCU7wy4wT9MdmpjNUbLzDtE3/REQvOqtxsmqd4nUC2OGW3yQhFiYVUuIybklMhtu61OGJwm5q4HAR0tmQgJFKBbT2beL1w6opcbemdOvOmhnshFOG30lNX1QK81PEKo066LS6SbR3bfapDKQZcecMJhqZNDC8tmYXkXlCnd5Juh4Tr1VlwYmhcQPkhcmEASQeWnrW8olzcXSQShWLPOcLm3JN8TcItmZ7OYQtS79/uKL+3Moi2kqZ6gPqkkVrpNhCEavtpYigRvgZ3kNvFdAWFY8IiEtNrpEbWphOqnVQvvjZrvFNbMVJxlTLyryqlEVKQU2poAiCafNFdCZURFwFRxvi0Ff74NlMbYNRFStLunoKMHF+Gykg52TccrVPi0QK7hQjxOfNAYPPEUFKIQ08xcUKpnERVSJVr3RhJML+zAlGxzVxVXukMDzzwNiREqICcRd2A5idEUUycQR61xRVMZxYpgkbAlRgOHTxL2lGsONyf4RyTUVgZ4ST0yc67RSqQmKXaR/pLYONpSVSUKonWE1tH6oF6P4QkxKvPNkRPjNk2UqJ7G4LRIVEtxFdy/wDyJ5rB5puxXJJ0AcL5PaTSARZd2tYqcV2yVxVKKydI2Kr+bX2dov3QSkk7RFGTcVLbhK9fugEJERUlJl5Qt6rurzJvhkzIPO7NWGZxBAdNkwH0jctSjNxSKlFxIXW3QFFOSJFUbguqGX0QM9hr5ILnoZkhBcNlTt9rT5ocTGFzRr8pLvmqjaN+ICFw9Xh56fdAMzIzjag2smaoo27P01TIU+mFFrwzbYr/ALOe/QT+BfwxuC/R8U/Vbn+Of4oyLz+E5LDLYgVhKyKFLAIg6AnsQ1KWRDvL3Q+wtwQaQ77WULaDoUBFB1F8266OcFw6qKZOS9to2NkxrFdWerihu3gJTNyE4oNiQkdwfnPDIt3q8ImXFJvQLkjSyKJic2TQOUcvMtnLSTJ7G4i1Clo5+KqqxExJvEiuT0yQpxnLMUARy3EZV8v1Q4mMIQHG3HnNYNFYFinbcupdNd+lPVCnEcHObJEHEpcGE/8AScbMCqNtyl5tQpErhm8UWuSP3QZJvsGhttC0XUNANHBFPNzKNYhKMOAoONmICJE0Ev8AIkS06o3UIvXELPQ5+UJJx2dA2wbITRGyuFCTq+EMWpQXK7CYEl4zHZK4PmtuVNXvhPhmpYE5xTtMpEq8qvN7FwZejuzAZt1WyBBtuQyGm+0soZzhqLjaPNILt1pjJmDbToeQV1kSb0rz9cN3uijfyriuTCuOFc2ZSyAUvcpcOfFq7YMZwiTa/wDEuNE9NA2Nrk0Ag0wgpptEcq/ijb4XJoqXPHayVXpbhr4YfOOG22DYzI+jnZYbwEXEXPhtSnljyos1RUyWPQvyi9IHnAbYU2ibL5NttsU0jQS6secqtKosdEYKKpHHOTk7YbJYg+wq7M1sXUYFrEvmw1LG2DGhtCJ28Rjf8JRXVJPXGlIV7UXvd6G4KQozaHJYoSJaL5WXaboHPFCTcZEvwQs09qxrLkiwlxxQ3ySJn5g3FqZKVOr1YjFd3KNfwjEzjTCJbvZffyb4i2w46Exb6OfVMFcK7yj3vGLhPSsiRPTbLbsxW0xZZNLSQbbktJN6c0Rd0eedGSJsNuiAqG5sxvbQy/rTHossBSySk5LkItm6B3kH5q625Cz3eHqjKSTeTSMnHKdC+TncJuN9xh0GxC4QcdRwBXTkIEnFxfDDdcNIwSblpqXRtQEwB8VZsQl3XjW76EgLpFgjk428+zKo1NIe0HYgoNOr1lHulFWDEZgG/QybK8LRK/iJRXdE/HF+FfLL1l8bkJrZo4ikT1l5DK2zIlnbURyWkRzQq0guPIQuoOzEily4uIvZHTAXR3pIMu26VVIAbAzFkUMyztLiXcmnKJSxubcQngB9UvJy9x5QAUpuK3L3LEP/AJ09DXK/UL/S1/5p/AUZBf8Ab03/AMyX+BI3C/jj+VfQ16MzUkLRA+pES3aHAW4eIo0eJkJk1KNk08ulsjO8hEl0pb7MIcHaemvk0ARNNd41ZtuXvdbhHKGbazMs5UmwVBMrjfp1hG4rt5DxUpHSYEz8wLbg+lg6poesy4CQfP8AOg2eeYc2IycuTyagJwD0jmI+Nuod8KcR6QtLmsuTku0BOTYtnYRWpq0lnbBGDdIZcibQZMAlyttJsEARuS6olAAdJmBqjDs2jYrp9GbMmwrq4jrq4fVDWcbBhBRp7ZDpIWgbvH13DnCiclRdcQ5dilw3bRtxTEl7RtSkGLIPS4C4di1G4nn3+FeLhKAA9CmSBBdEiCwjE23NJIP9c4WY1OErTqoyQybQjcLY3iZeYvCNTmLzh2SoS/pDijdY0NgklbdRVoKUEt/eSKb0r6QuNtOMOC2ExYQGLZKYEQ8SDuz7eXisD/APOMZxNJmYN0hQQQSABHh3wtcVdyxgNEaqS5V1ERRtxkx8U710ViyThFjI1Vc8oy5YYGrV7FjM43QlyVY2tEzUoANVrG0RE3rWOfGJ5Fq91htUqiuiJD3oAL1heDvNS5KQoQmIlaI3kBcVbfnUr9UWLCJaaMU+TVyVMBBxsqgAkKbyIeEvGIiwCcQGnGZ0lIB2hMXKAj1tBEulUu592HGFYs+3tGkdlzdUBPZ27QjXq3FuIvf9EYptljqVnJoWyl222iSmzInHleIarbw+N1KQix/C3hB11yUAnjb2TZlQCqOoeHhLxhnMtzAoj5NK2+h69GnvVG2tpQC9hrk0W2dnDJpNYhfeY95SEshS7n5YaA84lpl6WeQwFdptB2jZ9vd1ezSLvK9Krh2bUoG2XSYhrD7P84U43gzbquPSLoK4GkwDRthHVxFxF4pCzo5iBNuNiVoogkAtkFl3Fbq33Xc4NgWe8/0J74P+mMgX+8E1+ri+NY3DEcy0y7KuDspsTcVu4WzJAIUJCHTy62UFPEL52uPk06bg7UZoltpXcJU9nLzQsTEi2YPE0CEjthCEuhiKCupfaUSh2WPPijLTUgw4Ry4ui46wFwmqkRIJKlCp6ssorywDsWwuQWWREmLJdQMSsPU9w5CO8tV3bxR5/hwTcg4rkq36TJKIlNyZ6NOkiUS6q9i+VYsx4xOlQRl5cW1PS4bQ6c7S0dXVy3JDWSmsRS1wkbGTuF4zbk0ACGhXJu3cK51Tx5QgIsDxYZkRck3FSgmbksA7EmlK0dd2QiunNV/fBWJG46qliM+2gINosSpKWxXTal5IlxeNEgCRdcdfdlHXyFh5vZkQCLIareG1NXCKUh7O4dJy7ToNqHpgN3FuArfMHgPPlypAMXf2o+2wTUs0RtCZE4+IKBkJLbUrcxJC55+6PNOmc4bqtbZEKYMiN0xoHDp4Ryi6M44ssk24ZXirQiNpKBUrbX7W5c484xqdGZfmZoUoFwg1ps9pfihrZL0BhkiIleGNGuSpSOkVVzyjklpkqwgISROURLlksSqCr4RwQInPO6KQHC13Ru1N65rGXckiUAVaqqQxHIt3Z7kiw9DZJx2bbCWBCcBl0yItezThu918IiPkiUi1/k+mil3MTm0BVQZAW7yFDtUiEh4vZrE5oaLRMvTMujkvMKbjSFsnNmVlqCg2qQjn1d/O6IpWWE9obEyLboHtJZhxpW7rREiQi6tRIfX4RzISyvOq++/smTctceItVSS6n2fdDTFsNk2XBeVwkBQEhl2zvMrUHK0equmq+WkRooYt45PzLbTTaCBo2Ivi4KXAvWuu5cPxQjxvFGWNqxOzwq+YCZsyTSXiuq3UOXD4xqWmheGZfflAmGktl2mzasuUuFDKulELnnXKBHZbAiokxhQsOcTmwmDArhtu03KlFuqlPVzh0BVUnJqZcViQbdQF0WhrK0uL2YdTmEutLLo4ijMbATK0kMt/2dPKH2C4Zg7RC4D70uYETrZAKPCVq22kJJUq3jTPrRNieGsG+Tb+JE62oEQCUorIinEKcSrb40hghN6VM/pMv8P84yGf93HO/K/X+GMgsYIbYPAgS6psUuIxI9mJF1rbuwR3dsO8IxFmWb9FmlaI2iIg2biGRLW4rh70AjhkuDSGwKG+luki2hChcKiPW1D7oM6Ny0uakU2yANgBAR3WCBCvWLt1DASD44TThtzbaKLbjY2kbVmY6Sv7perf9cM2MRmxbblGmCmGzldRm1qtLSXKmW71eqOMZblVVtth8G5cAIDANAidbtJFxdX3D6o6wjGVYbFpEV4VOxowHZiK9W0utUuWS6ecPwYIhuoYs6JdwTK3ZtqZiXDxdXq+r1Q+HCpdkPSXpwiNJc7HTcS0rk0296EONzBEUpNE2APk2O0bt0ipaaW/Wtc4KnMMdeFXymbGjACaAC4LUERQgHLvfFuhMDz3HnSb223oSkwdxiOq8k03ePOKoNREB58UNelAkDqy6uKdHCNwbtNfKXZCoBUlROUPwlkoAuWSR3YKajjZkIImaXQC46pLvgAkfeQlqKUSIFqu+MRFX1pwpEogiZl8IxQjkQXJVySOiOmUcma8KbowRrviRmAKrVeXmi39EpIzbUgW1t2b2ZXkllBQblLPhTVFTWiJu+GPSeieAmeHszVSEldN6wa3EA3CVvLMboG6BIe4ngUrsxcbm7EabEC13gSktwqVtc15RXlcohA4KvNoel+VqHCttDu9msFTTtiJKtujMumYiZAamIqPDaArqRO2GOByckBuNzLgEaMCbjJklolW0ryFaXeCRGig3o1iMmjLcm4aEqAblpt2XW6iuHPUm/50J3SWZmiZbEQZcmS2QuNcKFbmPO7T6olxr0don2pNslExEDfEtoA3JuC3h4RjlvDp8GWSl2xUTHbOvBoIbdIpp9olhoQbi0kxJm24iobi2uNgQWEKglorp6vDTxFOUBYVLPk29PsiSOE5YDhOXiKFpJba1uS6tFyiJ+dfNFSalCdJBsAyO+3hGlw8PCXxRFOdJCZZbkJRjZPGFjd9TILusRFxdb4YrNYGCUm/05z4oyA/RGu0/wDHKNQsiLXgWHGjQTzjlzSNG5aDlhAhDutLzdixzhTbRuTEpNOKDLw6TI9Q26rRIh72apAfRg8TmGUFoEJkOqWgTz3fxid6YeE9k5MiDtpXExLoFxDpFLut6+2GA9xHAJdllx4EAzABEgIUtcz06UraSffWsA4FNNAr7k0wJMoAlaDaWgtSHh8fqglvB3xE5tx9HQWUO9sa3GJJpQbcv+2FGHbJD2My0Zyro2WX6RTqqNvDS2vhnCsArE52SdcMmxcJsh0Ntt35Cmpber1l/jCmdxmcaa2DTBttIN7ZGd5ULUKld/CLTi0rJg0rcqoi/sxcaFk0udQdOou7qqq+WKSGIbJubJ1QJsQMSNw7zJR0jbclaKReqBvAyjYpNE/MPOktSK1FtLnQf90RqYtpvq5AwnxGqalIijVVLNUrFURZszJVqq+aMEVX742IU1LujojRN0MZlUTdviMyXtjSmq0rGIn0wkhGCP0xKKeEYAotEiZByplCbGQrVK+zHpsjiMwErJysyDwygy4AJAFgiltor8Q7o87lGVcdlWqccw2BXeZRj1aUkH5l5X9pa2rotXGdgU6qWl9ULwEDYAEsswLzhg4CBaG0+TICrpW32iGkH9IZCVa2TyObNw3yO0BQyHIi0j3bijrG8AlGbXSdVptbgNs9ZkgoWQW07wwmMtubhvKQygkJ7SzSIjw9vlTxhfpRjKuEIq8QzDLbgWDmBEhWj81dQfD4xZG8cQZc0caRokYFkDIlASOmq0RSvWL3jA+FYxK+jHLq2JOIJgAPUC9SQi17u7ygaTw6Ymn22ppSFgAvcMxQwrXrcururABJ0dlmWto/OqCCTROti4d47xGtm4adq+PYsL30kH3H55wRQymAalAZJNACpXKWemtxb+9Gum8qyC+iS7hnNOFeWn8032ezxIngXhDnoxLyborMLbtwaAHGDBDC0RtqVw/V++H+gIvSR/Qz+JIyLTt8J/5Er/l0+6Mh9hFa6K4wTTZMNtoIKQABmSgQqXduyy+7tgrEUKkvNuMoLpuETggaAJZkNBGvCpWrlCforiIszUqQAqMAJg4HGRCQlmXwiuXdi04rMy8yarbYCiIttiwrhEpaiXT29u+D0DszxE0BqVS2SVoBlyEV12jaSCY8I3Xb+7XthPNm+Bojz9ihcXozbStm38NLSTlTf2w+kMaVhvYtibzYDa0440jdydXnUk9f0Qp6QzSPbGdNkREhID2ZX2KOmn2t/KEBuZwt2Xbfm3FQm0bM7Sd1CJJquHcWrOqU8U5x5zjTyCM40KWoZAIiB8KVu+GLhO42+2KSrVxSpS42gYKdqVuK0i4tWVed0UDHZkHCbQAUVQSJxCLiWsCWRNi0BrXw60SIopWI7tyJkkcqtYqrEdGa+6NZxqMTwSGBunPnHYjXJE+dHQNku5MoJbZROecS2FHADyiS3wjuopvXNI4NyuSc4Qxn0YkymJyRYS1Ku6iPhFKb49dxbASaBHGXyFuXlxNtsCstMbrlt61Ss392PM/yfS75zTz7LaGTUteV3UQiEa/DdF8np+YMW8PJ4nat/LmJWCS13c9Kac4AQDMG+dzDjZOjr9HeA9sNaCJW5rbq5U60MejpyQNuS5uKamesXGrwIaCVedqIRc+dIl6PHhzO3GZcE3EtsMBW0k08PLi5xDMCjhIwBy7EqRaxA0cIQ6qXby4v6pA0UL1lQmZpwWWBWVV0Q2g1Cy5dWoV06rt/egjpFIy2Hso4zOkTxmNjN62u8V3PTxVVfLHWPzmEysuiSjhPOqFksy25ZrG4biHfVN/zYpISsw7sHJgSV5w7WiLqgNojbd1rv9MK7CyyS7kuLYtzTBHOrY4L5HtCoSEI+5fH+UQnMzDlFl5c2WVC4ybGwTEV6xFxClv8eUO8AKSctbmmh27bRNg445oJK7rt11xZLC/pQw0hK/LO3NjcMy3tFsatQREe0q3Ev9LAsYEJLH/0z7SxkEbY+0P8qv3RkUBro48wBq442ZKoEIgQ32rXSgj4jdHoGKTEmTYNyiCLygLYGHyZF5Lt46c687Y88JAl7rRU3lEbDErDFSQRp7Vol28UW7BcKuk5aZIzSYAtbc1VsdJF1iSo6S9UGgOcGm9i456SSG23eDpODtCFBQS0DRLtRDuTxgHpZNtTCtpKupQBLaWDswK5bhUe8V38IVhMCcy40qCDUy2TRlfqtK79+nwWA8VwpGgV29RBDtIm+qo8K2+zlv7ITeQDMKmUNo2ZhBUku2e0FLiHravajzjFXL3pokWo7YhD1Ctow6niIGnHQNSQSsJzvKSaffFYSq59sOK9E2b8I6QdyeWNiCbyWnlGJNoI0tTPvFFCOQZJfDzFEwtiO/NYhV9fXHCuKuVYmmAWropujRP7kpXzQKhKu+OkRYKHZOpqu+kbqPv9mIxA14QJfmx3sipUkQfbKFoC7fk6mQBMVbduteGXa0DqJBUiJP8ASvqGL7gLjDBPOEwZEqFtHDoIgtSE09WmnatyRSvyUIxtZwpi1WhACIiG+5aFal0W7EibdcoUw03KK/tCZYFTtGtvxKUMETTbozLiOsALEkNoCWzQCd6pKI07t0B9J8dwmWZcl5AG3Z8hIQ1K2QqK77u7Ua0iLH+m8q036JhrIg+gG2bjwfmk7NXEVw7t0eUmlTsRwjIzEDPrCpe+ENsNwpHHJhtyZcVVVwTK4uK5d39bos7GKPGQubBBBoyEeuAEOmvJfuhLNyxNKyogouoDbhqQaiIrh0kNe79qLlgE3Jm2LpIIvIAhMG8NlyjzLvRL+wQArkwSlt1EEIRAhAx1J5s9Qryr9POOX5U2mnUmxcFDsGpcJKOkbSt4lHkufr3xmOtCjyOSqpsyIClxAUcu9i3ldd/S5dYri4m0EtNqpH8kYzLZaTtXiG7+vphu8UBXLz/9z/FKMhpfg/ZNf4gfdGQ6YBeDNyr5y7r7yiaui442Qqdydg2qlvVh/wBIMRcNtpZElMDFy4B0EKDpL2a6kgaTwFDlgfuaA0bFxy4VABQdRLd3rbogwDEmAfdbbOsquH2NFbpIhX6bl1LnDeNAVo5kUtIpUxND0kJqHDzu73KJpvFieaebcBUFBAiIm+LO2hfOtjMUeMnzcbU9mREHlHLhH1aoKxmVaaa2zbNDMQA9a6UJLiT4svnRDGVDF5pRaalEJFFXvSDG7UNqWiheMJERF3rE86aEZUWoD8mHqH+cQINd+6NFhEMmEQ5qqr7UZRrfT7URoCRit+OcMCSrXdy9rijsXmkrRsfnQPs1jNmvP/VCwAUk0iZIAD82MWcLcionswLs1jEBfCCkBOU0S7yiInFXesc2xq2nJfmwUgL1+T1i8MScREJRfl22wJFtqV+ZeCIMW/pjjEnJy6YbKttlNuWtzZ2fmuG7+UVj8maFZjDpqgy7TbLhkRLUiW8RTx4vohfOvMuiCHQXFMzJzjEkJdXFnVIUilo4Zwgz+UrpO42zMVO65dxD9UKJlEAyCxBUTHTmZBbaRQ4YxEWWyZE7zQ7mzIbxFOzzfwgObJTUXybpeREYCV5CX9ZxIgtzFQO9XBQnkCy22+5KW17fGNHiRoqKquCNxWANAHu9qqPZ86Im8OfdUHG0UWzHU4HeHi9mInmAaNWjEjJBICO6wRLs90CoYcmJgbWyGXdIwvIDbNDtEk6pV56ap66b4Pw5zDZpASZdJuYECbJt4dmJJ1VEi5pb9mGWH4SwTbT7VxOLLmLemwRIuLT2XRXWQ2biI6wJNEZAbZheNNOXut3+WC7GP/7t4d+kF8SRkRejyXk+uMgyIsYt4kcusoeHzgCQCKgOHm3elCGhHTSmndTrJCzC+i08QzBOycwDx6JfbMnaKfRUeH1xkZFsQLPdHsQA2Ebw+dJRmiUlCRNwRuXfeKfXC/EsNxyx4UwmfMVIxabbkTctuUu6nKNRkSgKx/dXG+WBYn87Cj/DHYdE8a/UeJ/so/wxqMi2SFD0UxdP+C4j+yz/AAxtei2LfqTEVXq/+Vn+GNxkSM0vRbF/1HiPuws/wxpeimL/AKjxH9ln+GMjIAIy6K4z+o8R/ZZ/hiNeieNJ/wADxJfVhR/hjcZFAcr0Vxv9RYn+yj/DGv7q43+osT/ZJ/hjIyARdOhmFYozLT8q5hM80bk2044r2HGF4CJZDcPe/wBUcNdFZtXDBzDZsmDcLZO+gmBN+1lu/DGRkQ9lpkYdF55t6x3CZopbaX3sSJncPZcKLBeN9FZjZoErhc2hbUDHZyZndVLSuyjIyEKwTDcKxZgXmzwqeO8hJr/wB6V4SuK2iQPO4Dibu0dLCJ5HEQbbMMMLl71tOLlGoyBANG5DGBalmpfDJ0AUXAdbOSMOdyEWVRJbvswMeBY2VKYdMCFyCY+iHclvMcudd8ZGQ0Mz+7+K/oGIf5Q/wxuMjIdCs//Z'),
(7, '???', 'Madge', 'https://m1.quebecormedia.com/emp/emp/566c4840-2150-11ec-9577-3318e9cc63a3_ORIGINAL.jpg?impolicy=crop-resize&x=0&y=0&w=1200&h=782&width=1400'),
(8, 'Rockwell', 'Criquette', 'https://stockage.framapiaf.org/framapiaf/accounts/avatars/000/106/192/original/6a5a41379dad8958.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matiere` varchar(100) NOT NULL,
  `enonce` text CHARACTER SET utf8mb4 ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `matiere`, `enonce`) VALUES
(1, 'Mathematiques', 'Soit une fonction f qui pour tout réel x associe la valeur f(x) = exp(-1/x).\r\nQuelle est la dérivée de la fonction f ?'),
(2, 'Mathematiques', 'Si une fonction g est définie sur un intervalle I, alors il est possible de dire que :'),
(3, 'Automatisme', 'Comment appelle-t-on une machine séquentielle synchrone dont les sorties évoluent de façon synchrone avec l\'état présent mais aussi de façon asynchrone avec les entrées du système ?'),
(4, 'Automatisme', 'Soit clk un signal d\'horloge défini en VHDL. Quelle est la méthode correcte pour détecter un front montant de l\'horloge clk ?');

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

DROP TABLE IF EXISTS `reponses`;
CREATE TABLE IF NOT EXISTS `reponses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_question` int NOT NULL,
  `reponse` varchar(100) CHARACTER SET utf8mb4,
  `points` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `existence_question` (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`id`, `id_question`, `reponse`, `points`) VALUES
(1, 1, '(-1/x)*exp(-1/x)', 0),
(2, 1, 'exp(-1/x)', 0),
(3, 1, '(-1/x^2)*exp(-1/x)', 0),
(4, 1, '(1/x^2)*exp(-1/x)', 1),
(5, 2, 'g est continue sur I', 0),
(6, 2, 'g est continue ET dérivable sur I', 0),
(7, 2, 'g est égale à la fonction f de la question précédente', 0),
(8, 2, 'On ne peut rien dire sur g', 1),
(9, 3, 'Une machine de Moore', 0),
(10, 3, 'Une machine à Sion', 0),
(11, 3, 'Une machine de Mealy', 1),
(12, 3, 'Une machine virtuelle', 0),
(13, 4, 'if clk = \'1\' and clk\'event then...', 1),
(14, 4, 'if clk = \'0\' and clk\'event then...', 0),
(15, 4, 'if rising_edge(clk) then...', 1),
(16, 4, 'if clk.is(\"unfrontmontantdhorloge\") then...', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD CONSTRAINT `existence_question` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
