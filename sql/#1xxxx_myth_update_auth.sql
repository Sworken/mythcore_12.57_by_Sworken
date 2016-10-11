/* Copyright (C) 2008 - 2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2010 - 2015 Myth Project <http://mythprojectnetwork.blogspot.com/>
 *
 * Copyright (C) 2012 SymphonyArt <http://symphonyart.com/>
 *
 * Myth Project's source is based on the Trinity Project source, you can find the
 * link to that easily in Trinity Copyrights. Myth Project is a private community.
 * To get access, you either have to donate or pass a developer test.
 * You may not share Myth Project's sources! For personal use only. */
-- -------------------------------------------------------------------------}
-- ----------------- Myth Project "Auth" Database Update ------------------
-- -------------------------------------------------------------------------{
ALTER TABLE `uptime` DROP COLUMN `startstring`;s

ALTER TABLE `account` CHANGE `sessionkey` `sessionkey` VARCHAR(80) NOT NULL DEFAULT '';
ALTER TABLE `account` CHANGE `v` `v` VARCHAR(64) NOT NULL DEFAULT '';
ALTER TABLE `account` CHANGE `s` `s` VARCHAR(64) NOT NULL DEFAULT '';
ALTER TABLE `account` CHANGE `email` `email` VARCHAR(255) NOT NULL DEFAULT '';
 
ALTER TABLE `ip_banned` CHANGE `ip` `ip` VARCHAR(55) NOT NULL DEFAULT '127.0.0.1';
ALTER TABLE `ip_banned` CHANGE `bandate` `bandate` INT(10) NOT NULL;
ALTER TABLE `ip_banned` CHANGE `unbandate` `unbandate` INT(10) NOT NULL;

ALTER TABLE `account_banned` CHANGE `bandate` `bandate` INT(10) NOT NULL;
ALTER TABLE `account_banned` CHANGE `unbandate` `unbandate` INT(10) NOT NULL;
