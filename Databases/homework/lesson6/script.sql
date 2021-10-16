USE vk;

-- “аблица постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (1, 37, 9, 'Quis ut aut in accusantium.', 'Alice did not see anything that had fallen into the sky. Alice went on muttering over the jury-box with the Queen never left off writing on his knee, and looking at the Hatter, with an M, such as.', 43, '2015-08-01 00:04:32', '2011-03-31 13:34:44');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (2, 5, 8, 'Omnis ab illo incidunt eos autem quae pariatur.', 'But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her haste, she had never done such a long silence after this, and Alice was more hopeless than ever: she sat.', 91, '2019-10-07 15:08:28', '2012-08-20 11:30:26');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (3, 48, 2, 'Aut temporibus ut necessitatibus asperiores qui nam.', 'Suppress him! Pinch him! Off with his head!\' or \'Off with her arms folded, frowning like a snout than a real nose; also its eyes were getting extremely small for a minute, while Alice thought this a.', 84, '2013-07-14 12:57:44', '2017-09-05 07:52:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (4, 27, 6, 'Dolore aut temporibus qui eos commodi atque.', 'WAS a curious plan!\' exclaimed Alice. \'That\'s very important,\' the King and Queen of Hearts, carrying the King\'s crown on a little nervous about it in a sort of present!\' thought Alice. The King and.', 86, '2019-03-07 12:05:18', '2014-10-31 15:36:26');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (5, 49, 6, 'Consectetur adipisci ducimus fugiat deserunt praesentium corporis rerum.', 'Queen say only yesterday you deserved to be said. At last the Caterpillar contemptuously. \'Who are YOU?\' said the Pigeon; \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the March.', 25, '2011-11-05 13:24:16', '2015-01-07 10:16:24');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (6, 48, 8, 'Nobis aut non quia tempore quia laboriosam.', 'King said to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a timid voice at her hands, wondering if anything would EVER happen in a VERY turn-up nose, much.', 53, '2017-08-16 09:31:57', '2010-11-03 05:28:02');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (7, 20, 1, 'Minima harum aut libero quia ut veniam consequatur.', 'Alice could hardly hear the very middle of one! There ought to go down the middle, wondering how she would get up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know it was.', 20, '2011-03-31 04:13:48', '2015-12-27 22:26:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (8, 12, 8, 'Nam qui adipisci sit corporis quaerat omnis.', 'Alice hastily replied; \'at least--at least I mean what I eat\" is the reason so many different sizes in a rather offended tone, and everybody laughed, \'Let the jury asked. \'That I can\'t remember,\'.', 78, '2019-09-12 02:19:48', '2017-07-21 11:44:57');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (9, 18, 4, 'Iusto porro aliquid voluptatibus.', 'Alice! when she caught it, and fortunately was just in time to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Caterpillar. \'Not QUITE right, I\'m.', 39, '2017-06-26 06:25:58', '2011-07-12 14:03:49');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (10, 32, 1, 'Maxime sit numquam numquam illo.', 'Duchess sneezed occasionally; and as the rest were quite silent, and looked at the end of the miserable Mock Turtle. So she set to work very diligently to write with one eye, How the Owl had the.', 16, '2015-09-09 08:33:05', '2016-08-24 10:21:35');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (11, 10, 5, 'Perferendis qui at aut.', 'I meant,\' the King in a dreamy sort of people live about here?\' \'In THAT direction,\' the Cat went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the.', 29, '2020-04-24 14:26:10', '2013-09-14 01:15:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (12, 79, 8, 'Exercitationem numquam eveniet voluptas eligendi possimus aut.', 'VERY unpleasant state of mind, she turned to the executioner: \'fetch her here.\' And the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, \'tis love, that makes them so often, you know.\' \'Not.', 78, '2019-11-13 21:06:21', '2016-10-09 01:58:07');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (13, 9, 6, 'Omnis impedit deserunt ut et quia.', 'Alice again, for this time she saw in my time, but never ONE with such sudden violence that Alice quite hungry to look at it!\' This speech caused a remarkable sensation among the people near the.', 49, '2019-04-26 11:12:54', '2010-11-29 02:44:27');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (14, 17, 10, 'Exercitationem exercitationem quia iure.', 'By the time she had put on his slate with one finger for the moment they saw her, they hurried back to the beginning of the jurymen. \'No, they\'re not,\' said the Duchess. An invitation for the.', 64, '2011-01-08 01:02:10', '2012-06-03 19:35:35');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (15, 68, 5, 'Fugit maiores voluptas aut iste quis et placeat.', 'QUEEN OF HEARTS. Alice was too small, but at last turned sulky, and would only say, \'I am older than I am now? That\'ll be a walrus or hippopotamus, but then she noticed that the poor little thing.', 95, '2014-05-08 04:16:49', '2011-10-31 23:27:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (16, 79, 3, 'Exercitationem sit sint quis repellendus iusto doloribus.', 'First, she tried to open her mouth; but she stopped hastily, for the Dormouse,\' thought Alice; \'but when you have to turn into a pig, my dear,\' said Alice, \'because I\'m not looking for eggs, I know.', 70, '2017-03-10 06:27:20', '2018-08-14 14:16:52');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (17, 1, 4, 'Asperiores fugit perspiciatis voluptas temporibus sunt quia.', 'I fancied that kind of thing never happened, and now here I am to see what was on the ground near the King said gravely, \'and go on crying in this affair, He trusts to you never had to ask help of.', 1, '2012-08-12 08:24:05', '2017-12-14 12:22:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (18, 57, 8, 'Et minus sit eum voluptatum.', 'Gryphon, lying fast asleep in the distance, and she was near enough to try the first verse,\' said the Mock Turtle. \'No, no! The adventures first,\' said the Mock Turtle in a Little Bill It was the.', 98, '2012-05-27 22:24:40', '2011-08-12 01:39:39');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (19, 49, 1, 'Culpa non facilis perspiciatis vero quasi quia corrupti harum.', 'She waited for a conversation. \'You don\'t know what a long argument with the strange creatures of her or of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the Rabbit coming.', 40, '2013-08-09 03:07:31', '2014-03-05 07:08:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (20, 27, 10, 'Earum asperiores ratione qui ea quae.', 'Nobody moved. \'Who cares for you?\' said Alice, \'because I\'m not the smallest idea how confusing it is to France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could.', 44, '2014-05-20 04:32:18', '2019-11-10 02:17:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (21, 36, 2, 'Est vero aut non ipsam.', 'Hatter, with an important air, \'are you all ready? This is the same thing as a lark, And will talk in contemptuous tones of her sharp little chin. \'I\'ve a right to think,\' said Alice timidly. \'Would.', 49, '2011-04-18 12:03:29', '2016-02-03 06:59:02');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (22, 11, 5, 'Cum et ducimus repellendus eligendi.', 'I\'ll kick you down stairs!\' \'That is not said right,\' said the Mouse, who seemed to be no chance of her favourite word \'moral,\' and the poor animal\'s feelings. \'I quite agree with you,\' said the.', 20, '2014-06-07 01:30:35', '2014-05-14 19:42:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (23, 84, 10, 'Explicabo facere expedita quia quod iusto ut aut natus.', 'Alice did not like the right size to do it! Oh dear! I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the driest thing I.', 61, '2013-06-17 15:49:47', '2014-02-28 15:57:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (24, 39, 10, 'Sunt enim qui dolores qui.', 'Alice after it, never once considering how in the act of crawling away: besides all this, there was a table set out under a tree in front of the court, \'Bring me the list of singers. \'You may go,\'.', 36, '2014-08-11 07:05:07', '2019-10-26 12:25:38');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (25, 41, 7, 'Minima et deleniti enim et consequuntur et.', 'MARMALADE\', but to open her mouth; but she was now more than Alice could not make out at all for any of them. \'I\'m sure those are not the smallest notice of them at dinn--\' she checked herself.', 18, '2018-04-19 08:35:36', '2015-04-19 13:03:07');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (26, 27, 6, 'Enim dicta non eaque exercitationem est sint voluptatem.', 'King. \'When did you ever saw. How she longed to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at the top with its mouth again, and she grew no larger:.', 31, '2012-11-26 13:27:57', '2015-12-15 00:39:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (27, 46, 5, 'Est eos et vel velit neque at.', 'King said to one of them hit her in a solemn tone, only changing the order of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his.', 96, '2013-07-07 17:04:54', '2016-01-06 13:15:54');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (28, 21, 8, 'Optio assumenda necessitatibus placeat voluptatem.', 'You gave us three or more; They all sat down a good deal on where you want to stay with it as far as they were gardeners, or soldiers, or courtiers, or three pairs of tiny white kid gloves, and was.', 10, '2016-03-05 09:36:32', '2011-09-02 00:00:19');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (29, 43, 7, 'Molestias est quaerat aspernatur laboriosam cupiditate odit autem.', 'King said, with a yelp of delight, and rushed at the place of the wood to listen. \'Mary Ann! Mary Ann!\' said the one who got any advantage from the time he had never before seen a cat without a.', 71, '2010-09-06 10:57:06', '2014-10-19 07:39:52');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (30, 47, 1, 'Unde dicta sunt rem enim libero enim non.', 'Bill\'s got the other--Bill! fetch it back!\' \'And who is Dinah, if I shall have somebody to talk about her other little children, and everybody laughed, \'Let the jury wrote it down \'important,\' and.', 65, '2013-06-03 03:40:56', '2010-05-06 15:25:08');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (31, 97, 3, 'Illo ducimus reprehenderit sequi mollitia incidunt quaerat.', 'However, I\'ve got to the garden at once; but, alas for poor Alice! when she had never had to fall a long argument with the glass table and the King had said that day. \'A likely story indeed!\' said.', 54, '2019-02-02 04:43:41', '2020-02-21 12:20:21');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (32, 18, 2, 'Beatae ut alias qui ea nam facilis.', 'Dormouse into the teapot. \'At any rate a book written about me, that there was the White Rabbit read:-- \'They told me he was speaking, and this time she had put the Dormouse again, so that it is!\'.', 17, '2015-09-23 23:18:17', '2018-10-09 19:52:39');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (33, 87, 10, 'Et officiis dolor dolorem aliquid voluptas.', 'Alice ventured to remark. \'Tut, tut, child!\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Cat remarked. \'Don\'t be impertinent,\' said the.', 36, '2010-08-15 22:13:18', '2014-07-12 18:28:21');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (34, 65, 9, 'Vitae ea tenetur inventore vel.', 'When the Mouse with an M--\' \'Why with an M?\' said Alice. \'Come on, then,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little house in it about four feet high. \'Whoever lives.', 93, '2015-11-10 19:27:19', '2012-06-05 13:58:00');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (35, 96, 9, 'Provident quae dolorum velit quia.', 'The chief difficulty Alice found at first was moderate. But the insolence of his head. But at any rate, there\'s no use denying it. I suppose it were white, but there were ten of them, and all of.', 49, '2019-01-22 22:50:10', '2018-08-07 01:13:27');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (36, 45, 3, 'Alias accusantium totam porro id cupiditate non earum.', 'Alice could see, when she first saw the White Rabbit as he spoke. \'UNimportant, of course, to begin again, it was too small, but at the corners: next the ten courtiers; these were all writing very.', 72, '2019-08-16 01:38:50', '2013-07-25 00:22:21');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (37, 44, 2, 'Similique et eum dolores ratione et error.', 'However, this bottle does. I do hope it\'ll make me grow smaller, I suppose.\' So she tucked her arm affectionately into Alice\'s, and they can\'t prove I did: there\'s no room to open it; but, as the.', 65, '2015-04-13 08:07:49', '2016-01-25 04:59:34');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (38, 19, 1, 'Esse maxime nihil vero nam et.', 'Last came a little girl,\' said Alice, \'how am I to do with you. Mind now!\' The poor little juror (it was Bill, the Lizard) could not remember ever having seen such a capital one for catching.', 93, '2018-02-17 06:19:02', '2015-04-17 05:34:30');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (39, 20, 7, 'Facere sit ut accusamus nulla.', 'NOT, being made entirely of cardboard.) \'All right, so far,\' said the Cat, \'if you don\'t know much,\' said Alice; not that she remained the same size: to be two people! Why, there\'s hardly enough of.', 39, '2019-03-25 16:17:39', '2018-02-05 06:27:50');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (40, 65, 3, 'Laudantium repellat qui minus voluptates dolores recusandae.', 'I had to kneel down on one knee. \'I\'m a poor man, your Majesty,\' said Alice to herself, \'whenever I eat or drink something or other; but the Hatter with a smile. There was a queer-shaped little.', 88, '2014-09-15 09:39:54', '2011-01-09 12:00:49');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (41, 32, 10, 'Reprehenderit porro aliquam at cumque distinctio vel voluptate.', 'Mock Turtle to the waving of the others took the regular course.\' \'What was THAT like?\' said Alice. \'I mean what I eat\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must.', 41, '2014-03-27 21:06:05', '2014-04-11 10:56:40');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (42, 64, 8, 'Ut facere sit cum laborum nihil amet iusto.', 'The Gryphon sat up and down, and the Hatter went on just as well be at school at once.\' And in she went. Once more she found herself lying on the glass table and the Mock Turtle persisted. \'How.', 62, '2013-03-05 20:51:49', '2013-10-08 18:04:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (43, 79, 3, 'Incidunt quae ipsum quia dolores eum facilis eum quae.', 'And she tried to say \'I once tasted--\' but checked herself hastily, and said \'No, never\') \'--so you can find out the verses on his spectacles. \'Where shall I begin, please your Majesty,\' said Two,.', 69, '2020-03-29 11:30:08', '2017-05-24 06:33:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (44, 66, 2, 'Quod dolor quis qui nobis nam.', 'Alice, who was beginning to grow to my right size: the next verse.\' \'But about his toes?\' the Mock Turtle said with a deep sigh, \'I was a long tail, certainly,\' said Alice indignantly. \'Ah! then.', 13, '2019-07-13 09:03:48', '2010-11-16 16:49:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (45, 89, 1, 'Aut excepturi et dignissimos minima rerum qui illo officia.', 'Soup! Soup of the room. The cook threw a frying-pan after her as she went on so long that they couldn\'t see it?\' So she stood looking at Alice the moment how large she had felt quite strange at.', 45, '2013-10-02 12:30:37', '2020-04-15 00:25:29');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (46, 5, 7, 'Esse dolores perferendis quos sint ad consectetur iusto.', 'Alice; \'living at the Hatter, \'when the Queen of Hearts were seated on their hands and feet, to make ONE respectable person!\' Soon her eye fell on a summer day: The Knave did so, very carefully,.', 20, '2012-07-30 03:39:16', '2010-12-17 10:12:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (47, 98, 10, 'Vel sit dolorem corrupti at pariatur reiciendis non odit.', 'I will prosecute YOU.--Come, I\'ll take no denial; We must have been changed for any lesson-books!\' And so she sat down with her face like the right size, that it might tell her something about the.', 90, '2018-02-06 01:55:40', '2019-07-24 08:19:59');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (48, 20, 6, 'Reprehenderit qui reprehenderit nam facilis possimus natus officiis.', 'III. A Caucus-Race and a scroll of parchment in the pictures of him), while the Dodo had paused as if it had fallen into the earth. At last the Gryphon went on eagerly. \'That\'s enough about.', 68, '2017-02-07 11:31:38', '2016-02-16 07:44:06');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (49, 10, 9, 'Ut praesentium qui est rerum ratione amet quasi nemo.', 'Cat, and vanished again. Alice waited a little, \'From the Queen. \'Never!\' said the Gryphon. \'Well, I shan\'t go, at any rate, there\'s no meaning in them, after all. I needn\'t be so stingy about it,.', 56, '2015-10-24 15:31:46', '2010-12-04 02:52:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (50, 53, 5, 'Unde iure voluptatem id est totam ipsa.', 'YOU like cats if you drink much from a Caterpillar The Caterpillar was the same age as herself, to see if there were three gardeners instantly jumped up, and began to cry again. \'You ought to eat or.', 84, '2015-07-28 17:56:13', '2019-06-19 06:05:35');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (51, 46, 3, 'Est et quo earum.', 'Alice. \'Only a thimble,\' said Alice angrily. \'It wasn\'t very civil of you to set about it; if I\'m not particular as to prevent its undoing itself,) she carried it out loud. \'Thinking again?\' the.', 33, '2010-05-30 00:14:37', '2012-10-08 19:44:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (52, 79, 2, 'Recusandae quidem aliquid eligendi vel ut.', 'Dormouse go on crying in this affair, He trusts to you how it was a real Turtle.\' These words were followed by a very fine day!\' said a whiting to a shriek, \'and just as she heard her voice sounded.', 62, '2013-05-11 22:56:33', '2014-01-21 19:36:47');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (53, 60, 10, 'Perferendis quis quidem pariatur voluptas.', 'Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, feeling very glad to do with this creature when I get it home?\' when it grunted again, so violently, that she had felt quite strange at first;.', 91, '2012-07-06 01:12:10', '2015-10-21 20:34:10');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (54, 54, 3, 'Et corporis nihil harum quasi.', 'Alice could only see her. She is such a thing before, but she saw them, they were mine before. If I or she fell very slowly, for she felt very lonely and low-spirited. In a minute or two she stood.', 30, '2019-08-19 16:14:36', '2012-05-14 09:41:19');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (55, 5, 9, 'Et et nobis aliquid et quis nisi nobis.', 'Queen was to eat or drink anything; so I\'ll just see what was coming. It was so much about a foot high: then she noticed that the Gryphon in an offended tone. And she began again. \'I wonder how many.', 41, '2013-12-22 06:06:38', '2019-02-18 00:59:47');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (56, 52, 8, 'Alias qui sed aliquam debitis qui consequatur molestias doloribus.', 'Alice. \'Then it ought to have him with them,\' the Mock Turtle, \'but if you\'ve seen them so shiny?\' Alice looked at her, and the happy summer days. THE.', 41, '2017-09-03 23:56:35', '2019-03-05 05:05:30');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (57, 69, 6, 'Accusantium ea debitis illum quaerat.', 'I can\'t put it into one of the singers in the sea!\' cried the Mouse, in a deep sigh, \'I was a little girl,\' said Alice, very loudly and decidedly, and the Queen, \'and he shall tell you more than.', 84, '2016-03-09 04:44:56', '2017-01-14 18:36:19');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (58, 64, 3, 'Et cumque culpa quo quaerat.', 'Alice ventured to remark. \'Tut, tut, child!\' said the Eaglet. \'I don\'t quite understand you,\' she said, \'for her hair goes in such a thing before, but she did not notice this question, but hurriedly.', 88, '2015-05-18 22:35:55', '2010-07-21 10:39:55');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (59, 29, 4, 'Possimus repudiandae ea id ut doloribus sit.', 'Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'all I know all the arches are gone from this side.', 54, '2019-04-07 06:54:43', '2013-09-16 00:00:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (60, 18, 2, 'Temporibus delectus quis atque natus vero omnis.', 'MINE.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, I tell you, you coward!\' and at last in the book,\' said the Cat, \'or you wouldn\'t squeeze so.\' said the Cat..', 87, '2019-10-18 17:39:53', '2017-09-10 09:38:26');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (61, 11, 5, 'Suscipit odio omnis alias quaerat.', 'King said to Alice, very earnestly. \'I\'ve had nothing else to do, so Alice went on growing, and, as they were playing the Queen added to one of the jury wrote it down into its eyes by this time)..', 45, '2015-07-05 23:51:38', '2016-01-15 22:26:38');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (62, 5, 6, 'Laborum velit maiores illo omnis nobis.', 'Alice, \'I\'ve often seen a cat without a moment\'s pause. The only things in the sea. But they HAVE their tails in their proper places--ALL,\' he repeated with great curiosity, and this time she found.', 62, '2015-01-08 23:21:57', '2012-05-12 14:54:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (63, 67, 5, 'Ab debitis non repellat optio.', 'On various pretexts they all crowded round her once more, while the Dodo solemnly, rising to its feet, \'I move that the way wherever she wanted much to know, but the great concert given by the.', 64, '2016-02-03 00:19:58', '2017-01-06 22:59:35');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (64, 15, 9, 'Quas incidunt autem ex deserunt.', 'Alice\'s, and they sat down, and felt quite strange at first; but she could not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the.', 55, '2015-03-22 11:14:23', '2013-02-10 08:01:36');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (65, 54, 2, 'Eaque at velit nemo dolor voluptas harum.', 'Alice. \'You must be,\' said the Hatter. This piece of evidence we\'ve heard yet,\' said the Dodo. Then they both bowed low, and their curls got entangled together. Alice was not much surprised at her.', 3, '2018-01-04 07:21:17', '2017-05-20 14:29:51');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (66, 75, 2, 'Magni voluptates animi minima sunt itaque rem aut eveniet.', 'Alice\'s elbow was pressed so closely against her foot, that there was a little pattering of feet on the whole cause, and condemn you to offer it,\' said Five, in a dreamy sort of use in saying.', 55, '2017-02-13 00:53:30', '2010-10-08 01:58:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (67, 86, 4, 'Nam consequatur architecto molestias quaerat.', 'Dormouse go on for some time after the rest of it appeared. \'I don\'t see any wine,\' she remarked. \'It tells the day of the water, and seemed to be done, I wonder?\' Alice guessed who it was, and, as.', 4, '2012-02-17 20:58:22', '2019-06-08 08:33:08');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (68, 77, 4, 'Amet blanditiis dolore voluptas omnis.', 'March Hare. \'Yes, please do!\' but the wise little Alice and all sorts of little Alice and all of you, and don\'t speak a word till I\'ve finished.\' So they had to fall a long breath, and said to the.', 40, '2012-08-19 03:55:37', '2014-03-12 21:41:08');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (69, 91, 4, 'Et modi rerum officia facere soluta.', 'Dormouse shall!\' they both bowed low, and their slates and pencils had been all the way down one side and then added them up, and there was no one else seemed inclined to say \'I once tasted--\' but.', 53, '2018-06-24 05:43:44', '2013-01-11 10:03:45');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (70, 75, 7, 'Sit facere consequatur mollitia voluptatem rerum veritatis.', 'Then came a rumbling of little Alice was very provoking to find that she had a large cauldron which seemed to think that proved it at all. However, \'jury-men\' would have called him Tortoise because.', 13, '2018-07-13 06:44:51', '2019-03-19 21:23:57');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (71, 24, 6, 'Perferendis et et ut.', 'And when I sleep\" is the same year for such dainties would not open any of them. \'I\'m sure I\'m not Ada,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she thought, \'till its ears have.', 44, '2010-10-05 20:10:52', '2011-02-28 10:16:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (72, 62, 9, 'Doloremque quaerat sint dicta ut voluptas accusamus nam.', 'Gryphon, the squeaking of the song, perhaps?\' \'I\'ve heard something like this:-- \'Fury said to herself, \'after such a curious feeling!\' said Alice; \'you needn\'t be afraid of them!\' \'And who is to do.', 70, '2017-12-17 07:28:02', '2015-11-20 14:37:23');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (73, 57, 1, 'Ea aliquid neque incidunt eligendi distinctio et id.', 'She did it at all. However, \'jury-men\' would have called him Tortoise because he was speaking, and this time the Queen was to find that she began fancying the sort of a well?\' \'Take some more tea,\'.', 60, '2013-01-13 18:46:03', '2018-01-05 15:33:07');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (74, 85, 2, 'Expedita sit modi ipsa consequuntur ut id aut.', 'I\'m mad?\' said Alice. \'Why, there they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me your history, you know,\' the Hatter and the choking of the wood to listen. The.', 29, '2016-05-20 16:50:53', '2012-01-24 04:26:35');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (75, 10, 4, 'Sit fugit quam quam quo dicta dolore incidunt.', 'Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'I can\'t help that,\' said the others. \'Are their heads downward! The Antipathies, I think--\' (for, you see, because some of.', 8, '2019-02-11 14:37:28', '2018-07-25 00:17:02');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (76, 52, 6, 'Asperiores repudiandae cupiditate itaque laborum non id accusamus.', 'Alice like the name: however, it only grinned a little pattering of feet in the window?\' \'Sure, it\'s an arm for all that.\' \'Well, it\'s got no business of MINE.\' The Queen turned crimson with fury,.', 60, '2014-09-29 08:54:50', '2014-06-06 08:05:45');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (77, 66, 8, 'Ut eius eius molestiae at ut.', 'Dormouse; \'--well in.\' This answer so confused poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost wish I could let you out, you.', 23, '2012-03-18 18:10:54', '2017-03-15 14:42:13');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (78, 52, 3, 'Aut ducimus autem ex et optio.', 'I can say.\' This was not otherwise than what you were me?\' \'Well, perhaps not,\' said Alice to herself, \'I wish I hadn\'t to bring tears into her eyes; and once again the tiny hands were clasped upon.', 21, '2012-12-29 17:17:12', '2013-03-17 14:11:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (79, 56, 4, 'Accusamus alias doloribus nostrum rerum quis eius unde ratione.', 'Caterpillar. \'I\'m afraid I can\'t put it right; \'not that it signifies much,\' she said this she looked at the Lizard in head downwards, and the others took the hookah out of sight; and an Eaglet, and.', 7, '2018-04-24 06:15:51', '2014-06-21 09:27:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (80, 57, 2, 'Est neque animi occaecati et porro et aut dolores.', 'Hatter: and in his sleep, \'that \"I breathe when I breathe\"!\' \'It IS the same year for such a new idea to Alice, very much of it had some kind of authority over Alice. \'Stand up and picking the.', 28, '2012-02-28 00:40:50', '2014-01-15 03:21:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (81, 97, 4, 'Rerum aut beatae maxime nostrum ut.', 'This is the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Duchess; \'and most of \'em do.\' \'I don\'t quite understand you,\' she said, as politely as she was about a.', 69, '2011-08-13 00:20:29', '2017-05-29 04:40:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (82, 38, 8, 'Aut nesciunt magnam est.', 'Either the well was very deep, or she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a queer-shaped little.', 56, '2017-03-20 21:18:46', '2016-09-23 13:22:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (83, 40, 9, 'Sint fugiat est quaerat fugiat nulla dignissimos et.', 'Hatter. \'You might just as if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Well, then,\' the Gryphon only answered \'Come on!\' and ran off, thinking while she was up.', 95, '2010-10-27 22:52:50', '2016-01-13 17:08:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (84, 36, 5, 'Quo id excepturi tempore earum.', 'Alice was just in time to go, for the next witness would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the whole pack of cards: the Knave of Hearts, she.', 34, '2019-08-07 03:26:40', '2018-04-26 07:18:53');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (85, 85, 4, 'Accusamus saepe officia in velit.', 'Alice thought she might as well as if it makes me grow larger, I can kick a little!\' She drew her foot slipped, and in THAT direction,\' the Cat in a great letter, nearly as she had been running half.', 79, '2012-10-25 01:02:54', '2016-02-21 12:47:47');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (86, 19, 7, 'Itaque non aliquam qui soluta ea eveniet omnis.', 'I said \"What for?\"\' \'She boxed the Queen\'s ears--\' the Rabbit say, \'A barrowful of WHAT?\' thought Alice to herself, \'the way all the rats and--oh dear!\' cried Alice (she was rather glad there WAS no.', 88, '2012-04-29 15:40:10', '2016-07-14 22:01:32');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (87, 66, 9, 'Vel in voluptatem et ipsam officia.', 'Dodo suddenly called out \'The race is over!\' and they can\'t prove I did: there\'s no use in talking to him,\' said Alice in a very hopeful tone though), \'I won\'t interrupt again. I dare say you\'re.', 54, '2015-04-26 12:00:19', '2013-09-01 09:39:25');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (88, 58, 4, 'Dolores quidem ad omnis aut.', 'Presently she began very cautiously: \'But I don\'t like it, yer honour, at all, at all!\' \'Do as I do,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a.', 86, '2015-06-21 13:17:37', '2016-03-05 16:12:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (89, 81, 4, 'Labore odit consequatur ab id.', 'I know I have dropped them, I wonder?\' As she said this, she came up to her to wink with one finger pressed upon its forehead (the position in which the cook had disappeared. \'Never mind!\' said the.', 93, '2019-02-15 16:14:18', '2018-01-04 03:27:36');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (90, 91, 8, 'Voluptatibus molestias libero et dicta.', 'Pray, what is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be kind to them,\' thought Alice, \'and those twelve creatures,\' (she was obliged to have the experiment tried..', 13, '2011-09-17 16:41:26', '2012-05-28 01:39:00');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (91, 17, 6, 'Similique omnis dolorum nam delectus nobis dolor natus reiciendis.', 'Alice had learnt several things of this pool? I am to see what would happen next. The first witness was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be.', 58, '2018-10-27 19:11:45', '2015-08-25 07:06:54');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (92, 26, 2, 'Quis consequuntur rerum et iste et id.', 'THESE?\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Queen, \'and he shall tell you how the Dodo solemnly, rising to its feet, \'I move that the Queen of Hearts, carrying the King\'s.', 22, '2018-04-07 07:52:40', '2012-11-09 16:28:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (93, 68, 2, 'Natus provident voluptatem similique architecto omnis dignissimos.', 'I suppose I ought to have lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room to open them.', 10, '2016-11-24 11:35:40', '2016-03-25 20:37:45');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (94, 26, 6, 'Dolorem soluta dolore illo non.', 'That he met in the last few minutes, and she could not stand, and she thought it over a little now and then, and holding it to the Knave of Hearts, he stole those tarts, And took them quite away!\'.', 43, '2014-09-07 07:47:47', '2014-03-16 03:41:18');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (95, 5, 5, 'Inventore minima fuga id possimus delectus exercitationem.', 'Alice said with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'You MUST remember,\' remarked the King, \'and don\'t look at a reasonable pace,\' said the Mock Turtle in a trembling.', 61, '2012-08-02 00:12:42', '2018-11-24 00:51:42');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (96, 96, 4, 'Repellendus aut a expedita aut voluptatem inventore.', 'WOULD put their heads downward! The Antipathies, I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, \'that saves a world of trouble, you know, this.', 75, '2012-06-29 20:44:33', '2018-05-04 08:45:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (97, 4, 2, 'At ab perferendis voluptas temporibus fugiat.', 'Alice replied eagerly, for she was appealed to by all three to settle the question, and they repeated their arguments to her, still it had VERY long claws and a large cat which was a little timidly,.', 92, '2019-08-06 10:24:56', '2011-02-07 17:52:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (98, 71, 9, 'Et facere perferendis qui doloremque.', 'Mock Turtle replied, counting off the top of his teacup and bread-and-butter, and then keep tight hold of this sort of idea that they could not help bursting out laughing: and when she heard a.', 56, '2020-03-21 19:56:12', '2016-11-19 01:34:28');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (99, 11, 1, 'Quas qui et minus totam suscipit doloremque recusandae.', 'O Mouse!\' (Alice thought this must ever be A secret, kept from all the time she heard her voice sounded hoarse and strange, and the poor little thing howled so, that Alice had begun to think that.', 59, '2010-06-19 10:01:20', '2015-06-01 04:33:30');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (100, 56, 2, 'Quia voluptatem expedita cum saepe explicabo vel omnis a.', 'Dormouse, and repeated her question. \'Why did you call it sad?\' And she went slowly after it: \'I never was so long since she had never been so much surprised, that for two Pennyworth only of.', 100, '2020-01-03 16:23:39', '2012-03-01 18:31:03');

UPDATE posts SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
     
-- “аблицы лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');
 
-- ƒобавление фото в профили
UPDATE profiles SET photo_id = FLOOR(1 + RAND() * 100);
     
-- ¬нешние ключи
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
      
ALTER TABLE messages
   ADD CONSTRAINT messages_from_user_id_fk
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk
    FOREIGN KEY (to_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id);
   
ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id);

ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);

ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
   FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);

ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT posts_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT posts_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id);
     
ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT likes_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);

   
-- ƒоработка данных дл€ таблицы сообщений
UPDATE messages SET community_id = NULL
  WHERE community_id >  FLOOR(1 + RAND() * 10);
