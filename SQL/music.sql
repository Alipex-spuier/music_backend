/*
 Navicat Premium Data Transfer

 Source Server         : music
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 29/04/2024 04:10:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`  (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `music_id` int NOT NULL,
  PRIMARY KEY (`favorite_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `music_id`(`music_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of favorite
-- ----------------------------

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `history_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `music_id` int NOT NULL,
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------

-- ----------------------------
-- Table structure for music_details
-- ----------------------------
DROP TABLE IF EXISTS `music_details`;
CREATE TABLE `music_details`  (
  `details_id` int NOT NULL AUTO_INCREMENT COMMENT '音乐ID，主键，自动递增',
  `recommend_id` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '歌曲的URL',
  `album_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专辑封面URL',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '歌曲作者',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '歌曲标题',
  `hot_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '歌曲热评',
  `comment_author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '热评网友名',
  PRIMARY KEY (`details_id`) USING BTREE,
  INDEX `idx_music_title`(`title` ASC) USING BTREE,
  INDEX `idx_music_author`(`author` ASC) USING BTREE,
  INDEX `music_details_ibfk_1`(`recommend_id` ASC) USING BTREE,
  CONSTRAINT `music_details_ibfk_1` FOREIGN KEY (`recommend_id`) REFERENCES `music_recommend` (`recommend_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of music_details
-- ----------------------------
INSERT INTO `music_details` VALUES (1, 1, 'http://170.106.183.24:8081/music/1.mp3', 'http://170.106.183.24:8081/photo/1.jpg', 'LiQWYD', 'Back To You', 'Turn up the volume, turn down the darkness.', 'MelodicDreamer');
INSERT INTO `music_details` VALUES (2, 2, 'http://170.106.183.24:8081/music/2.mp3', 'http://170.106.183.24:8081/photo/2.jpg', 'BoxCat Games', 'Battle (Special)', 'It\'s not just music; it\'s an embrace.', 'HarmonyWhisper');
INSERT INTO `music_details` VALUES (3, 3, 'http://170.106.183.24:8081/music/3.mp3', 'http://170.106.183.24:8081/photo/3.jpg', 'Luke Hall', 'Breakout', 'This song is a bridge to my aspirations.', 'AmbitionSeeker');
INSERT INTO `music_details` VALUES (4, 4, 'http://170.106.183.24:8081/music/4.mp3', 'http://170.106.183.24:8081/photo/4.jpg', 'Peyruis', 'Buzzin', 'Lost in the beat and found in the melody.', 'RhythmicSoul');
INSERT INTO `music_details` VALUES (5, 5, 'http://170.106.183.24:8081/music/5.mp3', 'http://170.106.183.24:8081/photo/5.jpg', 'Peyruis', 'Coco Mademoiselle', 'Music heals me more than time ever could.', 'SonicHealer');
INSERT INTO `music_details` VALUES (6, 6, 'http://170.106.183.24:8081/music/6.mp3', 'http://170.106.183.24:8081/photo/6.jpg', 'KV', 'Crux', 'The lyrics feel like my unwritten diary.', 'EchoedEmotions');
INSERT INTO `music_details` VALUES (7, 7, 'http://170.106.183.24:8081/music/7.mp3', 'http://170.106.183.24:8081/photo/7.jpg', 'Hotham', 'Dance Tonight', 'Floating on a cloud made of beats.', 'SkyHighTunes');
INSERT INTO `music_details` VALUES (8, 8, 'http://170.106.183.24:8081/music/8.mp3', 'http://170.106.183.24:8081/photo/8.jpg', 'Dylan Emmet', 'Flipside', 'Every chord strikes a chord in my heart.', 'HeartStrings');
INSERT INTO `music_details` VALUES (9, 9, 'http://170.106.183.24:8081/music/9.mp3', 'http://170.106.183.24:8081/photo/9.jpg', 'Alex-Productions', 'Floating', 'This melody is the soundtrack of my dreams.', 'DreamyNotes');
INSERT INTO `music_details` VALUES (10, 10, 'http://170.106.183.24:8081/music/10.mp3', 'http://170.106.183.24:8081/photo/10.jpg', 'KV', 'Fuzzy', 'Feeling the music with every fiber of my being.', 'VibrantVibes');
INSERT INTO `music_details` VALUES (11, 11, 'http://170.106.183.24:8081/music/11.mp3', 'http://170.106.183.24:8081/photo/11.jpg', 'ASHUTOSH', 'Game Over', 'Where words fail, music speaks.', 'MelodicMessenger');
INSERT INTO `music_details` VALUES (12, 12, 'http://170.106.183.24:8081/music/12.mp3', 'http://170.106.183.24:8081/photo/12.jpg', 'Peyruis', 'Groovin', 'Turning the volume up and my fears down.', 'SoundBrave');
INSERT INTO `music_details` VALUES (13, 13, 'http://170.106.183.24:8081/music/13.mp3', 'http://170.106.183.24:8081/photo/13.jpg', 'Jeff II', 'Heartfül of Kerøsene (instrumental)', 'This song paints my mood in vibrant colors.', 'MoodPainter');
INSERT INTO `music_details` VALUES (14, 14, 'http://170.106.183.24:8081/music/14.mp3', 'http://170.106.183.24:8081/photo/14.jpg', 'ASHUTOSH', 'Jaipur', 'Music is the language of my soul.', 'SoulfulSinger');
INSERT INTO `music_details` VALUES (15, 15, 'http://170.106.183.24:8081/music/15.mp3', 'http://170.106.183.24:8081/photo/15.jpg', 'Jeff II', 'Jetfire', 'In this moment, the song understands me better than anyone.', 'HarmonicCompanion');
INSERT INTO `music_details` VALUES (16, 16, 'http://170.106.183.24:8081/music/16.mp3', 'http://170.106.183.24:8081/photo/16.jpg', 'LiQWYD', 'Last Time', 'Riding waves of melodies into the sunset.', 'SunsetSurfer');
INSERT INTO `music_details` VALUES (17, 17, 'http://170.106.183.24:8081/music/17.mp3', 'http://170.106.183.24:8081/photo/17.jpg', 'tubebackr', 'Layer Cake', 'Finding peace in every beat.', 'PeacefulRhythms');
INSERT INTO `music_details` VALUES (18, 18, 'http://170.106.183.24:8081/music/18.mp3', 'http://170.106.183.24:8081/photo/18.jpg', 'GroovyD', 'New Moon', 'This song feels like a warm hug on a cold day.', 'MelodicWarmth');
INSERT INTO `music_details` VALUES (19, 19, 'http://170.106.183.24:8081/music/19.mp3', 'http://170.106.183.24:8081/photo/19.jpg', 'KV', 'Unreal', 'Music is my guide through life\'s ups and downs.', 'SonicNavigator');
INSERT INTO `music_details` VALUES (20, 20, 'http://170.106.183.24:8081/music/20.mp3', 'http://170.106.183.24:8081/photo/20.jpg', 'Dylan Emmet', 'What\'s The Point!', 'A song that lights up the darkest days.', 'BeaconBeat');
INSERT INTO `music_details` VALUES (21, 21, 'http://170.106.183.24:8081/music/21.mp3', 'http://170.106.183.24:8081/photo/21.jpg', 'Jay Someday', '4 You', 'Melodies mapping the journey of my heart.', 'HeartMap');
INSERT INTO `music_details` VALUES (22, 22, 'http://170.106.183.24:8081/music/22.mp3', 'http://170.106.183.24:8081/photo/22.jpg', 'Markvard', 'Contagious', 'Through music, I find clarity.', 'ClearTunes');
INSERT INTO `music_details` VALUES (23, 23, 'http://170.106.183.24:8081/music/23.mp3', 'http://170.106.183.24:8081/photo/23.jpg', 'KV', 'Gate', 'Living for moments when the song speaks to me.', 'MomentSeeker');
INSERT INTO `music_details` VALUES (24, 24, 'http://170.106.183.24:8081/music/24.mp3', 'http://170.106.183.24:8081/photo/24.jpg', 'Broke in Summer', 'How Have You Been', 'Drowning in the melody, emerging with hope.', 'HopefulListener');
INSERT INTO `music_details` VALUES (25, 25, 'http://170.106.183.24:8081/music/25.mp3', 'http://170.106.183.24:8081/photo/25.jpg', 'Alex-Productions', 'Love', 'Songs like this are rare treasures.', 'MusicalGem');
INSERT INTO `music_details` VALUES (26, 26, 'http://170.106.183.24:8081/music/26.mp3', 'http://170.106.183.24:8081/photo/26.jpg', 'LiQWYD', 'Mwah', 'Feeling energized by every beat.', 'RhythmicEnergy');
INSERT INTO `music_details` VALUES (27, 27, 'http://170.106.183.24:8081/music/27.mp3', 'http://170.106.183.24:8081/photo/27.jpg', 'Tomh.', 'Night Heat', 'This song, my escape to a better place.', 'EscapeArtist');
INSERT INTO `music_details` VALUES (28, 28, 'http://170.106.183.24:8081/music/28.mp3', 'http://170.106.183.24:8081/photo/28.jpg', 'jiglr', 'Night Rider', 'The rhythm moves me in ways words can\'t.', 'BeyondWords');
INSERT INTO `music_details` VALUES (29, 29, 'http://170.106.183.24:8081/music/29.mp3', 'http://170.106.183.24:8081/photo/29.jpg', 'LiQWYD', 'Perfect', 'Music has the power to make everything alright.', 'SonicSoothe');
INSERT INTO `music_details` VALUES (30, 30, 'http://170.106.183.24:8081/music/30.mp3', 'http://170.106.183.24:8081/photo/30.jpg', 'Atch ft. Michael Shynes', 'Right Here', 'Letting this melody take the lead in my life\'s dance.', 'LifeDancer');
INSERT INTO `music_details` VALUES (31, 31, 'http://170.106.183.24:8081/music/31.mp3', 'http://170.106.183.24:8081/photo/31.jpg', 'LiQWYD', 'Still Love You', 'This song reminds me of the beauty in the world.', 'BeautySeeker');
INSERT INTO `music_details` VALUES (32, 32, 'http://170.106.183.24:8081/music/32.mp3', 'http://170.106.183.24:8081/photo/32.jpg', 'Tomh.', 'Summer Love', 'Finding my soul\'s echo in this melody.', 'SoulEcho');
INSERT INTO `music_details` VALUES (33, 33, 'http://170.106.183.24:8081/music/33.mp3', 'http://170.106.183.24:8081/photo/33.jpg', 'LiQWYD', 'Talk to me', 'This song is a reminder to keep dreaming.', 'DreamGuardian');
INSERT INTO `music_details` VALUES (34, 34, 'http://170.106.183.24:8081/music/34.mp3', 'http://170.106.183.24:8081/photo/34.jpg', 'Tomh.', 'Te Quiero', 'Music bridges the gap between souls.', 'SoulConnector');
INSERT INTO `music_details` VALUES (35, 35, 'http://170.106.183.24:8081/music/35.mp3', 'http://170.106.183.24:8081/photo/35.jpg', 'LiQWYD', 'Venture', 'With every note, a new piece of me awakens.', 'AwakeningMelody');
INSERT INTO `music_details` VALUES (36, 36, 'http://170.106.183.24:8081/music/36.mp3', 'http://170.106.183.24:8081/photo/36.jpg', 'LiQWYD', 'Wanna Be', 'Let your heart dance to the rhythm of this song.', 'HeartDancer');
INSERT INTO `music_details` VALUES (37, 37, 'http://170.106.183.24:8081/music/37.mp3', 'http://170.106.183.24:8081/photo/37.jpg', 'Sapajou & Yorgo H', 'Wasting Time', 'Turn up the volume, turn down the darkness.', 'LightSounds');
INSERT INTO `music_details` VALUES (38, 38, 'http://170.106.183.24:8081/music/38.mp3', 'http://170.106.183.24:8081/photo/38.jpg', 'Rexlambo', 'i was in love once', 'The soundtrack to my innermost thoughts.', 'InnerSoundtrack');
INSERT INTO `music_details` VALUES (39, 39, 'http://170.106.183.24:8081/music/39.mp3', 'http://170.106.183.24:8081/photo/39.jpg', 'Rexlambo ft. Mieri', 'let me go', 'Let the music carry your worries away.', 'WorryLifter');
INSERT INTO `music_details` VALUES (40, 40, 'http://170.106.183.24:8081/music/40.mp3', 'http://170.106.183.24:8081/photo/40.jpg', 'Rexlambo', 'soar', 'Every play of this song feels like the first time.', 'EternalNewness');
INSERT INTO `music_details` VALUES (41, 41, 'http://170.106.183.24:8081/music/41.mp3', 'http://170.106.183.24:8081/photo/41.jpg', 'Tom Hafner', '6th Floor', 'This song turns my day around, every time.', 'DayChanger');
INSERT INTO `music_details` VALUES (42, 42, 'http://170.106.183.24:8081/music/42.mp3', 'http://170.106.183.24:8081/photo/42.jpg', 'tubebackr', 'A Vibe', 'Diving deep into the sea of sound.', 'SoundDiver');
INSERT INTO `music_details` VALUES (43, 43, 'http://170.106.183.24:8081/music/43.mp3', 'http://170.106.183.24:8081/photo/43.jpg', 'Sakura Girl', 'After All', 'Finding the light in the melody’s embrace.', 'MelodicLight');
INSERT INTO `music_details` VALUES (44, 44, 'http://170.106.183.24:8081/music/44.mp3', 'http://170.106.183.24:8081/photo/44.jpg', 'MBB', 'Bali', 'Music, my constant companion through life’s journey.', 'JourneyCompanion');
INSERT INTO `music_details` VALUES (45, 45, 'http://170.106.183.24:8081/music/45.mp3', 'http://170.106.183.24:8081/photo/45.jpg', 'Ferco', 'Bárcsak', 'This song is a burst of energy and hope.', 'EnergeticHope');
INSERT INTO `music_details` VALUES (46, 46, 'http://170.106.183.24:8081/music/46.mp3', 'http://170.106.183.24:8081/photo/46.jpg', 'Qlowdy', 'Cozy Town', 'Floating on the wings of melody.', 'MelodyWings');
INSERT INTO `music_details` VALUES (47, 47, 'http://170.106.183.24:8081/music/47.mp3', 'http://170.106.183.24:8081/photo/47.jpg', 'HiLau', 'Disc Drive', 'This song is like a key, unlocking my true feelings.', 'EmotionalKey');
INSERT INTO `music_details` VALUES (48, 48, 'http://170.106.183.24:8081/music/48.mp3', 'http://170.106.183.24:8081/photo/48.jpg', 'Roa', 'Dreamer', 'The beat resonates with my heart’s desires.', 'HeartbeatEcho');
INSERT INTO `music_details` VALUES (49, 49, 'http://170.106.183.24:8081/music/49.mp3', 'http://170.106.183.24:8081/photo/49.jpg', 'Declan DP', 'Interstellar', 'Letting the music fill the spaces between my thoughts.', 'ThoughtFiller');
INSERT INTO `music_details` VALUES (50, 50, 'http://170.106.183.24:8081/music/50.mp3', 'http://170.106.183.24:8081/photo/50.jpg', 'tubebackr', 'Kimaya', 'Immersed in the melody, I find my true self.', 'SelfSeeker');
INSERT INTO `music_details` VALUES (51, 51, 'http://170.106.183.24:8081/music/51.mp3', 'http://170.106.183.24:8081/photo/51.jpg', 'Declan DP', 'Look At The Clouds', 'Every note tells a story worth listening to.', 'Storyteller');
INSERT INTO `music_details` VALUES (52, 52, 'http://170.106.183.24:8081/music/52.mp3', 'http://170.106.183.24:8081/photo/52.jpg', 'Mehul Choudhary', 'Memory', 'This song is a canvas for my emotions.', 'EmotionPainter');
INSERT INTO `music_details` VALUES (53, 53, 'http://170.106.183.24:8081/music/53.mp3', 'http://170.106.183.24:8081/photo/53.jpg', 'Roa', 'Natural', 'The rhythm of life captured in a melody.', 'LifeRhythm');
INSERT INTO `music_details` VALUES (54, 54, 'http://170.106.183.24:8081/music/54.mp3', 'http://170.106.183.24:8081/photo/54.jpg', 'Spiring', 'Ocean Melody', 'Finding my stride in the beat of this song.', 'StrideFinder');
INSERT INTO `music_details` VALUES (55, 55, 'http://170.106.183.24:8081/music/55.mp3', 'http://170.106.183.24:8081/photo/55.jpg', 'Ferco', 'One Day Or Day One', 'This music is a beacon in my darkest night.', 'NightlightMelody');
INSERT INTO `music_details` VALUES (56, 56, 'http://170.106.183.24:8081/music/56.mp3', 'http://170.106.183.24:8081/photo/56.jpg', 'Ambyion & GalaxyTones', 'Planetarium', 'With each beat, a step closer to peace.', 'PeaceWalker');
INSERT INTO `music_details` VALUES (57, 57, 'http://170.106.183.24:8081/music/57.mp3', 'http://170.106.183.24:8081/photo/57.jpg', 'Roa', 'Snowflakes', 'This melody is my sanctuary.', 'MelodicSanctuary');
INSERT INTO `music_details` VALUES (58, 58, 'http://170.106.183.24:8081/music/58.mp3', 'http://170.106.183.24:8081/photo/58.jpg', 'Jay Someday', 'Wake Up Call', 'Dancing through life with this song as my guide.', 'LifeDance');
INSERT INTO `music_details` VALUES (59, 59, 'http://170.106.183.24:8081/music/59.mp3', 'http://170.106.183.24:8081/photo/59.jpg', 'Sakura Girl', 'Wake Up', 'Music brings color to my black and white days.', 'ColorfulTunes');
INSERT INTO `music_details` VALUES (60, 60, 'http://170.106.183.24:8081/music/60.mp3', 'http://170.106.183.24:8081/photo/60.jpg', 'Spiring', 'Way To You (Instrumental)', 'This song rejuvenates my spirit.', 'SpiritReviver');
INSERT INTO `music_details` VALUES (61, 61, 'http://170.106.183.24:8081/music/61.mp3', 'http://170.106.183.24:8081/photo/61.jpg', 'Atch', 'All The Same (Sped Up)', 'Every rhythm speaks to the adventurer in me.', 'RhythmicAdventurer');
INSERT INTO `music_details` VALUES (62, 62, 'http://170.106.183.24:8081/music/62.mp3', 'http://170.106.183.24:8081/photo/62.jpg', 'Roa', 'Care', 'Music is the architect of my emotions.', 'EmotionArchitect');
INSERT INTO `music_details` VALUES (63, 63, 'http://170.106.183.24:8081/music/63.mp3', 'http://170.106.183.24:8081/photo/63.jpg', 'Scandinavianz', 'Coconuts', 'Finding hope in the harmony.', 'HarmonicHope');
INSERT INTO `music_details` VALUES (64, 64, 'http://170.106.183.24:8081/music/64.mp3', 'http://170.106.183.24:8081/photo/64.jpg', 'Roa', 'Day Off', 'This melody is the light guiding me home.', 'GuidingMelody');
INSERT INTO `music_details` VALUES (65, 65, 'http://170.106.183.24:8081/music/65.mp3', 'http://170.106.183.24:8081/photo/65.jpg', 'Alex-Productions', 'Happy Carnival', 'The beat breathes life back into my soul.', 'SoulBreather');
INSERT INTO `music_details` VALUES (66, 66, 'http://170.106.183.24:8081/music/66.mp3', 'http://170.106.183.24:8081/photo/66.jpg', 'Roa', 'Haru', 'Swept away by the ocean of sound.', 'SoundSurfer');
INSERT INTO `music_details` VALUES (67, 67, 'http://170.106.183.24:8081/music/67.mp3', 'http://170.106.183.24:8081/photo/67.jpg', 'Aftertune', 'Kitty Time', 'Music is my therapy, my escape.', 'MusicTherapist');
INSERT INTO `music_details` VALUES (68, 68, 'http://170.106.183.24:8081/music/68.mp3', 'http://170.106.183.24:8081/photo/68.jpg', 'Roa', 'Last Summer', 'A song like this turns moments into memories.', 'MemoryMaker');
INSERT INTO `music_details` VALUES (69, 69, 'http://170.106.183.24:8081/music/69.mp3', 'http://170.106.183.24:8081/photo/69.jpg', 'Scandinavianz', 'Naxos', 'This melody holds the key to my heart.', 'HeartKey');
INSERT INTO `music_details` VALUES (70, 70, 'http://170.106.183.24:8081/music/70.mp3', 'http://170.106.183.24:8081/photo/70.jpg', 'Alex-Productions', 'New One', 'In every beat, a reason to smile.', 'SmileRhythm');
INSERT INTO `music_details` VALUES (71, 71, 'http://170.106.183.24:8081/music/71.mp3', 'http://170.106.183.24:8081/photo/71.jpg', 'Scandinavianz', 'Paris Nights', 'Harmony that heals every wound', 'HarmonyHealer');
INSERT INTO `music_details` VALUES (72, 72, 'http://170.106.183.24:8081/music/72.mp3', 'http://170.106.183.24:8081/photo/72.jpg', 'Peyruis', 'Party', 'A single song, a thousand emotions', 'EmotionExplorer');
INSERT INTO `music_details` VALUES (73, 73, 'http://170.106.183.24:8081/music/73.mp3', 'http://170.106.183.24:8081/photo/73.jpg', 'Tokiwave', 'Peach House', 'The soundtrack to my best moments', 'BestMomentBand');
INSERT INTO `music_details` VALUES (74, 74, 'http://170.106.183.24:8081/music/74.mp3', 'http://170.106.183.24:8081/photo/74.jpg', 'KV', 'Pool', 'Music is the pulse of life', 'LifePulse');
INSERT INTO `music_details` VALUES (75, 75, 'http://170.106.183.24:8081/music/75.mp3', 'http://170.106.183.24:8081/photo/75.jpg', 'Scandinavianz', 'Sauna', 'Every lyric speaks to my soul', 'LyricSoulmate');
INSERT INTO `music_details` VALUES (76, 76, 'http://170.106.183.24:8081/music/76.mp3', 'http://170.106.183.24:8081/photo/76.jpg', 'Mehul Choudhary', 'Sunrise', 'Dance to the rhythm of hope', 'HopeDancer');
INSERT INTO `music_details` VALUES (77, 77, 'http://170.106.183.24:8081/music/77.mp3', 'http://170.106.183.24:8081/photo/77.jpg', 'Scandinavianz', 'Sunscreen', 'A melody that carries me away from it all', 'MelodyWings');
INSERT INTO `music_details` VALUES (78, 78, 'http://170.106.183.24:8081/music/78.mp3', 'http://170.106.183.24:8081/photo/78.jpg', 'LiQWYD', 'Told Me', 'Songs like these keep my dreams alive', 'DreamKeeper');
INSERT INTO `music_details` VALUES (79, 79, 'http://170.106.183.24:8081/music/79.mp3', 'http://170.106.183.24:8081/photo/79.jpg', 'LiQWYD', 'Up And Down', 'Turning my thoughts into melodies', 'ThoughtfulMelodies');
INSERT INTO `music_details` VALUES (80, 80, 'http://170.106.183.24:8081/music/80.mp3', 'http://170.106.183.24:8081/photo/80.jpg', 'Tokyo Music Walker', 'Where Do We Go', 'Music is my sanctuary in the chaos', 'ChaosSanctuary');
INSERT INTO `music_details` VALUES (81, 81, 'http://170.106.183.24:8081/music/81.mp3', 'http://170.106.183.24:8081/photo/81.jpg', 'Spiring', 'Alive', 'Each note a step towards happiness', 'HappyNotes');
INSERT INTO `music_details` VALUES (82, 82, 'http://170.106.183.24:8081/music/82.mp3', 'http://170.106.183.24:8081/photo/82.jpg', 'KV', 'Build', 'A beat that beats my fears', 'FearlessBeat');
INSERT INTO `music_details` VALUES (83, 83, 'http://170.106.183.24:8081/music/83.mp3', 'http://170.106.183.24:8081/photo/83.jpg', 'Tokyo Music Walker', 'Closing Time', 'Music, the friend that never lets me down', 'FaithfulMelody');
INSERT INTO `music_details` VALUES (84, 84, 'http://170.106.183.24:8081/music/84.mp3', 'http://170.106.183.24:8081/photo/84.jpg', 'Tokyo Music Walker', 'Coast to Coast', 'Finding joy in every beat', 'JoyfulBeats');
INSERT INTO `music_details` VALUES (85, 85, 'http://170.106.183.24:8081/music/85.mp3', 'http://170.106.183.24:8081/photo/85.jpg', 'Pyrosion', 'Dream State', 'A song that speaks when I cannot', 'VoicelessSpeaker');
INSERT INTO `music_details` VALUES (86, 86, 'http://170.106.183.24:8081/music/86.mp3', 'http://170.106.183.24:8081/photo/86.jpg', 'Spiring', 'Dreamy', 'The rhythm that moves mountains', 'MountainMover');
INSERT INTO `music_details` VALUES (87, 87, 'http://170.106.183.24:8081/music/87.mp3', 'http://170.106.183.24:8081/photo/87.jpg', 'Hotham', 'Drive Town', 'Melodies that mend the broken parts of me', 'MelodyMender');
INSERT INTO `music_details` VALUES (88, 88, 'http://170.106.183.24:8081/music/88.mp3', 'http://170.106.183.24:8081/photo/88.jpg', 'Mehul Choudhary', 'Ethereal', 'This tune turns my blues into brights', 'BluesBeater');
INSERT INTO `music_details` VALUES (89, 89, 'http://170.106.183.24:8081/music/89.mp3', 'http://170.106.183.24:8081/photo/89.jpg', 'LiQWYD', 'Hang On', 'Music that stitches the stars into my night sky', 'StarrySounds');
INSERT INTO `music_details` VALUES (90, 90, 'http://170.106.183.24:8081/music/90.mp3', 'http://170.106.183.24:8081/photo/90.jpg', 'Di Young', 'Minecraft', 'A harmony that sets my spirit free', 'SpiritFreedom');
INSERT INTO `music_details` VALUES (91, 91, 'http://170.106.183.24:8081/music/91.mp3', 'http://170.106.183.24:8081/photo/91.jpg', 'Filo Starquez', 'Panoramic', 'Every note is a brushstroke painting my emotions', 'EmotionalArtist');
INSERT INTO `music_details` VALUES (92, 92, 'http://170.106.183.24:8081/music/92.mp3', 'http://170.106.183.24:8081/photo/92.jpg', 'Ghostrifter Official', 'Serenity', 'Music, the ultimate journey', 'MusicalVoyager');
INSERT INTO `music_details` VALUES (93, 93, 'http://170.106.183.24:8081/music/93.mp3', 'http://170.106.183.24:8081/photo/93.jpg', 'tubebackr & HiLau', 'Subliminal', 'Beats that build bridges to my aspirations', 'BridgeBuilder');
INSERT INTO `music_details` VALUES (94, 94, 'http://170.106.183.24:8081/music/94.mp3', 'http://170.106.183.24:8081/photo/94.jpg', 'Filo Starquez', 'Summer Rain', 'Living in the rhythm, thriving in the beat', 'RhythmLifer');
INSERT INTO `music_details` VALUES (95, 95, 'http://170.106.183.24:8081/music/95.mp3', 'http://170.106.183.24:8081/photo/95.jpg', 'Filo Starquez', 'The Right Path', 'This song wraps around me like a blanket', 'SonicBlanket');
INSERT INTO `music_details` VALUES (96, 96, 'http://170.106.183.24:8081/music/96.mp3', 'http://170.106.183.24:8081/photo/96.jpg', 'Pyrosion', 'Thinking About You', 'Notes that navigate my soul\'s deepest waters', 'DeepWaterNavigator');
INSERT INTO `music_details` VALUES (97, 97, 'http://170.106.183.24:8081/music/97.mp3', 'http://170.106.183.24:8081/photo/97.jpg', 'GalaxyTones', 'Touched by the Sky', 'Turning up the music, lighting up my soul', 'SoulLighter');
INSERT INTO `music_details` VALUES (98, 98, 'http://170.106.183.24:8081/music/98.mp3', 'http://170.106.183.24:8081/photo/98.jpg', 'Hotham', 'Tranquil Times', 'Each beat, a whisper of the universe', 'CosmicWhisper');
INSERT INTO `music_details` VALUES (99, 99, 'http://170.106.183.24:8081/music/99.mp3', 'http://170.106.183.24:8081/photo/99.jpg', 'Filo Starquez', 'Wilderness', 'Songs that shape my path forward', 'PathShaper');
INSERT INTO `music_details` VALUES (100, 100, 'http://170.106.183.24:8081/music/100.mp3', 'http://170.106.183.24:8081/photo/100.jpg', 'Aftertune', 'another feeling', 'Let the rhythm rule your heart', 'RhythmRuler');
INSERT INTO `music_details` VALUES (101, 101, 'http://170.106.183.24:8081/music/101.mp3', 'http://170.106.183.24:8081/photo/101.jpg', 'Devyzed', 'Altered State', 'Music: my secret ingredient for a happy life', 'HappyTune');
INSERT INTO `music_details` VALUES (102, 102, 'http://170.106.183.24:8081/music/102.mp3', 'http://170.106.183.24:8081/photo/102.jpg', 'LiQWYD', 'Ascent', 'This melody speaks the language of my heart', 'HeartLinguist');
INSERT INTO `music_details` VALUES (103, 103, 'http://170.106.183.24:8081/music/103.mp3', 'http://170.106.183.24:8081/photo/103.jpg', 'Luke Hall', 'Awake', 'Songs that soar with my highest hopes', 'HighHopes');
INSERT INTO `music_details` VALUES (104, 104, 'http://170.106.183.24:8081/music/104.mp3', 'http://170.106.183.24:8081/photo/104.jpg', 'LiQWYD', 'Awaken', 'Melodies make memories eternal', 'MemoryMelody');
INSERT INTO `music_details` VALUES (105, 105, 'http://170.106.183.24:8081/music/105.mp3', 'http://170.106.183.24:8081/photo/105.jpg', 'Onycs', 'Bloom', 'Every chord a comfort', 'ChordComforter');
INSERT INTO `music_details` VALUES (106, 106, 'http://170.106.183.24:8081/music/106.mp3', 'http://170.106.183.24:8081/photo/106.jpg', 'Scandinavianz', 'Cape Verde', 'This tune teaches me to dream bigger', 'DreamTutor');
INSERT INTO `music_details` VALUES (107, 107, 'http://170.106.183.24:8081/music/107.mp3', 'http://170.106.183.24:8081/photo/107.jpg', 'Alex-Productions', 'Chinese New Year', 'Harmonies that hug the soul', 'SoulHugger');
INSERT INTO `music_details` VALUES (108, 108, 'http://170.106.183.24:8081/music/108.mp3', 'http://170.106.183.24:8081/photo/108.jpg', 'LiQWYD', 'City Dreams', 'Beats that bounce back brighter', 'BrightBeats');
INSERT INTO `music_details` VALUES (109, 109, 'http://170.106.183.24:8081/music/109.mp3', 'http://170.106.183.24:8081/photo/109.jpg', 'KV', 'Dimension', 'Music: the thread that weaves my days together', 'DayWeaver');
INSERT INTO `music_details` VALUES (110, 110, 'http://170.106.183.24:8081/music/110.mp3', 'http://170.106.183.24:8081/photo/110.jpg', 'Dylan Emmet', 'Don\'t Love Myself', 'Notes that knit my heart\'s desires', 'HeartKnitter');
INSERT INTO `music_details` VALUES (111, 111, 'http://170.106.183.24:8081/music/111.mp3', 'http://170.106.183.24:8081/photo/111.jpg', 'Devyzed', 'Drifting Away', 'Tunes that transport me to tranquility', 'TranquilTuner');
INSERT INTO `music_details` VALUES (112, 112, 'http://170.106.183.24:8081/music/112.mp3', 'http://170.106.183.24:8081/photo/112.jpg', 'Mehul Choudhary', 'Elevate', 'A song that sings to the rhythm of the rain', 'RainRhythm');
INSERT INTO `music_details` VALUES (113, 113, 'http://170.106.183.24:8081/music/113.mp3', 'http://170.106.183.24:8081/photo/113.jpg', 'Artificial.Music', 'Empathic Prosperity', 'Music melds the moments into magic', 'MagicMelodies');
INSERT INTO `music_details` VALUES (114, 114, 'http://170.106.183.24:8081/music/114.mp3', 'http://170.106.183.24:8081/photo/114.jpg', 'Baribal & Pold', 'Get Here', 'Melody that mirrors my mind', 'MindMirror');
INSERT INTO `music_details` VALUES (115, 115, 'http://170.106.183.24:8081/music/115.mp3', 'http://170.106.183.24:8081/photo/115.jpg', 'Tobjan', 'In Your Eyes', 'This beat brings me back to bliss', 'BlissfulBeats');
INSERT INTO `music_details` VALUES (116, 116, 'http://170.106.183.24:8081/music/116.mp3', 'http://170.106.183.24:8081/photo/116.jpg', 'LiQWYD', 'Moving On', 'Finding the melody in the mess', 'MelodyFinder');
INSERT INTO `music_details` VALUES (117, 117, 'http://170.106.183.24:8081/music/117.mp3', 'http://170.106.183.24:8081/photo/117.jpg', 'Mehul Choudhary', 'Starlight', 'Chords that carve out calm', 'CalmCarver');
INSERT INTO `music_details` VALUES (118, 118, 'http://170.106.183.24:8081/music/118.mp3', 'http://170.106.183.24:8081/photo/118.jpg', 'KV', 'Synapse', 'Let the music echo your essence', 'EssenceEcho');
INSERT INTO `music_details` VALUES (119, 119, 'http://170.106.183.24:8081/music/119.mp3', 'http://170.106.183.24:8081/photo/119.jpg', 'LiQWYD', 'To The Moon', 'The song that sews seams of serenity', 'SerenityStitcher');
INSERT INTO `music_details` VALUES (120, 120, 'http://170.106.183.24:8081/music/120.mp3', 'http://170.106.183.24:8081/photo/120.jpg', 'Onycs', 'Voyager', 'Beats that breathe beauty into my days', 'BeautyBreather');
INSERT INTO `music_details` VALUES (121, 121, 'http://170.106.183.24:8081/music/121.mp3', 'http://170.106.183.24:8081/photo/121.jpg', 'Alex-Productions', 'Beautiful Wonder', 'Melodies that move my world', 'WorldMover');
INSERT INTO `music_details` VALUES (122, 122, 'http://170.106.183.24:8081/music/122.mp3', 'http://170.106.183.24:8081/photo/122.jpg', 'Lucjo', 'Cairo', 'Harmonies that heal the heart', 'HeartHealer');
INSERT INTO `music_details` VALUES (123, 123, 'http://170.106.183.24:8081/music/123.mp3', 'http://170.106.183.24:8081/photo/123.jpg', 'Jay Someday', 'Care', 'The rhythm of the rain, the melody of the moon', 'MoonMelody');
INSERT INTO `music_details` VALUES (124, 124, 'http://170.106.183.24:8081/music/124.mp3', 'http://170.106.183.24:8081/photo/124.jpg', 'Mehul Choudhary', 'Cyberreality', 'A symphony for the soul’s story', 'SoulSymphony');
INSERT INTO `music_details` VALUES (125, 125, 'http://170.106.183.24:8081/music/125.mp3', 'http://170.106.183.24:8081/photo/125.jpg', 'Ferco', 'Fish Cannot Climb Trees', 'This song stitches stars into my sky', 'StarStitcher');
INSERT INTO `music_details` VALUES (126, 126, 'http://170.106.183.24:8081/music/126.mp3', 'http://170.106.183.24:8081/photo/126.jpg', 'Alex-Productions', 'Freedom', 'Rhythms that resonate with the real me', 'RealRhythm');
INSERT INTO `music_details` VALUES (127, 127, 'http://170.106.183.24:8081/music/127.mp3', 'http://170.106.183.24:8081/photo/127.jpg', 'jiglr', 'Lapse', 'Finding my pace in the playlist', 'PlaylistPacer');
INSERT INTO `music_details` VALUES (128, 128, 'http://170.106.183.24:8081/music/128.mp3', 'http://170.106.183.24:8081/photo/128.jpg', 'Alex-Productions', 'Majestic', 'Melodies that mold my morning mood', 'MorningMelody');
INSERT INTO `music_details` VALUES (129, 129, 'http://170.106.183.24:8081/music/129.mp3', 'http://170.106.183.24:8081/photo/129.jpg', 'Tokyo Music Walker', 'Nature\'s Beauty', 'Turn the track up, tune the world out', 'TuneTuner');
INSERT INTO `music_details` VALUES (130, 130, 'http://170.106.183.24:8081/music/130.mp3', 'http://170.106.183.24:8081/photo/130.jpg', 'Lucjo', 'Odyssey', 'This song simplifies the complex emotions', 'SimpleSound');
INSERT INTO `music_details` VALUES (131, 131, 'http://170.106.183.24:8081/music/101.mp3', 'http://170.106.183.24:8081/photo/101.jpg', 'Sakura Girl', 'Paris', 'Music magnifies the magic moments', 'MagicMagnifier');
INSERT INTO `music_details` VALUES (132, 132, 'http://170.106.183.24:8081/music/132.mp3', 'http://170.106.183.24:8081/photo/132.jpg', 'Artificial.Music & Mehul ShaRma', 'Rough Nights', 'Harmonies that hold history', 'HistoryHarmonist');
INSERT INTO `music_details` VALUES (133, 133, 'http://170.106.183.24:8081/music/133.mp3', 'http://170.106.183.24:8081/photo/133.jpg', 'ASHUTOSH', 'Royal', 'Every tune a thread in the tapestry of life', 'LifeWeaver');
INSERT INTO `music_details` VALUES (134, 134, 'http://170.106.183.24:8081/music/134.mp3', 'http://170.106.183.24:8081/photo/134.jpg', 'Artificial.Music', 'Skyline Mirage', 'Each song, a portal to peace', 'PeacePortal');
INSERT INTO `music_details` VALUES (135, 135, 'http://170.106.183.24:8081/music/135.mp3', 'http://170.106.183.24:8081/photo/135.jpg', 'Tomh.', 'Snowflakes', 'The rhythm that rewrites my reality', 'RealityRewriter');
INSERT INTO `music_details` VALUES (136, 136, 'http://170.106.183.24:8081/music/136.mp3', 'http://170.106.183.24:8081/photo/136.jpg', 'Tomh.', 'Steam', 'Notes that nourish my soul', 'SoulNourisher');
INSERT INTO `music_details` VALUES (137, 137, 'http://170.106.183.24:8081/music/137.mp3', 'http://170.106.183.24:8081/photo/137.jpg', 'TVARI', 'Venice Beach', 'Harmony that whispers wisdom', 'WisdomWhisperer');
INSERT INTO `music_details` VALUES (138, 138, 'http://170.106.183.24:8081/music/138.mp3', 'http://170.106.183.24:8081/photo/138.jpg', 'jiglr', 'Whisper', 'This melody melts away my worries', 'WorryMeltdown');
INSERT INTO `music_details` VALUES (139, 139, 'http://170.106.183.24:8081/music/139.mp3', 'http://170.106.183.24:8081/photo/139.jpg', 'Tomh.', 'Wistfulness', 'Finding solace in the symphony', 'SymphonySeeker');
INSERT INTO `music_details` VALUES (140, 140, 'http://170.106.183.24:8081/music/140.mp3', 'http://170.106.183.24:8081/photo/140.jpg', 'Nettson', 'emotion deepness', 'Music as my muse, inspiring every step', 'MusicMuse');

-- ----------------------------
-- Table structure for music_recommend
-- ----------------------------
DROP TABLE IF EXISTS `music_recommend`;
CREATE TABLE `music_recommend`  (
  `recommend_id` int NOT NULL AUTO_INCREMENT,
  `emotion_recommend_score` double(5, 2) NULL DEFAULT NULL COMMENT '心情推荐度',
  `gender_recommend_score` double(5, 2) NULL DEFAULT NULL COMMENT '性别推荐度',
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `emotion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '心情',
  PRIMARY KEY (`recommend_id`) USING BTREE,
  UNIQUE INDEX `unique_combination`(`recommend_id` ASC, `gender` ASC, `emotion` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 281 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of music_recommend
-- ----------------------------
INSERT INTO `music_recommend` VALUES (1, 0.95, 0.02, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (2, 0.23, 0.37, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (3, 0.64, 0.76, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (4, 0.11, 0.92, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (5, 0.58, 0.12, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (6, 0.78, 0.42, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (7, 0.53, 0.36, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (8, 0.02, 0.44, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (9, 0.30, 0.14, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (10, 0.62, 0.66, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (11, 0.19, 0.65, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (12, 0.42, 0.08, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (13, 0.39, 0.60, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (14, 0.24, 0.78, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (15, 0.62, 0.53, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (16, 0.38, 0.53, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (17, 0.82, 0.67, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (18, 0.46, 0.61, 'male', 'angry');
INSERT INTO `music_recommend` VALUES (19, 0.57, 0.81, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (20, 0.18, 0.93, 'female', 'angry');
INSERT INTO `music_recommend` VALUES (21, 0.72, 0.31, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (22, 0.96, 0.68, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (23, 0.44, 0.72, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (24, 0.19, 0.16, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (25, 0.59, 0.33, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (26, 0.36, 0.19, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (27, 0.83, 0.51, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (28, 0.75, 0.60, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (29, 0.95, 0.47, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (30, 0.25, 0.64, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (31, 0.37, 0.46, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (32, 0.68, 0.76, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (33, 0.58, 0.59, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (34, 0.21, 0.48, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (35, 0.29, 0.23, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (36, 0.67, 0.51, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (37, 0.30, 0.80, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (38, 0.07, 0.06, 'female', 'disgust');
INSERT INTO `music_recommend` VALUES (39, 0.38, 0.55, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (40, 0.47, 0.47, 'male', 'disgust');
INSERT INTO `music_recommend` VALUES (41, 0.26, 0.49, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (42, 0.93, 0.62, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (43, 0.63, 0.25, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (44, 0.13, 0.53, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (45, 0.61, 0.32, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (46, 0.03, 0.74, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (47, 0.85, 0.39, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (48, 0.91, 0.31, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (49, 0.14, 0.27, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (50, 0.88, 0.56, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (51, 0.20, 0.49, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (52, 0.62, 0.65, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (53, 0.06, 0.11, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (54, 0.40, 0.95, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (55, 0.89, 0.81, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (56, 0.51, 0.37, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (57, 0.59, 0.91, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (58, 0.18, 0.56, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (59, 0.60, 0.24, 'female', 'fear');
INSERT INTO `music_recommend` VALUES (60, 0.25, 0.06, 'male', 'fear');
INSERT INTO `music_recommend` VALUES (61, 0.62, 0.42, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (62, 0.90, 0.81, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (63, 0.23, 0.17, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (64, 0.29, 0.99, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (65, 0.28, 0.27, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (66, 0.77, 0.29, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (67, 0.77, 0.47, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (68, 0.74, 0.60, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (69, 0.07, 0.03, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (70, 0.69, 0.59, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (71, 0.59, 0.32, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (72, 0.25, 0.73, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (73, 0.38, 0.13, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (74, 0.30, 0.88, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (75, 0.87, 0.85, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (76, 0.60, 0.13, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (77, 0.86, 0.74, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (78, 0.46, 0.89, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (79, 0.64, 0.03, 'female', 'happy');
INSERT INTO `music_recommend` VALUES (80, 0.06, 0.61, 'male', 'happy');
INSERT INTO `music_recommend` VALUES (81, 0.52, 0.99, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (82, 0.00, 0.83, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (83, 0.16, 0.43, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (84, 0.02, 0.11, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (85, 0.17, 0.33, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (86, 0.83, 0.65, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (87, 0.90, 0.17, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (88, 0.30, 0.03, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (89, 0.14, 0.94, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (90, 0.65, 0.38, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (91, 0.48, 0.64, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (92, 0.80, 0.77, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (93, 0.05, 0.82, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (94, 0.25, 0.42, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (95, 0.51, 0.47, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (96, 0.77, 0.32, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (97, 0.60, 0.07, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (98, 0.57, 0.16, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (99, 0.07, 0.03, 'male', 'neutral');
INSERT INTO `music_recommend` VALUES (100, 0.65, 0.39, 'female', 'neutral');
INSERT INTO `music_recommend` VALUES (101, 0.92, 0.53, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (102, 0.88, 0.71, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (103, 0.44, 0.45, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (104, 0.25, 0.49, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (105, 0.98, 0.82, 'female', 'sad');
INSERT INTO `music_recommend` VALUES (106, 0.45, 0.71, 'female', 'sad');
INSERT INTO `music_recommend` VALUES (107, 0.84, 0.63, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (108, 0.30, 0.58, 'female', 'sad');
INSERT INTO `music_recommend` VALUES (109, 0.26, 0.31, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (110, 0.80, 0.78, 'female', 'sad');
INSERT INTO `music_recommend` VALUES (111, 0.10, 0.02, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (112, 0.06, 0.81, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (113, 0.92, 0.01, 'female', 'sad');
INSERT INTO `music_recommend` VALUES (114, 0.37, 0.01, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (115, 0.67, 0.54, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (116, 0.71, 0.58, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (117, 0.95, 0.56, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (118, 0.08, 0.54, 'female', 'sad');
INSERT INTO `music_recommend` VALUES (119, 0.71, 0.17, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (120, 0.01, 0.92, 'male', 'sad');
INSERT INTO `music_recommend` VALUES (121, 0.19, 0.20, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (122, 0.41, 0.86, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (123, 0.74, 0.51, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (124, 0.17, 0.82, 'male', 'surprise');
INSERT INTO `music_recommend` VALUES (125, 0.42, 0.37, 'male', 'surprise');
INSERT INTO `music_recommend` VALUES (126, 0.93, 0.81, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (127, 0.85, 0.49, 'male', 'surprise');
INSERT INTO `music_recommend` VALUES (128, 0.94, 0.07, 'male', 'surprise');
INSERT INTO `music_recommend` VALUES (129, 0.47, 0.75, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (130, 0.48, 0.35, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (131, 0.54, 0.76, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (132, 0.53, 0.15, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (133, 0.43, 0.61, 'male', 'surprise');
INSERT INTO `music_recommend` VALUES (134, 1.00, 0.70, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (135, 0.36, 0.34, 'male', 'surprise');
INSERT INTO `music_recommend` VALUES (136, 0.97, 0.06, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (137, 0.86, 0.05, 'male', 'surprise');
INSERT INTO `music_recommend` VALUES (138, 0.35, 0.65, 'female', 'surprise');
INSERT INTO `music_recommend` VALUES (139, 0.04, 0.60, 'male', 'surprise');
INSERT INTO `music_recommend` VALUES (140, 0.69, 0.76, 'male', 'surprise');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `UK_USERNAME`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'alipex', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
