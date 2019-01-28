CREATE DATABASE `ebay_warrant` /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `content_coding` (
  `itemId` bigint(20) NOT NULL,
  `content_coding` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `image_hash` (
  `itemId` bigint(20) NOT NULL,
  `hash` varchar(45) DEFAULT NULL,
  `mirror` varchar(45) DEFAULT NULL,
  `left_hash` varchar(45) DEFAULT NULL,
  `right_hash` varchar(45) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `item_finding_api` (
  `itemId` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `isMultiVariationListing` bit(1) DEFAULT NULL,
  `topRatedListing` bit(1) DEFAULT NULL,
  `globalId` varchar(10) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `country` varchar(8) DEFAULT NULL,
  `currencyId` varchar(5) DEFAULT NULL,
  `saleAmount` double DEFAULT NULL,
  `bidCount` int(11) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `postalCode` varchar(20) DEFAULT NULL,
  `returnsAccepted` bit(1) DEFAULT NULL,
  `viewItemURL` varchar(300) DEFAULT NULL,
  `conditionID` int(11) DEFAULT NULL,
  `conditionDisplayName` varchar(100) DEFAULT NULL,
  `productIdType` varchar(80) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `item_shopping_api` (
  `itemId` bigint(20) NOT NULL,
  `Autopay` bit(1) DEFAULT NULL,
  `ConditionDescription` text CHARACTER SET latin1,
  `Description` text CHARACTER SET latin1,
  `HitCount` int(1) DEFAULT NULL,
  `ListingType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `listing` (
  `itemId` bigint(20) NOT NULL,
  `listingType` varchar(100) DEFAULT NULL,
  `gift` bit(1) DEFAULT NULL,
  `bestOfferEnabled` bit(1) DEFAULT NULL,
  `buyItNowAvailable` bit(1) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `picture` (
  `itemId` bigint(20) NOT NULL DEFAULT '0',
  `pictureURL` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `purchaser` (
  `itemId` bigint(20) NOT NULL,
  `feedbackPrivate` bit(1) DEFAULT NULL,
  `feedbackRatingStar` varchar(70) DEFAULT NULL,
  `feedbackScore` int(11) DEFAULT NULL,
  `userId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `seller` (
  `itemId` bigint(20) NOT NULL,
  `feedbackRatingStar` varchar(70) DEFAULT NULL,
  `positiveFeedbackPercent` double DEFAULT NULL,
  `feedbackScore` bigint(20) DEFAULT NULL,
  `sellerUserName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `shipping` (
  `itemId` bigint(20) NOT NULL,
  `expeditedShipping` bit(1) DEFAULT NULL,
  `shippingType` varchar(140) DEFAULT NULL,
  `currencyId` varchar(5) DEFAULT NULL,
  `shippingAmount` double DEFAULT NULL,
  `oneDayShippingAvailable` bit(1) DEFAULT NULL,
  `handlingTime` int(1) DEFAULT NULL,
  `numShipToLocations` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