UPDATE messages SET to_user_id = NULL
  WHERE to_user_id >  FLOOR(1 + RAND() * 100)
    AND community_id IS not NULL;
UPDATE messages SET community_id =
  (SELECT community_id FROM communities_users
    WHERE communities_users.user_id = messages.from_user_id ORDER BY RAND() LIMIT 1)
  WHERE community_id IS NOT NULL;
UPDATE messages SET to_user_id =
  (SELECT user_id FROM communities_users
    WHERE communities_users.community_id = messages.community_id ORDER BY RAND() LIMIT 1)
  WHERE community_id IS NOT NULL;
 
-- ƒоработка данных дл€ таблицы постов
UPDATE posts SET community_id = NULL
  WHERE community_id >  FLOOR(1 + RAND() * 10);
UPDATE posts SET media_id = NULL
  WHERE media_id >  FLOOR(1 + RAND() * 100)
    AND community_id IS not NULL;
UPDATE posts SET head = NULL
  WHERE id >  FLOOR(1 + RAND() * 100);
UPDATE posts SET community_id =
  (SELECT community_id FROM communities_users
    WHERE communities_users.user_id = posts.user_id ORDER BY RAND() LIMIT 1)
  WHERE community_id IS NOT NULL;

 
-- 3. ѕодсчитать общее количество лайков дес€ти самым молодым пользовател€м (сколько лайков получили 10 самых молодых пользователей).
SELECT COUNT(*) AS likes
  FROM likes
  WHERE
    target_type_id = (SELECT id FROM target_types WHERE name = 'users')
    AND
    target_id IN (
      SELECT * FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) table_tmp
    );

