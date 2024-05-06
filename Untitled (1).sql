CREATE TABLE `Client` (
  `ID_client` int PRIMARY KEY,
  `Name` varchar(255),
  `Last_name` varchar(255),
  `Address` varchar(255),
  `Email` varchar(255),
  `Telephone` varchar(255)
);

CREATE TABLE `Event` (
  `ID_event` int PRIMARY KEY,
  `Nome_evento` varchar(255),
  `Local` text,
  `Data` data,
  `Hora` hora,
  `price` decimal,
  `ticket_ID` int,
  `Local_ID` int
);

CREATE TABLE `Ticket` (
  `ID_ticket` int PRIMARY KEY,
  `type` varchar(255),
  `Data_buy` data,
  `price` decimal
);

CREATE TABLE `company` (
  `ID_company` int PRIMARY KEY,
  `Name` varchar(255),
  `Email` varchar(255),
  `Telephone` varchar(255),
  `Address` varchar(255)
);

CREATE TABLE `Local` (
  `ID_local` int PRIMARY KEY,
  `Name` varchar(255),
  `Email` varchar(255),
  `Address` varchar(255),
  `Capacity` int
);

ALTER TABLE `Ticket` ADD FOREIGN KEY (`ID_ticket`) REFERENCES `Event` (`ticket_ID`);

ALTER TABLE `Event` ADD FOREIGN KEY (`Local_ID`) REFERENCES `Local` (`ID_local`);

ALTER TABLE `Event` ADD FOREIGN KEY (`ID_event`) REFERENCES `Client` (`ID_client`);

ALTER TABLE `Client` ADD FOREIGN KEY (`ID_client`) REFERENCES `Ticket` (`ID_ticket`);

ALTER TABLE `Event` ADD FOREIGN KEY (`ID_event`) REFERENCES `company` (`ID_company`);
