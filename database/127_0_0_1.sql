-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 10:18 PM
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
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(13, 21, 2, 'One day your life will flash before your eyes', '1574520979_image_1.png', '&lt;p&gt;This is a sample post&lt;/p&gt;', 1, '2019-11-23 15:56:19'),
(14, 21, 2, 'You have to believe that things will get better', '1574521288_image_5.png', '&lt;p&gt;Many times I have come across instances where some people scorn the practice of setting New Year Resolutions.&lt;/p&gt;&lt;p&gt;Their reason for this goes something like this:&lt;/p&gt;&lt;p&gt;The very word resolution is an indication of some form of internal conflict springing from an ineffectual self-governance in a person. It means the individual is waging a fight against something undesirable in their life; or is making a conscious decision to pursue certain ideals that before were absent in their life.&lt;/p&gt;&lt;p&gt;Aren&rsquo;t you supposed to be pursuing these ideals every day of your life? Isn&rsquo;t it supposed to be the default state of your life? Why would you wait for a new year before you make a resolution to better your life?&lt;/p&gt;&lt;p&gt;Such people also avoid new year resolutions or scorn the practice thereof because for them, experience has proven it to be ineffective.&lt;/p&gt;&lt;p&gt;I don&rsquo;t entirely agree with such people. I am not advocating the practice of new year resolutions either. But I&rsquo;d sooner advise a person to set new year resolutions they will end up abandoning by the end of January than advise them to sleepwalk through their life the entire year.&lt;/p&gt;&lt;p&gt;At the very least, setting new year resolutions means that you still have an interest in making your life better, and that is a good place to start. You just need a better strategy than new year resolutions, which is what I bring to the table today.&lt;/p&gt;&lt;p&gt;I call it The &lt;i&gt;12 months challenge.&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This challenge is simple: At the end of the year, write and publish an article in which you list 12 of your proudest, most fulfilling accomplishments from each of the 12 months of that year. Be very strict with the rules of the challenge: Pick only one accomplishment per month.&lt;/p&gt;&lt;p&gt;You are free to accomplish as many things in a month as you can but pick only one to be added to the list for any particular month.&lt;/p&gt;&lt;p&gt;Publish this article on your blog (if you have one), on your linkedIn profile, and on any of the social media platforms; share it with your close network of trusted family members, friends, colleagues and mentors.&lt;/p&gt;&lt;p&gt;It is very important that you share the article to as wide an audience as possible if the contents are not too private. Sharing such an article can help you connect with other individuals with shared interests, dreams, and plans for the future. And such connections can open doors for you and a lot of other people that you never knew existed.&lt;/p&gt;&lt;p&gt;Most importantly, if you know you are preparing the article to share it with other people, you are more likely to take it very seriously.&lt;/p&gt;&lt;p&gt;One thing I almost avoided mentioning is the nature of these accomplishments. I&rsquo;m avoiding this aspect of the challenge because I can&rsquo;t really tell you what you should aim at accomplishing in your life in order to feel fulfilled. You are going to have to do that yourself because only you can do it best. It is your purpose. You may think you don&rsquo;t know it yet but at some deeper level you do.&lt;/p&gt;&lt;p&gt;I can only tell you what works for me: I have a few questions I usually ask myself when I feel that I am not living a fulfilling life at any time in my life. At such times I ask myself:&lt;/p&gt;&lt;p&gt;If I were to be diagnosed with terminal cancer and given only 6 months to live, how would I spend that time? What things would I value most? What would I regret not doing?&lt;/p&gt;&lt;p&gt;For me, the answers to such questions immediately and unmistakably stand out clear in my mind:&lt;/p&gt;&lt;p&gt;I would regret not taking better care of my parents than what I am doing. They have toiled and soiled far too much for me to be ordinary.&lt;br&gt;I would grieve in my spirit at all those years I felt timid and settled for far far less than I am worth.&lt;/p&gt;&lt;p&gt;I would regret my passivity in relationships with all those amazing people who have once featured in my life and left because of my apparent disinterest. I could have swallowed my pride and risked exposing my insecurities, my quirks and my shortcomings in general. Hiding them only made me look uninterested.&lt;/p&gt;&lt;p&gt;I would regret all those hours I wasted feeling bored when I could have set up a blog to explore my passion for writing.&lt;/p&gt;&lt;p&gt;I could have read more and more books.&lt;/p&gt;&lt;p&gt;I would regret never having taken any steps towards realizing all those side projects I kept conceiving day after day in my mind.&lt;/p&gt;&lt;p&gt;And many more...&lt;/p&gt;&lt;p&gt;When you ask yourself the above questions, the answers will pop up almost immediately and they will fill you with a new vitality and enthusiasm towards your life goals.&lt;/p&gt;&lt;p&gt;Now assume your time from now on is as limited and valuable as it could be if the above assumption about cancer were real. Then start working on these projects one month at a time. Start living your unlived life one month at a time.&lt;/p&gt;', 1, '2019-11-23 16:01:28'),
(15, 21, 4, 'The spectacle before us was indeed sublime', '1574521317_image_2.png', '&lt;p&gt;Many times I have come across instances where some people scorn the practice of setting New Year Resolutions.&lt;/p&gt;&lt;p&gt;Their reason for this goes something like this:&lt;/p&gt;&lt;p&gt;The very word resolution is an indication of some form of internal conflict springing from an ineffectual self-governance in a person. It means the individual is waging a fight against something undesirable in their life; or is making a conscious decision to pursue certain ideals that before were absent in their life.&lt;/p&gt;&lt;p&gt;Aren&rsquo;t you supposed to be pursuing these ideals every day of your life? Isn&rsquo;t it supposed to be the default state of your life? Why would you wait for a new year before you make a resolution to better your life?&lt;/p&gt;&lt;p&gt;Such people also avoid new year resolutions or scorn the practice thereof because for them, experience has proven it to be ineffective.&lt;/p&gt;&lt;p&gt;I don&rsquo;t entirely agree with such people. I am not advocating the practice of new year resolutions either. But I&rsquo;d sooner advise a person to set new year resolutions they will end up abandoning by the end of January than advise them to sleepwalk through their life the entire year.&lt;/p&gt;&lt;p&gt;At the very least, setting new year resolutions means that you still have an interest in making your life better, and that is a good place to start. You just need a better strategy than new year resolutions, which is what I bring to the table today.&lt;/p&gt;&lt;p&gt;I call it The &lt;i&gt;12 months challenge.&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This challenge is simple: At the end of the year, write and publish an article in which you list 12 of your proudest, most fulfilling accomplishments from each of the 12 months of that year. Be very strict with the rules of the challenge: Pick only one accomplishment per month.&lt;/p&gt;&lt;p&gt;You are free to accomplish as many things in a month as you can but pick only one to be added to the list for any particular month.&lt;/p&gt;&lt;p&gt;Publish this article on your blog (if you have one), on your linkedIn profile, and on any of the social media platforms; share it with your close network of trusted family members, friends, colleagues and mentors.&lt;/p&gt;&lt;p&gt;It is very important that you share the article to as wide an audience as possible if the contents are not too private. Sharing such an article can help you connect with other individuals with shared interests, dreams, and plans for the future. And such connections can open doors for you and a lot of other people that you never knew existed.&lt;/p&gt;&lt;p&gt;Most importantly, if you know you are preparing the article to share it with other people, you are more likely to take it very seriously.&lt;/p&gt;&lt;p&gt;One thing I almost avoided mentioning is the nature of these accomplishments. I&rsquo;m avoiding this aspect of the challenge because I can&rsquo;t really tell you what you should aim at accomplishing in your life in order to feel fulfilled. You are going to have to do that yourself because only you can do it best. It is your purpose. You may think you don&rsquo;t know it yet but at some deeper level you do.&lt;/p&gt;&lt;p&gt;I can only tell you what works for me: I have a few questions I usually ask myself when I feel that I am not living a fulfilling life at any time in my life. At such times I ask myself:&lt;/p&gt;&lt;p&gt;If I were to be diagnosed with terminal cancer and given only 6 months to live, how would I spend that time? What things would I value most? What would I regret not doing?&lt;/p&gt;&lt;p&gt;For me, the answers to such questions immediately and unmistakably stand out clear in my mind:&lt;/p&gt;&lt;p&gt;I would regret not taking better care of my parents than what I am doing. They have toiled and soiled far too much for me to be ordinary.&lt;br&gt;I would grieve in my spirit at all those years I felt timid and settled for far far less than I am worth.&lt;/p&gt;&lt;p&gt;I would regret my passivity in relationships with all those amazing people who have once featured in my life and left because of my apparent disinterest. I could have swallowed my pride and risked exposing my insecurities, my quirks and my shortcomings in general. Hiding them only made me look uninterested.&lt;/p&gt;&lt;p&gt;I would regret all those hours I wasted feeling bored when I could have set up a blog to explore my passion for writing.&lt;/p&gt;&lt;p&gt;I could have read more and more books.&lt;/p&gt;&lt;p&gt;I would regret never having taken any steps towards realizing all those side projects I kept conceiving day after day in my mind.&lt;/p&gt;&lt;p&gt;And many more...&lt;/p&gt;&lt;p&gt;When you ask yourself the above questions, the answers will pop up almost immediately and they will fill you with a new vitality and enthusiasm towards your life goals.&lt;/p&gt;&lt;p&gt;Now assume your time from now on is as limited and valuable as it could be if the above assumption about cancer were real. Then start working on these projects one month at a time. Start living your unlived life one month at a time.&lt;/p&gt;', 1, '2019-11-23 16:01:57'),
(16, 21, 3, 'We love the things we love for what they are', '1574521343_image_3.png', '&lt;p&gt;Many times I have come across instances where some people scorn the practice of setting New Year Resolutions.&lt;/p&gt;&lt;p&gt;Their reason for this goes something like this:&lt;/p&gt;&lt;p&gt;The very word resolution is an indication of some form of internal conflict springing from an ineffectual self-governance in a person. It means the individual is waging a fight against something undesirable in their life; or is making a conscious decision to pursue certain ideals that before were absent in their life.&lt;/p&gt;&lt;p&gt;Aren&rsquo;t you supposed to be pursuing these ideals every day of your life? Isn&rsquo;t it supposed to be the default state of your life? Why would you wait for a new year before you make a resolution to better your life?&lt;/p&gt;&lt;p&gt;Such people also avoid new year resolutions or scorn the practice thereof because for them, experience has proven it to be ineffective.&lt;/p&gt;&lt;p&gt;I don&rsquo;t entirely agree with such people. I am not advocating the practice of new year resolutions either. But I&rsquo;d sooner advise a person to set new year resolutions they will end up abandoning by the end of January than advise them to sleepwalk through their life the entire year.&lt;/p&gt;&lt;p&gt;At the very least, setting new year resolutions means that you still have an interest in making your life better, and that is a good place to start. You just need a better strategy than new year resolutions, which is what I bring to the table today.&lt;/p&gt;&lt;p&gt;I call it The &lt;i&gt;12 months challenge.&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This challenge is simple: At the end of the year, write and publish an article in which you list 12 of your proudest, most fulfilling accomplishments from each of the 12 months of that year. Be very strict with the rules of the challenge: Pick only one accomplishment per month.&lt;/p&gt;&lt;p&gt;You are free to accomplish as many things in a month as you can but pick only one to be added to the list for any particular month.&lt;/p&gt;&lt;p&gt;Publish this article on your blog (if you have one), on your linkedIn profile, and on any of the social media platforms; share it with your close network of trusted family members, friends, colleagues and mentors.&lt;/p&gt;&lt;p&gt;It is very important that you share the article to as wide an audience as possible if the contents are not too private. Sharing such an article can help you connect with other individuals with shared interests, dreams, and plans for the future. And such connections can open doors for you and a lot of other people that you never knew existed.&lt;/p&gt;&lt;p&gt;Most importantly, if you know you are preparing the article to share it with other people, you are more likely to take it very seriously.&lt;/p&gt;&lt;p&gt;One thing I almost avoided mentioning is the nature of these accomplishments. I&rsquo;m avoiding this aspect of the challenge because I can&rsquo;t really tell you what you should aim at accomplishing in your life in order to feel fulfilled. You are going to have to do that yourself because only you can do it best. It is your purpose. You may think you don&rsquo;t know it yet but at some deeper level you do.&lt;/p&gt;&lt;p&gt;I can only tell you what works for me: I have a few questions I usually ask myself when I feel that I am not living a fulfilling life at any time in my life. At such times I ask myself:&lt;/p&gt;&lt;p&gt;If I were to be diagnosed with terminal cancer and given only 6 months to live, how would I spend that time? What things would I value most? What would I regret not doing?&lt;/p&gt;&lt;p&gt;For me, the answers to such questions immediately and unmistakably stand out clear in my mind:&lt;/p&gt;&lt;p&gt;I would regret not taking better care of my parents than what I am doing. They have toiled and soiled far too much for me to be ordinary.&lt;br&gt;I would grieve in my spirit at all those years I felt timid and settled for far far less than I am worth.&lt;/p&gt;&lt;p&gt;I would regret my passivity in relationships with all those amazing people who have once featured in my life and left because of my apparent disinterest. I could have swallowed my pride and risked exposing my insecurities, my quirks and my shortcomings in general. Hiding them only made me look uninterested.&lt;/p&gt;&lt;p&gt;I would regret all those hours I wasted feeling bored when I could have set up a blog to explore my passion for writing.&lt;/p&gt;&lt;p&gt;I could have read more and more books.&lt;/p&gt;&lt;p&gt;I would regret never having taken any steps towards realizing all those side projects I kept conceiving day after day in my mind.&lt;/p&gt;&lt;p&gt;And many more...&lt;/p&gt;&lt;p&gt;When you ask yourself the above questions, the answers will pop up almost immediately and they will fill you with a new vitality and enthusiasm towards your life goals.&lt;/p&gt;&lt;p&gt;Now assume your time from now on is as limited and valuable as it could be if the above assumption about cancer were real. Then start working on these projects one month at a time. Start living your unlived life one month at a time.&lt;/p&gt;', 1, '2019-11-23 16:02:23'),
(17, 21, 3, 'Either give me more wine or leave me alone', '1574521373_image_7.png', '&lt;p&gt;Many times I have come across instances where some people scorn the practice of setting New Year Resolutions.&lt;/p&gt;&lt;p&gt;Their reason for this goes something like this:&lt;/p&gt;&lt;p&gt;The very word resolution is an indication of some form of internal conflict springing from an ineffectual self-governance in a person. It means the individual is waging a fight against something undesirable in their life; or is making a conscious decision to pursue certain ideals that before were absent in their life.&lt;/p&gt;&lt;p&gt;Aren&rsquo;t you supposed to be pursuing these ideals every day of your life? Isn&rsquo;t it supposed to be the default state of your life? Why would you wait for a new year before you make a resolution to better your life?&lt;/p&gt;&lt;p&gt;Such people also avoid new year resolutions or scorn the practice thereof because for them, experience has proven it to be ineffective.&lt;/p&gt;&lt;p&gt;I don&rsquo;t entirely agree with such people. I am not advocating the practice of new year resolutions either. But I&rsquo;d sooner advise a person to set new year resolutions they will end up abandoning by the end of January than advise them to sleepwalk through their life the entire year.&lt;/p&gt;&lt;p&gt;At the very least, setting new year resolutions means that you still have an interest in making your life better, and that is a good place to start. You just need a better strategy than new year resolutions, which is what I bring to the table today.&lt;/p&gt;&lt;p&gt;I call it The &lt;i&gt;12 months challenge.&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This challenge is simple: At the end of the year, write and publish an article in which you list 12 of your proudest, most fulfilling accomplishments from each of the 12 months of that year. Be very strict with the rules of the challenge: Pick only one accomplishment per month.&lt;/p&gt;&lt;p&gt;You are free to accomplish as many things in a month as you can but pick only one to be added to the list for any particular month.&lt;/p&gt;&lt;p&gt;Publish this article on your blog (if you have one), on your linkedIn profile, and on any of the social media platforms; share it with your close network of trusted family members, friends, colleagues and mentors.&lt;/p&gt;&lt;p&gt;It is very important that you share the article to as wide an audience as possible if the contents are not too private. Sharing such an article can help you connect with other individuals with shared interests, dreams, and plans for the future. And such connections can open doors for you and a lot of other people that you never knew existed.&lt;/p&gt;&lt;p&gt;Most importantly, if you know you are preparing the article to share it with other people, you are more likely to take it very seriously.&lt;/p&gt;&lt;p&gt;One thing I almost avoided mentioning is the nature of these accomplishments. I&rsquo;m avoiding this aspect of the challenge because I can&rsquo;t really tell you what you should aim at accomplishing in your life in order to feel fulfilled. You are going to have to do that yourself because only you can do it best. It is your purpose. You may think you don&rsquo;t know it yet but at some deeper level you do.&lt;/p&gt;&lt;p&gt;I can only tell you what works for me: I have a few questions I usually ask myself when I feel that I am not living a fulfilling life at any time in my life. At such times I ask myself:&lt;/p&gt;&lt;p&gt;If I were to be diagnosed with terminal cancer and given only 6 months to live, how would I spend that time? What things would I value most? What would I regret not doing?&lt;/p&gt;&lt;p&gt;For me, the answers to such questions immediately and unmistakably stand out clear in my mind:&lt;/p&gt;&lt;p&gt;I would regret not taking better care of my parents than what I am doing. They have toiled and soiled far too much for me to be ordinary.&lt;br&gt;I would grieve in my spirit at all those years I felt timid and settled for far far less than I am worth.&lt;/p&gt;&lt;p&gt;I would regret my passivity in relationships with all those amazing people who have once featured in my life and left because of my apparent disinterest. I could have swallowed my pride and risked exposing my insecurities, my quirks and my shortcomings in general. Hiding them only made me look uninterested.&lt;/p&gt;&lt;p&gt;I would regret all those hours I wasted feeling bored when I could have set up a blog to explore my passion for writing.&lt;/p&gt;&lt;p&gt;I could have read more and more books.&lt;/p&gt;&lt;p&gt;I would regret never having taken any steps towards realizing all those side projects I kept conceiving day after day in my mind.&lt;/p&gt;&lt;p&gt;And many more...&lt;/p&gt;&lt;p&gt;When you ask yourself the above questions, the answers will pop up almost immediately and they will fill you with a new vitality and enthusiasm towards your life goals.&lt;/p&gt;&lt;p&gt;Now assume your time from now on is as limited and valuable as it could be if the above assumption about cancer were real. Then start working on these projects one month at a time. Start living your unlived life one month at a time.&lt;/p&gt;', 1, '2019-11-23 16:02:53'),
(18, 23, 9, 'Role played by religion in Kenyan Politics', '1674833256_img1.jfif', '&lt;p&gt;&lt;strong&gt;Table of Contents:&lt;/strong&gt;&lt;/p&gt;&lt;blockquote&gt;&lt;p&gt;I. &lt;i&gt;Introduction&amp;nbsp;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;II. &lt;i&gt;Historical Overview of Religion in Kenya&lt;/i&gt;&lt;/p&gt;&lt;p&gt;III. &lt;i&gt;Religious Demographics in Kenya&lt;/i&gt;&lt;/p&gt;&lt;p&gt;IV. &lt;i&gt;The Role of Religion in Kenya&#039;s Political Landscape&lt;/i&gt;&lt;/p&gt;&lt;p&gt;V. &lt;i&gt;Current Issues and Controversies&lt;/i&gt;&lt;/p&gt;&lt;p&gt;VI. &lt;i&gt;Conclusion&lt;/i&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;strong&gt;I. Introduction&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Kenya, a country located in East Africa, is known for its diverse population and rich cultural heritage. Religion plays a significant role in the daily lives of Kenyans, and its influence can be seen in various aspects of society, including politics. This article will explore the part played by religion in politics in Kenya, including a historical overview, religious demographics, and current issues and controversies.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;II. Historical Overview of Religion in Kenya&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Religion has been present in Kenya for centuries, with traditional beliefs and practices existing alongside more recent religions such as Christianity and Islam. In the 19th century, European colonizers brought Christianity to Kenya, which quickly spread among the population. Today, Christianity is the largest religion in Kenya, with more than 80% of the population identifying as Christian. Islam is the second-largest religion, with more than 10% of the population identifying as Muslim. Other religions, such as Hinduism and Buddhism, also have a presence in Kenya but are practiced by a smaller percentage of the population.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;III. Religious Demographics in Kenya.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Kenya&#039;s religious demographics are diverse, with a mix of traditional and modern religions. The majority of the population identifies as Christian, with the largest denominations being the Anglican Church of Kenya, the Roman Catholic Church, and the Presbyterian Church of East Africa. The Muslim population is primarily composed of Sunni Muslims, with a small minority of Shia Muslims. There are also small communities of Hindus, Buddhists, and followers of traditional African religions.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;IV. The Role of Religion in Kenya&#039;s Political Landscape.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Religion plays a significant role in Kenya&#039;s political landscape, with religious leaders often participating in political debates and campaigns. Many political leaders use religious rhetoric to appeal to voters, and religious issues are often used as a tool for political mobilization. Additionally, religious organizations and leaders have been involved in various civic and political activities, such as voter education and voter registration.&lt;/p&gt;&lt;p&gt;Religion also plays a role in shaping public policy. For example, religious groups have been involved in debates over issues such as abortion, same-sex marriage, and the implementation of Islamic law. These debates have often been divisive and have led to tensions between different religious groups.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;V. Current Issues and Controversies&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;In recent years, there have been several controversies related to the role of religion in politics in Kenya. One issue that has received significant attention is the debate over the implementation of Islamic law, or sharia, in certain parts of the country. Some argue that sharia is necessary to protect the rights of Muslims, while others argue that its implementation would lead to discrimination against non-Muslims and undermine the country&#039;s secular legal system.&lt;/p&gt;&lt;p&gt;Another issue that has been the subject of much controversy is the role of religious leaders in politics. Some argue that religious leaders should not be involved in politics, as their involvement can lead to conflicts of interest and undermine the separation of church and state. Others argue that religious leaders have a responsibility to participate in politics and shape public policy in line with their religious beliefs.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;VI. Conclusion&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;In conclusion, religion plays a significant role in politics in Kenya. Historical and demographic factors have led to the presence of multiple religions in the country, which have influenced the political landscape. Religious leaders and organizations have been involved in political and civic activities and religious issues have been used as tools for political mobilization. Current issues and controversies related to the role of religion in politics are still ongoing and it is an important subject that requires ongoing dialogue and engagement. It is important for political leaders and religious leaders to work together to ensure that religious diversity is respected and that policies are inclusive and fair for all citizens. Additionally, efforts should be made to promote interfaith dialogue and understanding to address the current issues and controversies surrounding religion in politics in Kenya. Ultimately, the role of religion in politics in Kenya is complex and multifaceted, and requires a nuanced understanding of the historical, demographic, and societal factors that shape it.&lt;/p&gt;', 1, '2023-01-27 07:26:14'),
(19, 23, 9, 'The Top 10 Best Cameras for YouTube Videos: A Comprehensive Guide', '1674834679_img2.jfif', '&lt;p&gt;&lt;a href=&quot;www.youtube.com&quot;&gt;&lt;i&gt;&lt;strong&gt;YouTube&lt;/strong&gt;&lt;/i&gt;&lt;/a&gt; is the second-largest search engine in the world, and it&#039;s no surprise that many people are looking to create their own videos to share with the world. Whether you&#039;re a beginner or a professional, having the right camera is essential for creating high-quality videos that will engage your audience. In this article, we&#039;ll take a look at the top 10 best cameras for YouTube videos and what makes them stand out from the rest.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;1.Canon EOS M50 Mark I&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This camera is perfect for YouTube creators who are just starting out. It&#039;s lightweight, easy to use, and produces high-quality video. It has a 24.1-megapixel APS-C CMOS sensor and a Dual Pixel CMOS AF system that allows for fast and accurate autofocus.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;2. Sony A6400&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;The Sony A6400 is a great camera for YouTube creators who want to take their videos to the next level. It has a 24.2-megapixel APS-C CMOS sensor and a BIONZ X image processor that produces sharp and detailed video. It also has a Fast Hybrid autofocus system that allows for quick and accurate focusing.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;3.Panasonic Lumix GH5&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;The Panasonic Lumix GH5 is a great camera for YouTube creators who are looking for a camera that can produce professional-quality videos. It has a 20.3-megapixel Digital Live MOS sensor and a Venus Engine image processor that produces sharp and detailed video. It also has a Dual I.S. system that allows for steady and stable video.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;4.Fujifilm X-T4&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;The Fujifilm X-T4 is a great camera for YouTube creators who are looking for a camera that can produce high-quality video and stills. It has a 26.1-megapixel APS-C X-Trans CMOS 4 sensor and a X-Processor 4 image processor that produces sharp and detailed video. It also has a 5-axis IBIS system that allows for steady and stable video.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;5. Nikon Z6&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;The Nikon Z6 is a great camera for YouTube creators who are looking for a camera that can produce high-quality video and stills. It has a 24.5-megapixel FX-format BSI CMOS sensor and a EXPEED 6 image processor that produces sharp and detailed video. It also has a Hybrid AF system that allows for fast and accurate autofocus.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;6. Sony A7S III&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;The Sony A7S III is a great camera for YouTube creators who are looking for a camera that can produce high-quality video and stills. It has a 12.1-megapixel full-frame Exmor R CMOS sensor and a BIONZ XR image processor that produces sharp and detailed video. It also has a Fast Hybrid autofocus system that allows for quick and accurate focusing.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;7.Canon EOS R5&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;The Canon EOS R5 is a great camera for YouTube creators who are looking for a camera that can produce high-quality video and stills. It has a 45-megapixel full-frame CMOS sensor and a DIGIC X image processor that produces sharp and detailed video. It also has a Dual Pixel CMOS AF system that allows for fast and accurate autofocus.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;8.Panasonic S1H&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;The Panasonic S1H is a great camera for YouTube creators who are looking for a camera that can produce high-quality video and stills. It has a 24.2-megapixel full-frame CMOS sensor and a Venus Engine image processor that produces sharp and detailed video. It also has a Dual I.S. system that allows for steady and stable video. It also has a 6K video recording capability, which is perfect for YouTube creators who want to produce high-resolution videos.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;9.Blackmagic Pocket Cinema Camera 6K&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This camera is a great option for YouTube creators who want to create high-quality videos without breaking the bank. It has a Super 35 sensor and 6K video recording capability, which is perfect for YouTube creators who want to produce high-resolution videos. It also has a 13 stops of dynamic range, which is perfect for capturing high-quality images.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;10.DJI Osmo Pocket&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;The DJI Osmo Pocket is a great camera for YouTube creators who are looking for a compact and portable option. It has a 12-megapixel 1/2.3-inch sensor and a 3-axis gimbal that allows for steady and stable video. It also has a 4K video recording capability, which is perfect for YouTube creators who want to produce high-resolution videos.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;In conclusion, there are many different &lt;i&gt;&lt;strong&gt;cameras&lt;/strong&gt;&lt;/i&gt; that are suitable for YouTube videos. The cameras mentioned in this article are just a few of the best options available, but it&#039;s important to keep in mind that the best camera for you will depend on your specific needs and budget. Whether you&#039;re just starting out or looking to take your videos to the next level, there&#039;s a camera out there that will work for you.&lt;/p&gt;', 1, '2023-01-27 07:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(2, 'Life', '<p>test change</p>'),
(3, 'Quotes', ''),
(4, 'Fiction', ''),
(5, 'Biography', ''),
(6, ' Motivation', ''),
(7, 'Inspiration', ''),
(8, 'Test', '<p>test</p>'),
(9, 'Latest News', '<p>Catch the latest news here</p>'),
(10, 'Insights', '<p>Get the latest Insights here</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(21, 1, 'Melvine', 'melvineawa@gmail.com', '$2y$10$.KTfxbvgxwtQF8pKXsJ9UeiyL7BiuJpEYRzhWuJo1aDlaBPm4pe6G', '2019-11-23 14:23:30'),
(22, 1, 'Awa Melvine', 'melvine@d.com', '$2y$10$oiKQ31vuUWlPSghDQJliceQJidPBnLt3X/ggEkaoR.lGAHkYBZ7Qu', '2019-11-27 07:08:45'),
(23, 1, 'Duncan', 'sirduncan887@gmail.com', '$2y$10$4jQUtmCaq3oUkU97Lg9hceQOrgQHgfOD8c9GsPwrmXf6PhlEu0PcS', '2023-01-27 14:50:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `dbmoney`
--
CREATE DATABASE IF NOT EXISTS `dbmoney` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbmoney`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `AccountId` int(5) NOT NULL,
  `UserId` int(5) NOT NULL,
  `AccountName` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`AccountId`, `UserId`, `AccountName`) VALUES
(1, 1, 'Cash'),
(2, 1, 'Account'),
(3, 1, 'Card');

--
-- Triggers `account`
--
DELIMITER $$
CREATE TRIGGER `GenerateAccount` AFTER INSERT ON `account` FOR EACH ROW INSERT INTO totals(UserId, AccountId, totals) values (new.UserId, new.AccountId, '0')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `AssetsId` int(5) NOT NULL,
  `UserId` int(5) NOT NULL,
  `Title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Date` date NOT NULL,
  `CategoryId` int(5) NOT NULL,
  `AccountId` int(5) NOT NULL,
  `Amount` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Description` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `assets`
--
DELIMITER $$
CREATE TRIGGER `GenerateTotalAccount` AFTER INSERT ON `assets` FOR EACH ROW UPDATE totals SET totals.totals=totals.totals + new.amount where totals.userid=new.userid and totals.accountid=new.accountid
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `GenerateTotalUpdate` AFTER UPDATE ON `assets` FOR EACH ROW UPDATE totals SET totals.totals=(select sum(Amount) from assets where assets.userid=new.userid and assets.accountid=new.accountid) where totals.userid=new.userid and totals.accountid=new.accountid
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `BillsId` int(5) NOT NULL,
  `UserId` int(5) NOT NULL,
  `Title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Dates` date NOT NULL,
  `CategoryId` int(5) NOT NULL,
  `AccountId` int(5) NOT NULL,
  `Amount` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Description` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `bills`
--
DELIMITER $$
CREATE TRIGGER `GenerateExpense` AFTER INSERT ON `bills` FOR EACH ROW UPDATE totals SET totals.totals=totals.totals - new.amount where totals.userid=new.userid and totals.accountid=new.accountid
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `BudgetId` int(5) NOT NULL,
  `UserId` int(5) NOT NULL,
  `CategoryId` int(5) NOT NULL,
  `Dates` date NOT NULL,
  `Amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryId` int(5) NOT NULL,
  `UserId` int(5) NOT NULL,
  `CategoryName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `UserId`, `CategoryName`, `Level`) VALUES
(1, 1, 'Salary', 1),
(2, 1, 'Alowance', 1),
(3, 1, 'Petty Cash', 1),
(4, 1, 'Bonus', 1),
(5, 1, 'Food', 2),
(6, 1, 'Social Life', 2),
(7, 1, 'Self-Development', 2),
(8, 1, 'Transportation', 2),
(9, 1, 'Culture', 2),
(10, 1, 'Household', 2),
(11, 1, 'Apparel', 2),
(12, 1, 'Beauty', 2),
(13, 1, 'Health', 2),
(14, 1, 'Gift', 2);

-- --------------------------------------------------------

--
-- Table structure for table `totals`
--

CREATE TABLE `totals` (
  `TotalsId` int(5) NOT NULL,
  `UserId` int(5) NOT NULL,
  `AccountId` int(5) NOT NULL,
  `Totals` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `totals`
--

INSERT INTO `totals` (`TotalsId`, `UserId`, `AccountId`, `Totals`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` int(5) NOT NULL,
  `FirstName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `LastName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `FirstName`, `LastName`, `Email`, `Password`, `Currency`) VALUES
(1, 'admin', 'admin', 'a@example.com', 'LjQIdwGE9y5PgLMZdbn8WtWcH8LFTpnoJ1Kx7HnpCes=', '$');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `GenerateDefaultAccount` AFTER INSERT ON `user` FOR EACH ROW INSERT INTO account (UserId, AccountName) VALUES (new.UserId, 'Cash'), (new.UserId, 'Account'), (new.UserId, 'Card')
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`AssetsId`),
  ADD KEY `fk_test` (`AccountId`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`BillsId`),
  ADD KEY `fk_testt` (`AccountId`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`BudgetId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `totals`
--
ALTER TABLE `totals`
  ADD PRIMARY KEY (`TotalsId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `AccountId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `AssetsId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `BillsId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `BudgetId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `totals`
--
ALTER TABLE `totals`
  MODIFY `TotalsId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_test` FOREIGN KEY (`AccountId`) REFERENCES `account` (`AccountId`) ON DELETE CASCADE;

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `fk_testt` FOREIGN KEY (`AccountId`) REFERENCES `account` (`AccountId`) ON DELETE CASCADE;
--
-- Database: `dbqtcvb`
--
CREATE DATABASE IF NOT EXISTS `dbqtcvb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbqtcvb`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `package` varchar(30) NOT NULL,
  `account` varchar(50) NOT NULL,
  `joinDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`name`, `contact`, `location`, `package`, `account`, `joinDate`) VALUES
('John Kihenja', '0728129205', 'Mradi S6', '10MBPS', 'QTC0728129205', '2023-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`) VALUES
(1, 'admin', 'dmk1234567881');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`account`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"webdevass\",\"table\":\"users\"},{\"db\":\"qtcshopdb\",\"table\":\"user_table\"},{\"db\":\"qtcshopdb\",\"table\":\"cart_details\"},{\"db\":\"qtcmanagerdb\",\"table\":\"customers\"},{\"db\":\"qtcmanagerdb\",\"table\":\"bills\"},{\"db\":\"qtcmanagerdb\",\"table\":\"transactions\"},{\"db\":\"qtcmanagerdb\",\"table\":\"packages\"},{\"db\":\"qtcmanagerdb\",\"table\":\"transaction_type\"},{\"db\":\"qtcshopdb\",\"table\":\"products\"},{\"db\":\"qtcshopdb\",\"table\":\"brands\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'dbmoney', 'user', '{\"CREATE_TIME\":\"2023-02-07 21:34:10\",\"col_order\":[0,1,2,4,3,5],\"col_visib\":[1,1,1,1,1,1]}', '2023-02-07 18:39:29'),
('root', 'qtcmanagerdb', 'transactions', '{\"CREATE_TIME\":\"2023-06-10 12:08:03\",\"col_order\":[0,1,2,3,4,5,6],\"col_visib\":[1,1,1,1,1,1,1]}', '2023-06-10 10:25:52'),
('root', 'qtcshopdb', 'products', '{\"sorted_col\":\"`products`.`product_keywords` DESC\"}', '2023-04-05 21:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-08-05 20:17:27', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":195,\"SendErrorReports\":\"always\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `qtcmanagerdb`
--
CREATE DATABASE IF NOT EXISTS `qtcmanagerdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qtcmanagerdb`;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bill_id` int(11) NOT NULL,
  `bill_title` varchar(100) NOT NULL,
  `bill_amount` varchar(100) NOT NULL,
  `bill_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `bill_title`, `bill_amount`, `bill_date`) VALUES
(1, 'Bandwidth', '14000', '2023-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `package` varchar(50) NOT NULL,
  `joinDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `startDate` date NOT NULL,
  `expiryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `contact`, `location`, `package`, `joinDate`, `startDate`, `expiryDate`) VALUES
(1, 'Kevin Mwenda', '0701077803', 'Mradi Street 5', '1', '2023-06-17 14:13:49', '2023-06-18', '2023-07-18'),
(2, 'Mayowa Okikiola Okedairo', '0110496494', 'Mradi Street 5', '2', '2023-06-17 14:15:55', '2023-06-12', '2023-07-12'),
(3, 'Enceslas', '0707831339', 'Kasabuni Opp Cyber', '2', '2023-06-17 14:18:33', '2023-05-21', '2023-06-21'),
(4, 'Christine Mbwira', '0720245653', 'Mradi street 5', '1', '2023-06-17 14:19:49', '2023-06-16', '2023-07-16'),
(5, 'Francis Ifedha', '0768315210', 'Mradi street 10', '2', '2023-06-17 14:21:06', '2023-05-24', '2023-06-24'),
(6, 'Nancy Muthiani', '0727250355', 'Mradi street 5', '1', '2023-06-17 14:23:26', '2023-06-01', '2023-07-01'),
(7, 'Ephiram Benjamin Wachira', '0728910339', 'Mradi street 5 ', '1', '2023-06-17 14:25:18', '2023-05-31', '2023-07-01'),
(8, 'Peter Mwangi', '0722655776', 'Mradi Street 6', '1', '2023-06-17 14:26:42', '2023-05-17', '2023-06-17'),
(9, 'Dominic ', '0102671173', 'Mradi Street 6', '1', '2023-06-17 14:29:52', '2023-06-14', '2023-07-14'),
(10, 'Maxwell Njeri', '0720558821', 'Mradi Street 6', '1', '2023-06-17 14:32:28', '2023-06-18', '2023-07-18'),
(11, 'Anne Maina', '0728504949', 'Mradi street 5', '1', '2023-06-17 14:34:56', '2023-06-12', '2023-07-12'),
(12, 'Albert Ritho', '0728254168', 'Ciieko Opp ACK Church', '2', '2023-06-17 14:36:51', '2023-05-20', '2023-06-20'),
(13, 'Caroline Kiringu', '0726317304', 'Mradi street 5', '2', '2023-06-17 14:38:03', '2023-06-08', '2023-07-08'),
(14, 'Jacob', '0722457086', 'Mradi street 6', '1', '2023-06-17 14:39:51', '2023-05-31', '2023-07-01'),
(15, 'Martha Gitau', '0722911796', 'Mradi Opp Cyber', '1', '2023-06-17 14:41:02', '2023-06-15', '2023-07-15'),
(16, 'Joseph Nkoi', '0700695744', 'Ciieko Opp ACK church', '4', '2023-06-17 14:43:05', '2023-06-08', '2023-07-08'),
(18, 'Vivian Ndungi', '0799551034', 'Sunton Opp MCA street', '2', '2023-06-17 14:53:59', '2023-06-18', '2023-07-18'),
(19, 'Joseph Kamande', '0717373377', 'Sunton River street', '2', '2023-06-17 14:55:50', '2023-06-17', '2023-07-17'),
(20, 'Godfrey Owade', '0723433917', 'Mradi street 8', '2', '2023-06-17 14:58:06', '2023-06-17', '2023-07-17'),
(21, 'Mercy Mwangi', '0714548091', 'Mradi street 4', '2', '2023-06-17 14:59:18', '2023-05-21', '2023-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `package_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_price`) VALUES
(1, '3MBPS', '1000'),
(2, '7MBPS', '1500'),
(3, '10MBPS', '1850'),
(4, '16MBPS', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `transaction_category` varchar(50) NOT NULL,
  `transaction_acc` varchar(50) NOT NULL,
  `transaction_type` varchar(50) NOT NULL,
  `transaction_desc` varchar(255) NOT NULL,
  `transaction_amount` varchar(100) NOT NULL,
  `transaction_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_category`, `transaction_acc`, `transaction_type`, `transaction_desc`, `transaction_amount`, `transaction_time`) VALUES
(1, 'Income', '1', '2', 'Monthly subscription renewal', '1500', '2023-06-16 10:47:51'),
(2, 'Income', '3', '1', 'Installation', '3000', '2023-06-16 10:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE `transaction_type` (
  `ttype_id` int(11) NOT NULL,
  `ttype_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`ttype_id`, `ttype_name`) VALUES
(1, 'INSTALLATION'),
(2, 'MONTHLY SUBSCRIPTION'),
(3, 'SALES'),
(4, 'BILLS'),
(5, 'PURCHASE'),
(6, 'LABOUR'),
(7, 'REFUND'),
(8, 'SALARY'),
(9, 'TRANSACTION COST');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`ttype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `ttype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `qtcshopdb`
--
CREATE DATABASE IF NOT EXISTS `qtcshopdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qtcshopdb`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Mikrotik'),
(2, 'Cisco'),
(3, 'Tp Link'),
(4, 'Tenda'),
(5, 'Apple'),
(6, 'Windows'),
(7, 'Samsung'),
(8, 'Dell'),
(9, 'Lenovo'),
(10, 'HP'),
(11, 'Omen');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`product_id`, `ip_address`, `quantity`) VALUES
(11, '::1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Networking'),
(2, 'Electrical'),
(3, 'Storage'),
(4, 'Office'),
(5, 'Telephone'),
(6, 'Computers'),
(7, 'Cables'),
(8, 'Laptops');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(5, 'Tenda N300', 'Wireless Router', 'Wireless Router, N300, Tenda router, cheap router', 1, 4, 'Tenda3.jpg', 'Tenda4.jpg', 'Tenda2.jpg', '2000', '2023-04-10 18:27:35', 'true'),
(6, 'TP Link Router', 'tp link wireless router', 'tp link, home router,300mbps, wireless', 1, 3, 'Tplink.jpg', 'TP-Link-TL-MR3420-3G-4G-Wireless-Router.webp', 'tp_link_tl_w850n_router_inalambrico_n300_01_l.jpg', '2300', '2023-04-10 18:34:46', 'true'),
(7, 'Tp-Link TL-SF1024D 24-Port Rackmount Switch', 'Tp-Link 24-Port Rackmount Switch', '24-Port, rackmount, Switch ,Tp link,full duplex switch, poe switch', 1, 3, 'Tp-Link-TL-SF1024-24-Port-Switch.webp', 'Tp-Link-TL-SF1024-24-Port-Switch.webp', 'Tp-Link-TL-SF1024-24-Port-Switch.webp', '6,500', '2023-04-10 18:39:41', 'true'),
(8, 'TP-LINK TL-WR841N N', '300Mbps Wireless N Router TL-WR841N', 'Tp-Link Router Prices in kenya, Tp-Link Routers, Tp-link, Tp-Link Routers', 1, 3, 'TL-WR841NEU14.jpg', 'TL-WR841NEU14.jpg', 'TL-WR841NEU14.jpg', '2000', '2023-04-10 18:49:34', 'true'),
(9, 'TP-Link 16Port 10/100Mbps Switch', 'TP-Link TL-SF1016D Fast Ethernet Switch', 'TP-Link, TL-SF1016D, Fast Ethernet Switch,10/100Mbps Switch, 16Port', 1, 3, 'TPLINK 16prt_switch.jpg', 'TPLINK 16prt_switch.jpg', 'TPLINK 16prt_switch.jpg', '4000', '2023-04-10 18:58:51', 'true'),
(10, 'Tenda F6', 'Tenda F6 Wireless Router', 'wireless router, tenda routers in kenya,Tenda F6 ,WiFi Router ,2.4GHz, 4x RJ45 100Mb/s', 1, 4, 'f6-300x300.jpg', 'f6-300x300.jpg', 'f6-300x300.jpg', '2000', '2023-04-10 19:03:58', 'true'),
(11, 'TP-Link  5-Port switch', 'TL-SF1005D desktop switch', 'TP-Link Switch,TL-SF1005D desktop switch,TP-Link  5-Port switch', 1, 3, 'TP-Link-TL-SF1005D-2.jpeg', 'TP-Link-TL-SF1005D-3-300x143.jpeg', 'TP-Link-TL-SF1005D5port.jpeg', '1300', '2023-04-10 19:09:06', 'true'),
(12, 'Category 6 Ethernet Cable', 'Cat 6 Outdoor Ethernet Cable', 'Cat 6, Outdoor, Ethernet Cable.', 7, 6, 'Cat-6-Outdoor-cables-kenya-_sghn1l.webp', 'Cat-6-Outdoor-cables-kenya-_sghn1l.webp', 'Cat-6-Outdoor-cables-kenya-_sghn1l.webp', '12500', '2023-04-10 19:15:34', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_contact` varchar(20) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ipaddress` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_name`, `user_contact`, `user_email`, `user_password`, `user_image`, `user_ipaddress`, `user_address`) VALUES
(1, 'Duncan M', '0745609822', 'sirduncan887@gmail.com', '33333333', 'istockphoto-1301038922-612x612.jpg', ' ::1', 'Roysambu, Nairobi, Kenya'),
(2, 'Wangari', '0745456823', 'wangari@gmail.com', '$2y$10$XimfkfeNtGvzi5vgc7v0FOiJxm/o3m19cxPz2OV9GdRv8Q6PGfclC', 'IRcurtain.jpg', ' ::1', 'Kasarani, Nairobi, Kenya'),
(3, 'Wanjiku', '0113456823', 'wanjiku@gmail.com', '$2y$10$RKyJpTMgaV3XU7MP.1aPKuFkOhGo1Thrb7uamWVJ0EjyrSPLflgyq', 'IR2lampshade.jpg', ' ::1', 'Muranga Kenya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `webdevass`
--
CREATE DATABASE IF NOT EXISTS `webdevass` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webdevass`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `remember_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_email`, `user_password`, `timestamp`, `remember_token`) VALUES
(1, 'Duncan', 'Maina', 'sirduncan887@gmail.com', '$2y$10$Y4a1sc8Xspu/WjZGcCTFUe7H7JK2Jqcm2wdKEC76hEAshdztHW7de', '2023-08-03 00:15:45', ''),
(2, 'John', 'kihenja', 'quanticfiber@gmail.com', '$2y$10$kG4gtiQ/8xIRd8scZLGBX.2IHztHZdaSE9quRLp0fhMGbPKsRtbYW', '2023-08-04 20:40:59', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
