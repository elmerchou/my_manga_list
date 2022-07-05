import 'package:flutter/material.dart';
import './models/Category_inner.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = [
  CategoryInner(
    id: 'c1',
    title: '冒險',
    color: Colors.purple,
  ),
  CategoryInner(
    id: 'c2',
    title: '科幻',
    color: Colors.red,
  ),
  CategoryInner(
    id: 'c3',
    title: '恐怖',
    color: Colors.orange,
  ),
  CategoryInner(
    id: 'c4',
    title: '歷史',
    color: Colors.amber,
  ),
  CategoryInner(
    id: 'c5',
    title: '推理',
    color: Colors.blue,
  ),
  CategoryInner(
    id: 'c6',
    title: '校園',
    color: Colors.green,
  ),
  CategoryInner(
    id: 'c7',
    title: '運動',
    color: Colors.lightBlue,
  ),
  CategoryInner(
    id: 'c8',
    title: '戀愛',
    color: Colors.lightGreen,
  ),
  CategoryInner(
    id: 'c9',
    title: '日常',
    color: Colors.pink,
  ),
  CategoryInner(
    id: 'c10',
    title: '其他',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: [
      'c6',
      'c8',
      'c9',
    ],
    title: '俺物語!!',
    imageUrl:
        'https://suesucollection.onrender.com/posts/mylovestroy/cover.jpg',
    info: [
      '原作：河源和音',
      '作畫：或子',
      '初連載時間：2012年',
      '冊數：單行本13冊',
      '改編：動畫、真人電視劇',
      '簡評：基情跟愛情同樣耀眼且溫馨的青春喜劇'
    ],
    rank: Rank.Best,
    isEnd: true,
    isAllAge: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c3',
      'c5',
    ],
    title: '無間雙龍',
    imageUrl: 'https://suesucollection.onrender.com/posts/ouroboros/feat.png',
    info: [
      '作者：神崎裕也',
      '初連載時間：2009 年',
      '冊數：單行本24冊',
      '改編：真人電視劇',
      '簡評：	精采絕倫，跌宕起伏的漫畫版無間道'
    ],
    rank: Rank.Best,
    isEnd: true,
    isAllAge: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c9',
    ],
    title: '四葉妹妹！',
    imageUrl: 'https://suesucollection.onrender.com/posts/yotsubato/feat.jpg',
    info: ['作者：東 清彦', '冊數：單行本15冊', '簡評：	日常系漫畫的巔峰之作'],
    rank: Rank.Great,
    isEnd: true,
    isAllAge: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c7',
      'c1',
      'c10',
    ],
    title: '將太的壽司系列',
    imageUrl:
        'https://suesucollection.onrender.com/posts/sushi_is_the_best/2.jpg',
    info: [
      '作者：寺沢大介',
      '正篇：單行本 27 冊',
      '全國大賽篇：單行本 17 冊',
      'World Stage 篇：單行本 4 冊',
      '簡評：	永不過時的料理漫畫經典'
    ],
    rank: Rank.Great,
    isEnd: true,
    isAllAge: true,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c9',
      'c10',
    ],
    title: '日常 Nichijou',
    imageUrl: 'https://suesucollection.onrender.com/posts/nichijou/feat.jpg',
    info: [
      '作者：新井圭一 (あらゐけいいち)',
      '正篇：單行本 10 冊',
      '改編：動畫',
      '簡評：故事中常常出現難以理解卻似乎合理的事物，讓人相信在故事中所發生的一切都是「日常」。'
    ],
    rank: Rank.Great,
    isEnd: true,
    isAllAge: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c9',
      'c1',
    ],
    title: 'SKET DANCE 學園救援團',
    imageUrl:
        'https://suesucollection.onrender.com/posts/sket_dance/SKET_DANCE_logo.png',
    info: [
      '作者：篠原健太',
      '正篇：單行本 32 冊',
      '改編：動畫',
      '簡評：不看可惜的校園漫畫，大家都能從中找到自己學生時期的某個瞬間'
    ],
    rank: Rank.Best,
    isEnd: true,
    isAllAge: true,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c8',
      'c6',
      'c9',
    ],
    title: 'LAST GAME 青春角力賽',
    imageUrl: 'https://suesucollection.onrender.com/posts/last_game/feat.jpg',
    info: [
      '作者：天乃忍',
      '正篇：單行本 11 冊',
      '改編：無',
      '簡評：少女漫畫啟蒙作，等於是開啟了一扇門，引領我前往多采多姿的少女漫畫世界'
    ],
    rank: Rank.Best,
    isEnd: true,
    isAllAge: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c1',
      'c4',
    ],
    title: '浪人劍客',
    imageUrl: 'https://suesucollection.onrender.com/posts/vagabond/feat.png',
    info: ['原作：吉川英治', '作畫：井上雄彥', '正篇：單行本 37 冊', '改編：無', '簡評：有生之年完結了就是只應天上有的神作'],
    rank: Rank.Best,
    isEnd: false,
    isAllAge: false,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c3',
      'c5',
    ],
    title: 'LIAR GAME - 詐欺遊戲',
    imageUrl: 'https://suesucollection.onrender.com/posts/liar_game/feat.png',
    info: [
      '作者：甲斐谷忍',
      '正篇：單行本 19 冊',
      '改編：電視劇(日本、韓國)',
      '簡評：即便結局顯得有些急促，仍不失為一部有趣且優秀的推理漫畫'
    ],
    rank: Rank.Best,
    isEnd: true,
    isAllAge: true,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c5',
      'c3',
      'c2',
    ],
    title: '怪物王女',
    imageUrl:
        'https://suesucollection.onrender.com/posts/princess_resurrection/feat.jpg',
    info: ['作者：光永 康則', '正篇：單行本 20 冊', '改編：動畫', '簡評：對神秘玄怪、怪物充滿興趣的人一定要看的恐怖漫畫！'],
    rank: Rank.Great,
    isEnd: true,
    isAllAge: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c9',
      'c6',
      'c8',
    ],
    title: '佐伯同學在睡覺',
    imageUrl:
        'https://suesucollection.onrender.com/posts/saekisleeping/feat.png',
    info: ['原作：春原ロビンソン', '作畫：小菊路よう', '正篇：單行本 ５ 冊', '改編：無', '簡評：獨樹一幟的睡覺日常漫畫'],
    rank: Rank.Great,
    isEnd: true,
    isAllAge: true,
  ),
];