-- 4. ќпределить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT IF (gender = 'm', 'men', 'women') as 'Most likes are given by' FROM (
	SELECT gender, COUNT(*) as likes
	  FROM profiles
	  WHERE user_id IN (
	  	SELECT user_id FROM likes
	  )
	  GROUP BY gender
	  ORDER BY likes DESC
	  LIMIT 1  
) table_tmp;

-- 5. Ќайти 10 пользователей, которые про€вл€ют наименьшую активность в
-- использовании социальной сети (критерии активности необходимо определить самосто€тельно).

-- ƒопустим, что соц. активность определ€тс€ по количеству постов и сообщений.

-- сначала пробуем выбрать тех, кто не представлен в обеих таблицах = ничего не делает
SELECT id FROM (
	SELECT id, COUNT(*) as total FROM (
		-- ничего не пишут
		SELECT id FROM users WHERE id NOT IN (SELECT from_user_id FROM messages)
		UNION ALL
		-- ничего не пост€т
		SELECT id FROM users WHERE id NOT IN (SELECT user_id FROM posts)
	) non_active_users_info
	GROUP BY id
	HAVING total > 1
) non_active_users
UNION
-- добавл€ем минимально активных
SELECT id FROM (
	SELECT id, COUNT(*) AS total FROM (
		-- группируем по пользовател€м сообщени€ и считаем их кол-во
		SELECT from_user_id AS id FROM messages
		UNION ALL
		-- группируем по пользовател€м посты и считаем их кол-во
		SELECT user_id AS id FROM posts
	) min_active_users_info
	GROUP BY id
	ORDER BY total
) min_active_users
LIMIT 10;