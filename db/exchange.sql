-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2022 at 12:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exchange`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `short_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `short_code`, `description`) VALUES
(1903, '        AED', ' United Arab Emirates Dirham'),
(1904, '        AFN', ' Afghan Afghani'),
(1905, '        ALL', ' Albanian Lek'),
(1906, '        AMD', ' Armenian Dram'),
(1907, '        ANG', ' Netherlands Antillean Guilder'),
(1908, '        AOA', ' Angolan Kwanza'),
(1909, '        ARS', ' Argentine Peso'),
(1910, '        AUD', ' Australian Dollar'),
(1911, '        AWG', ' Aruban Florin'),
(1912, '        AZN', ' Azerbaijani Manat'),
(1913, '        BAM', ' Bosnia-Herzegovina Convertible Mark'),
(1914, '        BBD', ' Barbadian Dollar'),
(1915, '        BDT', ' Bangladeshi Taka'),
(1916, '        BGN', ' Bulgarian Lev'),
(1917, '        BHD', ' Bahraini Dinar'),
(1918, '        BIF', ' Burundian Franc'),
(1919, '        BMD', ' Bermudan Dollar'),
(1920, '        BND', ' Brunei Dollar'),
(1921, '        BOB', ' Bolivian Boliviano'),
(1922, '        BRL', ' Brazilian Real'),
(1923, '        BSD', ' Bahamian Dollar'),
(1924, '        BTC', ' Bitcoin'),
(1925, '        BTN', ' Bhutanese Ngultrum'),
(1926, '        BWP', ' Botswanan Pula'),
(1927, '        BYN', ' New Belarusian Ruble'),
(1928, '        BYR', ' Belarusian Ruble'),
(1929, '        BZD', ' Belize Dollar'),
(1930, '        CAD', ' Canadian Dollar'),
(1931, '        CDF', ' Congolese Franc'),
(1932, '        CHF', ' Swiss Franc'),
(1933, '        CLF', ' Chilean Unit of Account (UF)'),
(1934, '        CLP', ' Chilean Peso'),
(1935, '        CNY', ' Chinese Yuan'),
(1936, '        COP', ' Colombian Peso'),
(1937, '        CRC', ' Costa Rican Colu00f3n'),
(1938, '        CUC', ' Cuban Convertible Peso'),
(1939, '        CUP', ' Cuban Peso'),
(1940, '        CVE', ' Cape Verdean Escudo'),
(1941, '        CZK', ' Czech Republic Koruna'),
(1942, '        DJF', ' Djiboutian Franc'),
(1943, '        DKK', ' Danish Krone'),
(1944, '        DOP', ' Dominican Peso'),
(1945, '        DZD', ' Algerian Dinar'),
(1946, '        EGP', ' Egyptian Pound'),
(1947, '        ERN', ' Eritrean Nakfa'),
(1948, '        ETB', ' Ethiopian Birr'),
(1949, '        EUR', ' Euro'),
(1950, '        FJD', ' Fijian Dollar'),
(1951, '        FKP', ' Falkland Islands Pound'),
(1952, '        GBP', ' British Pound Sterling'),
(1953, '        GEL', ' Georgian Lari'),
(1954, '        GGP', ' Guernsey Pound'),
(1955, '        GHS', ' Ghanaian Cedi'),
(1956, '        GIP', ' Gibraltar Pound'),
(1957, '        GMD', ' Gambian Dalasi'),
(1958, '        GNF', ' Guinean Franc'),
(1959, '        GTQ', ' Guatemalan Quetzal'),
(1960, '        GYD', ' Guyanaese Dollar'),
(1961, '        HKD', ' Hong Kong Dollar'),
(1962, '        HNL', ' Honduran Lempira'),
(1963, '        HRK', ' Croatian Kuna'),
(1964, '        HTG', ' Haitian Gourde'),
(1965, '        HUF', ' Hungarian Forint'),
(1966, '        IDR', ' Indonesian Rupiah'),
(1967, '        ILS', ' Israeli New Sheqel'),
(1968, '        IMP', ' Manx pound'),
(1969, '        INR', ' Indian Rupee'),
(1970, '        IQD', ' Iraqi Dinar'),
(1971, '        IRR', ' Iranian Rial'),
(1972, '        ISK', ' Icelandic Kru00f3na'),
(1973, '        JEP', ' Jersey Pound'),
(1974, '        JMD', ' Jamaican Dollar'),
(1975, '        JOD', ' Jordanian Dinar'),
(1976, '        JPY', ' Japanese Yen'),
(1977, '        KES', ' Kenyan Shilling'),
(1978, '        KGS', ' Kyrgystani Som'),
(1979, '        KHR', ' Cambodian Riel'),
(1980, '        KMF', ' Comorian Franc'),
(1981, '        KPW', ' North Korean Won'),
(1982, '        KRW', ' South Korean Won'),
(1983, '        KWD', ' Kuwaiti Dinar'),
(1984, '        KYD', ' Cayman Islands Dollar'),
(1985, '        KZT', ' Kazakhstani Tenge'),
(1986, '        LAK', ' Laotian Kip'),
(1987, '        LBP', ' Lebanese Pound'),
(1988, '        LKR', ' Sri Lankan Rupee'),
(1989, '        LRD', ' Liberian Dollar'),
(1990, '        LSL', ' Lesotho Loti'),
(1991, '        LTL', ' Lithuanian Litas'),
(1992, '        LVL', ' Latvian Lats'),
(1993, '        LYD', ' Libyan Dinar'),
(1994, '        MAD', ' Moroccan Dirham'),
(1995, '        MDL', ' Moldovan Leu'),
(1996, '        MGA', ' Malagasy Ariary'),
(1997, '        MKD', ' Macedonian Denar'),
(1998, '        MMK', ' Myanma Kyat'),
(1999, '        MNT', ' Mongolian Tugrik'),
(2000, '        MOP', ' Macanese Pataca'),
(2001, '        MRO', ' Mauritanian Ouguiya'),
(2002, '        MUR', ' Mauritian Rupee'),
(2003, '        MVR', ' Maldivian Rufiyaa'),
(2004, '        MWK', ' Malawian Kwacha'),
(2005, '        MXN', ' Mexican Peso'),
(2006, '        MYR', ' Malaysian Ringgit'),
(2007, '        MZN', ' Mozambican Metical'),
(2008, '        NAD', ' Namibian Dollar'),
(2009, '        NGN', ' Nigerian Naira'),
(2010, '        NIO', ' Nicaraguan Cu00f3rdoba'),
(2011, '        NOK', ' Norwegian Krone'),
(2012, '        NPR', ' Nepalese Rupee'),
(2013, '        NZD', ' New Zealand Dollar'),
(2014, '        OMR', ' Omani Rial'),
(2015, '        PAB', ' Panamanian Balboa'),
(2016, '        PEN', ' Peruvian Nuevo Sol'),
(2017, '        PGK', ' Papua New Guinean Kina'),
(2018, '        PHP', ' Philippine Peso'),
(2019, '        PKR', ' Pakistani Rupee'),
(2020, '        PLN', ' Polish Zloty'),
(2021, '        PYG', ' Paraguayan Guarani'),
(2022, '        QAR', ' Qatari Rial'),
(2023, '        RON', ' Romanian Leu'),
(2024, '        RSD', ' Serbian Dinar'),
(2025, '        RUB', ' Russian Ruble'),
(2026, '        RWF', ' Rwandan Franc'),
(2027, '        SAR', ' Saudi Riyal'),
(2028, '        SBD', ' Solomon Islands Dollar'),
(2029, '        SCR', ' Seychellois Rupee'),
(2030, '        SDG', ' Sudanese Pound'),
(2031, '        SEK', ' Swedish Krona'),
(2032, '        SGD', ' Singapore Dollar'),
(2033, '        SHP', ' Saint Helena Pound'),
(2034, '        SLL', ' Sierra Leonean Leone'),
(2035, '        SOS', ' Somali Shilling'),
(2036, '        SRD', ' Surinamese Dollar'),
(2037, '        STD', ' Su00e3o Tomu00e9 and Pru00edncipe Dobra'),
(2038, '        SVC', ' Salvadoran Colu00f3n'),
(2039, '        SYP', ' Syrian Pound'),
(2040, '        SZL', ' Swazi Lilangeni'),
(2041, '        THB', ' Thai Baht'),
(2042, '        TJS', ' Tajikistani Somoni'),
(2043, '        TMT', ' Turkmenistani Manat'),
(2044, '        TND', ' Tunisian Dinar'),
(2045, '        TOP', ' Tongan Pau02bbanga'),
(2046, '        TRY', ' Turkish Lira'),
(2047, '        TTD', ' Trinidad and Tobago Dollar'),
(2048, '        TWD', ' New Taiwan Dollar'),
(2049, '        TZS', ' Tanzanian Shilling'),
(2050, '        UAH', ' Ukrainian Hryvnia'),
(2051, '        UGX', ' Ugandan Shilling'),
(2052, '        USD', ' United States Dollar'),
(2053, '        UYU', ' Uruguayan Peso'),
(2054, '        UZS', ' Uzbekistan Som'),
(2055, '        VEF', ' Venezuelan Bolu00edvar Fuerte'),
(2056, '        VND', ' Vietnamese Dong'),
(2057, '        VUV', ' Vanuatu Vatu'),
(2058, '        WST', ' Samoan Tala'),
(2059, '        XAF', ' CFA Franc BEAC'),
(2060, '        XAG', ' Silver (troy ounce)'),
(2061, '        XAU', ' Gold (troy ounce)'),
(2062, '        XCD', ' East Caribbean Dollar'),
(2063, '        XDR', ' Special Drawing Rights'),
(2064, '        XOF', ' CFA Franc BCEAO'),
(2065, '        XPF', ' CFP Franc'),
(2066, '        YER', ' Yemeni Rial'),
(2067, '        ZAR', ' South African Rand'),
(2068, '        ZMK', ' Zambian Kwacha (pre-2013)'),
(2069, '        ZMW', ' Zambian Kwacha'),
(2070, '        ZWL', ' Zimbabwean Dolla'),
(2071, '        AED', ' United Arab Emirates Dirham'),
(2072, '        AFN', ' Afghan Afghani'),
(2073, '        ALL', ' Albanian Lek'),
(2074, '        AMD', ' Armenian Dram'),
(2075, '        ANG', ' Netherlands Antillean Guilder'),
(2076, '        AOA', ' Angolan Kwanza'),
(2077, '        ARS', ' Argentine Peso'),
(2078, '        AUD', ' Australian Dollar'),
(2079, '        AWG', ' Aruban Florin'),
(2080, '        AZN', ' Azerbaijani Manat'),
(2081, '        BAM', ' Bosnia-Herzegovina Convertible Mark'),
(2082, '        BBD', ' Barbadian Dollar'),
(2083, '        BDT', ' Bangladeshi Taka'),
(2084, '        BGN', ' Bulgarian Lev'),
(2085, '        BHD', ' Bahraini Dinar'),
(2086, '        BIF', ' Burundian Franc'),
(2087, '        BMD', ' Bermudan Dollar'),
(2088, '        BND', ' Brunei Dollar'),
(2089, '        BOB', ' Bolivian Boliviano'),
(2090, '        BRL', ' Brazilian Real'),
(2091, '        BSD', ' Bahamian Dollar'),
(2092, '        BTC', ' Bitcoin'),
(2093, '        BTN', ' Bhutanese Ngultrum'),
(2094, '        BWP', ' Botswanan Pula'),
(2095, '        BYN', ' New Belarusian Ruble'),
(2096, '        BYR', ' Belarusian Ruble'),
(2097, '        BZD', ' Belize Dollar'),
(2098, '        CAD', ' Canadian Dollar'),
(2099, '        CDF', ' Congolese Franc'),
(2100, '        CHF', ' Swiss Franc'),
(2101, '        CLF', ' Chilean Unit of Account (UF)'),
(2102, '        CLP', ' Chilean Peso'),
(2103, '        CNY', ' Chinese Yuan'),
(2104, '        COP', ' Colombian Peso'),
(2105, '        CRC', ' Costa Rican Colu00f3n'),
(2106, '        CUC', ' Cuban Convertible Peso'),
(2107, '        CUP', ' Cuban Peso'),
(2108, '        CVE', ' Cape Verdean Escudo'),
(2109, '        CZK', ' Czech Republic Koruna'),
(2110, '        DJF', ' Djiboutian Franc'),
(2111, '        DKK', ' Danish Krone'),
(2112, '        DOP', ' Dominican Peso'),
(2113, '        DZD', ' Algerian Dinar'),
(2114, '        EGP', ' Egyptian Pound'),
(2115, '        ERN', ' Eritrean Nakfa'),
(2116, '        ETB', ' Ethiopian Birr'),
(2117, '        EUR', ' Euro'),
(2118, '        FJD', ' Fijian Dollar'),
(2119, '        FKP', ' Falkland Islands Pound'),
(2120, '        GBP', ' British Pound Sterling'),
(2121, '        GEL', ' Georgian Lari'),
(2122, '        GGP', ' Guernsey Pound'),
(2123, '        GHS', ' Ghanaian Cedi'),
(2124, '        GIP', ' Gibraltar Pound'),
(2125, '        GMD', ' Gambian Dalasi'),
(2126, '        GNF', ' Guinean Franc'),
(2127, '        GTQ', ' Guatemalan Quetzal'),
(2128, '        GYD', ' Guyanaese Dollar'),
(2129, '        HKD', ' Hong Kong Dollar'),
(2130, '        HNL', ' Honduran Lempira'),
(2131, '        HRK', ' Croatian Kuna'),
(2132, '        HTG', ' Haitian Gourde'),
(2133, '        HUF', ' Hungarian Forint'),
(2134, '        IDR', ' Indonesian Rupiah'),
(2135, '        ILS', ' Israeli New Sheqel'),
(2136, '        IMP', ' Manx pound'),
(2137, '        INR', ' Indian Rupee'),
(2138, '        IQD', ' Iraqi Dinar'),
(2139, '        IRR', ' Iranian Rial'),
(2140, '        ISK', ' Icelandic Kru00f3na'),
(2141, '        JEP', ' Jersey Pound'),
(2142, '        JMD', ' Jamaican Dollar'),
(2143, '        JOD', ' Jordanian Dinar'),
(2144, '        JPY', ' Japanese Yen'),
(2145, '        KES', ' Kenyan Shilling'),
(2146, '        KGS', ' Kyrgystani Som'),
(2147, '        KHR', ' Cambodian Riel'),
(2148, '        KMF', ' Comorian Franc'),
(2149, '        KPW', ' North Korean Won'),
(2150, '        KRW', ' South Korean Won'),
(2151, '        KWD', ' Kuwaiti Dinar'),
(2152, '        KYD', ' Cayman Islands Dollar'),
(2153, '        KZT', ' Kazakhstani Tenge'),
(2154, '        LAK', ' Laotian Kip'),
(2155, '        LBP', ' Lebanese Pound'),
(2156, '        LKR', ' Sri Lankan Rupee'),
(2157, '        LRD', ' Liberian Dollar'),
(2158, '        LSL', ' Lesotho Loti'),
(2159, '        LTL', ' Lithuanian Litas'),
(2160, '        LVL', ' Latvian Lats'),
(2161, '        LYD', ' Libyan Dinar'),
(2162, '        MAD', ' Moroccan Dirham'),
(2163, '        MDL', ' Moldovan Leu'),
(2164, '        MGA', ' Malagasy Ariary'),
(2165, '        MKD', ' Macedonian Denar'),
(2166, '        MMK', ' Myanma Kyat'),
(2167, '        MNT', ' Mongolian Tugrik'),
(2168, '        MOP', ' Macanese Pataca'),
(2169, '        MRO', ' Mauritanian Ouguiya'),
(2170, '        MUR', ' Mauritian Rupee'),
(2171, '        MVR', ' Maldivian Rufiyaa'),
(2172, '        MWK', ' Malawian Kwacha'),
(2173, '        MXN', ' Mexican Peso'),
(2174, '        MYR', ' Malaysian Ringgit'),
(2175, '        MZN', ' Mozambican Metical'),
(2176, '        NAD', ' Namibian Dollar'),
(2177, '        NGN', ' Nigerian Naira'),
(2178, '        NIO', ' Nicaraguan Cu00f3rdoba'),
(2179, '        NOK', ' Norwegian Krone'),
(2180, '        NPR', ' Nepalese Rupee'),
(2181, '        NZD', ' New Zealand Dollar'),
(2182, '        OMR', ' Omani Rial'),
(2183, '        PAB', ' Panamanian Balboa'),
(2184, '        PEN', ' Peruvian Nuevo Sol'),
(2185, '        PGK', ' Papua New Guinean Kina'),
(2186, '        PHP', ' Philippine Peso'),
(2187, '        PKR', ' Pakistani Rupee'),
(2188, '        PLN', ' Polish Zloty'),
(2189, '        PYG', ' Paraguayan Guarani'),
(2190, '        QAR', ' Qatari Rial'),
(2191, '        RON', ' Romanian Leu'),
(2192, '        RSD', ' Serbian Dinar'),
(2193, '        RUB', ' Russian Ruble'),
(2194, '        RWF', ' Rwandan Franc'),
(2195, '        SAR', ' Saudi Riyal'),
(2196, '        SBD', ' Solomon Islands Dollar'),
(2197, '        SCR', ' Seychellois Rupee'),
(2198, '        SDG', ' Sudanese Pound'),
(2199, '        SEK', ' Swedish Krona'),
(2200, '        SGD', ' Singapore Dollar'),
(2201, '        SHP', ' Saint Helena Pound'),
(2202, '        SLL', ' Sierra Leonean Leone'),
(2203, '        SOS', ' Somali Shilling'),
(2204, '        SRD', ' Surinamese Dollar'),
(2205, '        STD', ' Su00e3o Tomu00e9 and Pru00edncipe Dobra'),
(2206, '        SVC', ' Salvadoran Colu00f3n'),
(2207, '        SYP', ' Syrian Pound'),
(2208, '        SZL', ' Swazi Lilangeni'),
(2209, '        THB', ' Thai Baht'),
(2210, '        TJS', ' Tajikistani Somoni'),
(2211, '        TMT', ' Turkmenistani Manat'),
(2212, '        TND', ' Tunisian Dinar'),
(2213, '        TOP', ' Tongan Pau02bbanga'),
(2214, '        TRY', ' Turkish Lira'),
(2215, '        TTD', ' Trinidad and Tobago Dollar'),
(2216, '        TWD', ' New Taiwan Dollar'),
(2217, '        TZS', ' Tanzanian Shilling'),
(2218, '        UAH', ' Ukrainian Hryvnia'),
(2219, '        UGX', ' Ugandan Shilling'),
(2220, '        USD', ' United States Dollar'),
(2221, '        UYU', ' Uruguayan Peso'),
(2222, '        UZS', ' Uzbekistan Som'),
(2223, '        VEF', ' Venezuelan Bolu00edvar Fuerte'),
(2224, '        VND', ' Vietnamese Dong'),
(2225, '        VUV', ' Vanuatu Vatu'),
(2226, '        WST', ' Samoan Tala'),
(2227, '        XAF', ' CFA Franc BEAC'),
(2228, '        XAG', ' Silver (troy ounce)'),
(2229, '        XAU', ' Gold (troy ounce)'),
(2230, '        XCD', ' East Caribbean Dollar'),
(2231, '        XDR', ' Special Drawing Rights'),
(2232, '        XOF', ' CFA Franc BCEAO'),
(2233, '        XPF', ' CFP Franc'),
(2234, '        YER', ' Yemeni Rial'),
(2235, '        ZAR', ' South African Rand'),
(2236, '        ZMK', ' Zambian Kwacha (pre-2013)'),
(2237, '        ZMW', ' Zambian Kwacha'),
(2238, '        ZWL', ' Zimbabwean Dolla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2239;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;