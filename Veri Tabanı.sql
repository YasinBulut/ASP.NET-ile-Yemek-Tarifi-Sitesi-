USE [DBYemekTarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 14.01.2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GUNUNYEMEGIID] [smallint] IDENTITY(1,1) NOT NULL,
	[GUNUNYEMEGIAD] [varchar](50) NULL,
	[GUNUNYEMEGIMALZEME] [varchar](500) NULL,
	[GUNUNYEMEGITARIF] [varchar](max) NULL,
	[GUNUNYEMEGIRESIM] [varchar](100) NULL,
	[GUNUNYEMEGIPUAN] [tinyint] NULL,
	[GUNUNYEMEGITARIH] [smalldatetime] NULL CONSTRAINT [DF_Tbl_GununYemegi_GUNUNYEMEGITARIH]  DEFAULT (getdate()),
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GUNUNYEMEGIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Hakkımızda]    Script Date: 14.01.2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Hakkımızda](
	[METIN] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 14.01.2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[KATEGORIID] [smallint] IDENTITY(1,1) NOT NULL,
	[KATEGORIAD] [varchar](50) NULL,
	[KATEGORIADET] [smallint] NULL CONSTRAINT [DF_Tbl_Kategoriler_KATEGORIADET]  DEFAULT ((0)),
	[KATEGORIRESIM] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KATEGORIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_mesajlar]    Script Date: 14.01.2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_mesajlar](
	[MESAJID] [smallint] IDENTITY(1,1) NOT NULL,
	[MESAJGONDEREN] [varchar](50) NULL,
	[MESAJBASLIK] [varchar](30) NULL,
	[MESAJMAIL] [varchar](50) NULL,
	[MESAJICERIK] [varchar](500) NULL,
 CONSTRAINT [PK_Tbl_mesajlar] PRIMARY KEY CLUSTERED 
(
	[MESAJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 14.01.2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[TARIFID] [smallint] IDENTITY(1,1) NOT NULL,
	[TARIFAD] [varchar](50) NULL,
	[TARIFMALZEME] [varchar](500) NULL,
	[TARIFYAPILIS] [varchar](max) NULL,
	[TARIFRESIM] [varchar](50) NULL,
	[TARIFSAHIP] [varchar](50) NULL,
	[TARIFSAHIPMAIL] [varchar](50) NULL,
	[TARİFDURUM] [bit] NULL CONSTRAINT [DF_Tbl_Tarifler_TARİFDURUM]  DEFAULT ((0)),
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[TARIFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 14.01.2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[YEMEKID] [smallint] IDENTITY(1,1) NOT NULL,
	[YEMEKAD] [varchar](50) NULL,
	[YEMEKMALZEME] [varchar](500) NULL,
	[YEMEKTARIF] [varchar](max) NULL,
	[YEMEKRESIM] [varchar](100) NULL,
	[YEMEKTARIH] [smalldatetime] NULL CONSTRAINT [DF_Tbl_Yemekler_YEMEKTARIH]  DEFAULT (getdate()),
	[YEMEKPUAN] [float] NULL,
	[KATEGORIID] [smallint] NULL,
	[DURUM] [bit] NULL CONSTRAINT [DF_Tbl_Yemekler_DURUM]  DEFAULT ((0)),
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[YEMEKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 14.01.2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[YONETICIID] [tinyint] IDENTITY(1,1) NOT NULL,
	[YONETICIAD] [varchar](50) NULL,
	[YONETICISIFRE] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YONETICIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 14.01.2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[YORUMID] [smallint] IDENTITY(1,1) NOT NULL,
	[YORUMADSOYAD] [varchar](50) NULL,
	[YORUMMAIL] [varchar](50) NULL,
	[YORUMTARIH] [smalldatetime] NULL CONSTRAINT [DF_Tbl_Yorumlar_YORUMTARIH]  DEFAULT (getdate()),
	[YORUMONAY] [bit] NULL CONSTRAINT [DF_Tbl_Yorumlar_YORUMONAY]  DEFAULT ((0)),
	[YORUMICERIK] [varchar](500) NULL,
	[YEMEKID] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YORUMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] ON 

INSERT [dbo].[Tbl_GununYemegi] ([GUNUNYEMEGIID], [GUNUNYEMEGIAD], [GUNUNYEMEGIMALZEME], [GUNUNYEMEGITARIF], [GUNUNYEMEGIRESIM], [GUNUNYEMEGIPUAN], [GUNUNYEMEGITARIH]) VALUES (1, N'MÜCVER FIRINDA', N'-3 tane kabak

-2 yumurta

-1 tane havuç

-3-4 kaşık un

-4-5 dal taze soğan

-Dereotu

-Tuz

-Karabiber

-1 kaşık zeytinyağı

-Ayçiçek yağı (kızartma için)', N'MÜCVER TARİFİ, NASIL YAPILIR?

Öncelikle tüm malzemelerinizi bol suyla yıkayın. Ardından kabakları ve havucu rendeleyin. Rendelenmiş havuç ve kabakları avucunuzda sıkarak sularını çıkarın. Yumurtaları kırarak çırpın. Dereotu ve soğanları ince ince kıyın. Ardından geniş bir kabın içinde tüm malzemeleri birleştirip iyice karıştırın. Ayçiçek yağını tavada kızdırıp birer dolu kaşık harçtan üzerine koyun ve kaşık yardımıyla yayın. Her iki tarafını da kızartın.

Afiyet olsun', NULL, 7, CAST(N'2021-01-07 22:12:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] OFF
INSERT [dbo].[Tbl_Hakkımızda] ([METIN]) VALUES (N'İştah açan, ilham veren, ağız sulandıran... Sadece yemek tarifleri değil... Güldürürken yediren...

Yemek.com, sevgilisini mutlu etmek için İtalyan mutfağını öğrenenin de, işi gücü bırakıp güneyde şarap üretmeyi, en olmadı Cihangir''de pilavcı açmayı hayal edenin de, övünerek anlatabildiği tek mutfak becerisi menemen olanın da, yurt dışına her çıkışında yemek yiyeceği yerlere göre otelini seçenin de, o gün yediği dev bir sufle için bütün hafta boyunca yediklerine dikkat etme zorunluluğu hissedenin de, yemeğin tadına bakmadan tuz atanın da, Instagram''a fotoğraf atabilmek için yemeğini soğutmayı göze alanın da sitesi.

Sadece karnını doyurmak isteyenler için değil, bir hazzın peşinde koşanlar için.

Farklı zevklerden ve renklerden gelen iştahlı ekibi ve dışarıdan katkı sağlayan birçok dostu ve partneri ile Yemek.com kocaman, upuzun, rengarenk bir masa kurdu ve bu masada epey sandalye var.

Bu nefis masada sizin de bir sandalyeniz var. İster yazar olarak, ister okur olarak.

İyi ki geldiniz, yine gelin.

Sevgiler bizden,')
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD], [KATEGORIADET], [KATEGORIRESIM]) VALUES (1, N'ÇORBA', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD], [KATEGORIADET], [KATEGORIRESIM]) VALUES (2, N'SEBZE YEMEKLERİ', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD], [KATEGORIADET], [KATEGORIRESIM]) VALUES (3, N'ET YEMEKLERİ', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD], [KATEGORIADET], [KATEGORIRESIM]) VALUES (4, N'MAKARNA ÇEŞİTLERİ', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD], [KATEGORIADET], [KATEGORIRESIM]) VALUES (5, N'TAVUK YEMEKLERİ', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD], [KATEGORIADET], [KATEGORIRESIM]) VALUES (6, N'PASTALAR', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD], [KATEGORIADET], [KATEGORIRESIM]) VALUES (7, N'İÇECEKLER', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KATEGORIID], [KATEGORIAD], [KATEGORIADET], [KATEGORIRESIM]) VALUES (8, N'TATLILAR', 0, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_mesajlar] ON 

INSERT [dbo].[Tbl_mesajlar] ([MESAJID], [MESAJGONDEREN], [MESAJBASLIK], [MESAJMAIL], [MESAJICERIK]) VALUES (1, N'YASİN BULUT', N'TEST MESAJ ', N'yasinbulut@outlook.com', N'KURULUM TEST MESAJIDIR')
SET IDENTITY_INSERT [dbo].[Tbl_mesajlar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] ON 

INSERT [dbo].[Tbl_Tarifler] ([TARIFID], [TARIFAD], [TARIFMALZEME], [TARIFYAPILIS], [TARIFRESIM], [TARIFSAHIP], [TARIFSAHIPMAIL], [TARİFDURUM]) VALUES (1, N'MERCİMEK ÇORBASI', N'MERCİMEK,SEBZE', N'TEST YEMEĞİ', N'mercimek.jpg', N'YASİN BULUT', N'yasinbulut@outlook.com', 1)
INSERT [dbo].[Tbl_Tarifler] ([TARIFID], [TARIFAD], [TARIFMALZEME], [TARIFYAPILIS], [TARIFRESIM], [TARIFSAHIP], [TARIFSAHIPMAIL], [TARİFDURUM]) VALUES (2, N'SEBZELİ KUŞBAŞI ', N'Yarım kg kuzu kuşbaşı eti
Dilediğin kadar zeytinyağı
1 baş büyük kuru soğan
1 yemek kaşığı domates salçası
4 adet büyük boy küp küp doğranmış patates
4 adet doğranmış havuç
4 adet doğranmış sivri biber
2 su bardağı kaynar su
Tuz, karabiber, kekik', N'Kuzu etini iyice yıkayın. Zeytinyağını tencereye alın ve ısıtın. Kuzu etini tencereye alın ve suyunu salıp çekene kadar kavurun. İnce kıyılmış soğanı ekleyin ve 5 dakika kavurun. Salçayı kat ve 5 dakika kavurun. Patatesleri, havuçları ve biberleri ekleyin. 5 dakika sonra kaynar suyu, tuzu ve baharatları ekleyin. Yarım saat daha pişirin. Sıcak servis edin. Yanında bulgur pilavı ve yoğurt güzel gider. Afiyet olsun.', N'SEBZELİKUZUKUŞBAŞI.jpg', N'MERVE', N'aylin25@gmail.com', 1)
INSERT [dbo].[Tbl_Tarifler] ([TARIFID], [TARIFAD], [TARIFMALZEME], [TARIFYAPILIS], [TARIFRESIM], [TARIFSAHIP], [TARIFSAHIPMAIL], [TARİFDURUM]) VALUES (3, N'ISLAK KEK', N'3 adet yumurta
1,5 su bardağı şeker
1,5 su bardağı süt
1 su bardağı sıvı yağ
1 paket kakao (25g)
1 paket kabartma tozu
1 paket vanilya
2 su bardağı un (elenmiş)', N'Islak kek tarifi için ilk olarak yumurta, şeker iyice çırpıldıktan sonra süt, sıvı yağ, kakao eklenerek tekrar çırpılır.
Kekimizi ıslatmak için bu karışımdan bir su bardağı ayrılır.
Kalan karışıma kabartma tozu, vanilya ve elenmiş un karıştırılarak kek hamuru oluşturulur.
Yağlanmış tepsiye ya da borcama dökülerek 170 derecede fırına sürülür, yaklaşık 35 dakika pişirilir. Benim kullandığım borcamın ölçüsü 28*22 cm.
Keki beklerken üzeri için ayırdığınız karışımı uygun bir tavaya alarak üzerine süt ilave edilir ve ocakta 5 dakika kaynatılır.
Fırından çıkan kekin ilk sıcaklığı çıktıktan sonra yani 10 dk kadar sonra dilimlenir, üzerine yavaş yavaş ılıyan sos her yerine gelecek şekilde dökülür.
Üzerine iri parçalanan ceviz serpilir.
Kekin sosu güzelce çekmesi için 2-3 saat dinlendirildikten sonra ıslak kek servis edilebilir.', NULL, N'AHMET', N'ahmet@45hotmail.com', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([YEMEKID], [YEMEKAD], [YEMEKMALZEME], [YEMEKTARIF], [YEMEKRESIM], [YEMEKTARIH], [YEMEKPUAN], [KATEGORIID], [DURUM]) VALUES (2, N'KÖRİ SOSLU MAKARNA', N'1/2 paket, makarna, (haşlanmış)1 paket, krema, 1 tatlı kaşığı, köri, 2 çay kaşığı, tuz, 1 çay kaşığı, karabiber, 1 yemek kaşığı, tereyağı, 2 parça, tavuk göğsü, 100 gram, parmesan (rendelenmiş)', N'Makarnayı haşlayın. Tavukları küp küp doğrayın. Tavayı ısıtın ve tereyağını eritin. Eriyen tereyağında tavukları kavurun. Köri, karabiber ve tuzu ilave edin. Kremayı ilave edin ve kısık ateşte pişirmeye ve kremayı yoğunlaştırmaya devam edin. Makarnayı ilave edin ve henüz sıcakken parmesan ekleyip tavada çevirin. Tabağa alın ve parmesan peyniri ilave edin. İşte bu kadar, afiyet olsun!', NULL, CAST(N'2021-01-10 14:43:00' AS SmallDateTime), 8.2, 4, 0)
INSERT [dbo].[Tbl_Yemekler] ([YEMEKID], [YEMEKAD], [YEMEKMALZEME], [YEMEKTARIF], [YEMEKRESIM], [YEMEKTARIH], [YEMEKPUAN], [KATEGORIID], [DURUM]) VALUES (3, N'ZEYTİN YAĞLI BARBUNYA', N'1 kilogram taze barbunya, 1/2 çay bardağı zeytinyağı, 1 adet orta boy kuru soğan, 2 diş sarımsak,
1 adet büyük boy patates, 2 adet orta boy havuç, 2 adet orta boy domates, 2 su bardağı sıcak su,
1 tatlı kaşığı domates salçası, 1 tatlı kaşığı toz şeker, 1 çay kaşığı tuz
', N'Kabuklarını ayıklayıp bol suda yıkadığınız barbunyaları üzerini geçecek kadar su ilavesiyle orta ateşte 10 dakika kadar haşlayın. Kuru soğanı rendenin ince tarafıyla rendeleyin. Sarımsakları ayıklayın, lezzet vermesi için bütün olarak bırakın. Kabuğunu soyduğunuz patates ve havuçları küçük küpler halinde doğrayın. Ortadan ikiye kesip uç kısımlarını aldığınız domatesleri rendeleyin. Zeytinyağını derin bir tencerede kızdırın. Rendelenmiş soğan ve sarımsakları katıp hafif bir renk alana kadar soteleyin. Patates ve havuç küplerini katıp kısa süre kavurun. Hafif renk vermesi için domates salçası ve rendelenmiş domatesleri katıp kısık ateşte pişmeye bırakın. Haşlanmış barbunyayı süzüp tencereye alın. Toz şeker, tuz ve sıcak suyu ekledikten sonra kısık ateşte barbunyalar yumuşayana kadar pişirin. Ocaktan aldığınız barbunyayı kapağı kapalı tencerede oda ısısına gelene kadar dinlendirin. Sonrasında derin bir servis kabına aktardığınız barbunyayı; arzuya göre üzerine gezdirdiğiniz sızma zeytinyağı, taze sıkılmış limon suyu, incecik kıyılmış maydanoz eşliğinde ılık ya da soğuk olarak sevdiklerinizle paylaşın.', NULL, CAST(N'2021-01-10 14:48:00' AS SmallDateTime), 8.5, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([YEMEKID], [YEMEKAD], [YEMEKMALZEME], [YEMEKTARIF], [YEMEKRESIM], [YEMEKTARIH], [YEMEKPUAN], [KATEGORIID], [DURUM]) VALUES (4, N'MERCİMEK ÇORBASI', N'1 su bardağı kırmızı ya da sarı mercimek, 1 adet kuru soğan, 1 adet patates, 1 adet havuç, 1 yemek kaşığı un, 2 yemek kaşığı ayçiçek yağı, 6 su bardağı sıcak su, (1 adet et su tablet ile hazırlanmış)1 çay kaşığı tuz, 1 çay kaşığı karabiber', N'Kuru soğanı küçük küpler halinde doğrayın. Ayçiçek yağını derin bir tencerede kızdırın. Doğradığınız soğanları 2- 3 dakika kadar kavurun. Kavrulan soğanlara unu ekleyin ve kokusu çıkıp, renk alana kadar kavurma işlemini sürdürün. İri parçalar halinde doğradığınız patates ve havucu tencereye aktarın. Tüm malzemeyi karıştırdıktan sonra arzuya göre et su tablet ile hazırladığınız sıcak suyu ve bol suda yıkadıktan sonra suyunu süzdürdüğünüz mercimeği ilave edin. Tuz ve karabiberi ekleyin. Havuçlar yumuşayana kadar orta ateşte yaklaşık 40 dakika pişirin. Çorbayı, pürüzsüz bir kıvam alması için; el blenderından geçirdikten sonra sıcak olarak sevdiklerinizle paylaşın.', N'~/YemekResim/mercimek.png', CAST(N'2021-01-10 14:49:00' AS SmallDateTime), 8.7, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([YEMEKID], [YEMEKAD], [YEMEKMALZEME], [YEMEKTARIF], [YEMEKRESIM], [YEMEKTARIH], [YEMEKPUAN], [KATEGORIID], [DURUM]) VALUES (6, N'EZO GELİN ÇORBASI', N'2 çay bardağıkırmızı mercimek
3 yemek kaşığıpirinç
2 yemek kaşığıbulgur
1 adetkuru soğan
1 tatlı kaşığıdomates salçası
1 yemek kaşığıtereyağı
6 su bardağısıcak su
1 tatlı kaşığınane
1 tatlı kaşığıtuz', N'Ezogelin çorbası yapmak için düdüklü tencerede önce rendelemiş olduğumuz soğanı ve ezmiş olduğumuz sarımsağı tereyağında kavuruyoruz. Soğanlar diriliğini kaybetsin yeterli yakmadan orta ateşte kavuralım.
Soğanlar kavrulunca naneyi, kırmızı biberi ve salçayı ilave edip. Kavurmaya devam edelim.
Bir iki karıştırdıktan sonra yıkadığımız mercimeği, pirinci, bulguru ve tuzunu da ilave ederek karıştıralım.
Başka bir tarafta kaynamakta olan 2 litreye yakın suyu üzerine boşaltalım.
Düdüklünün kapağını ve düdüğünü kapattıktan sonra 10 dakika pişiriyoruz. Normal tencerede de yapabilirsiniz ama biraz daha geç pişecektir (yaklaşık 30-40 dakika sürecektir).', NULL, CAST(N'2021-01-11 15:02:00' AS SmallDateTime), 8.1, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([YEMEKID], [YEMEKAD], [YEMEKMALZEME], [YEMEKTARIF], [YEMEKRESIM], [YEMEKTARIH], [YEMEKPUAN], [KATEGORIID], [DURUM]) VALUES (8, N'LİMONATA', N'LİMONATA - SU - BUZ - ŞEKER', N'TEST', NULL, CAST(N'2021-01-12 20:05:00' AS SmallDateTime), NULL, 7, 0)
INSERT [dbo].[Tbl_Yemekler] ([YEMEKID], [YEMEKAD], [YEMEKMALZEME], [YEMEKTARIF], [YEMEKRESIM], [YEMEKTARIH], [YEMEKPUAN], [KATEGORIID], [DURUM]) VALUES (10, N'ISLAK KEK', N'3 adet yumurta1,5 su bardağı şeker1,5 su bardağı süt1 su bardağı sıvı yağ1 paket kakao (25g)1 paket kabartma tozu1 paket vanilya2 su bardağı un (elenmiş)', N'Islak kek tarifi için ilk olarak yumurta, şeker iyice çırpıldıktan sonra süt, sıvı yağ, kakao eklenerek tekrar çırpılır.
Kekimizi ıslatmak için bu karışımdan bir su bardağı ayrılır.
Kalan karışıma kabartma tozu, vanilya ve elenmiş un karıştırılarak kek hamuru oluşturulur.
Yağlanmış tepsiye ya da borcama dökülerek 170 derecede fırına sürülür, yaklaşık 35 dakika pişirilir. Benim kullandığım borcamın ölçüsü 28*22 cm.
Keki beklerken üzeri için ayırdığınız karışımı uygun bir tavaya alarak üzerine süt ilave edilir ve ocakta 5 dakika kaynatılır.
Fırından çıkan kekin ilk sıcaklığı çıktıktan sonra yani 10 dk kadar sonra dilimlenir, üzerine yavaş yavaş ılıyan sos her yerine gelecek şekilde dökülür.
Üzerine iri parçalanan ceviz serpilir.
Kekin sosu güzelce çekmesi için 2-3 saat dinlendirildikten sonra ıslak kek servis edilebilir.', N'~/YemekResim/muhtesem-sosuyla-duble-islak-kek-600x400.jpg', CAST(N'2021-01-13 20:11:00' AS SmallDateTime), NULL, 8, 1)
INSERT [dbo].[Tbl_Yemekler] ([YEMEKID], [YEMEKAD], [YEMEKMALZEME], [YEMEKTARIF], [YEMEKRESIM], [YEMEKTARIH], [YEMEKPUAN], [KATEGORIID], [DURUM]) VALUES (11, N'SEBZELİ KUŞBAŞI ', N'Yarım kg kuzu kuşbaşı etiDilediğin kadar zeytinyağı1 baş büyük kuru soğan1 yemek kaşığı domates salçası4 adet büyük boy küp küp doğranmış patates4 adet doğranmış havuç4 adet doğranmış sivri biber2 su bardağı kaynar suTuz, karabiber, kekik', N'Kuzu etini iyice yıkayın. Zeytinyağını tencereye alın ve ısıtın. Kuzu etini tencereye alın ve suyunu salıp çekene kadar kavurun. İnce kıyılmış soğanı ekleyin ve 5 dakika kavurun. Salçayı kat ve 5 dakika kavurun. Patatesleri, havuçları ve biberleri ekleyin. 5 dakika sonra kaynar suyu, tuzu ve baharatları ekleyin. Yarım saat daha pişirin. Sıcak servis edin. Yanında bulgur pilavı ve yoğurt güzel gider. Afiyet olsun.', N'~/YemekResim/SEBZELİKUZUKUŞBAŞI.jpg', CAST(N'2021-01-13 20:12:00' AS SmallDateTime), NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] ON 

INSERT [dbo].[Tbl_Yorumlar] ([YORUMID], [YORUMADSOYAD], [YORUMMAIL], [YORUMTARIH], [YORUMONAY], [YORUMICERIK], [YEMEKID]) VALUES (1, N'MEHMET ASLAN', N'aslan66@gmail.com', CAST(N'2021-01-10 16:32:00' AS SmallDateTime), 1, N'BENCE MERCİMEK DAHA FAZLA KONULURSA KIVAMI DAHA GÜZEL OLUR', 4)
INSERT [dbo].[Tbl_Yorumlar] ([YORUMID], [YORUMADSOYAD], [YORUMMAIL], [YORUMTARIH], [YORUMONAY], [YORUMICERIK], [YEMEKID]) VALUES (3, N'ASLI GÜNEŞ', N'aslı25@gmail.com', CAST(N'2021-01-10 16:36:00' AS SmallDateTime), 1, N'ÇOK GÜZEL OLDU , ELİNİZE SAĞLIK ÇOK TEŞEKKÜR EDERİM', 2)
INSERT [dbo].[Tbl_Yorumlar] ([YORUMID], [YORUMADSOYAD], [YORUMMAIL], [YORUMTARIH], [YORUMONAY], [YORUMICERIK], [YEMEKID]) VALUES (4, N'KEMAL ARTÇI', N'kemal@hotmail.com', CAST(N'2021-01-10 16:51:00' AS SmallDateTime), 1, N'ÇORBAM TAM MİSAFİRLERİMİN AĞZINA LAİK OLDU SAĞOLUN', 4)
INSERT [dbo].[Tbl_Yorumlar] ([YORUMID], [YORUMADSOYAD], [YORUMMAIL], [YORUMTARIH], [YORUMONAY], [YORUMICERIK], [YEMEKID]) VALUES (5, N'KERİMAN AHLAT', N'keriman@gmail.com', CAST(N'2021-01-10 17:37:00' AS SmallDateTime), 0, N'YEŞİL MERCİMEK İLE DE OLUR MU?', 3)
INSERT [dbo].[Tbl_Yorumlar] ([YORUMID], [YORUMADSOYAD], [YORUMMAIL], [YORUMTARIH], [YORUMONAY], [YORUMICERIK], [YEMEKID]) VALUES (6, N'AHMET YÜCE', N'ahmet@outlook.com', CAST(N'2021-01-10 17:38:00' AS SmallDateTime), 0, N'MAKARNA NIN EN İYİSİ KETÇAPLI GERİSİNİ BİLMEM :)', 2)
INSERT [dbo].[Tbl_Yorumlar] ([YORUMID], [YORUMADSOYAD], [YORUMMAIL], [YORUMTARIH], [YORUMONAY], [YORUMICERIK], [YEMEKID]) VALUES (7, N'SEVİM AŞIL', N'seviö_22@gmail.com', CAST(N'2021-01-10 21:23:00' AS SmallDateTime), 0, N'ZEYTİN YAĞI FAZLA OLMUŞ ', 2)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] OFF
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([KATEGORIID])
REFERENCES [dbo].[Tbl_Kategoriler] ([KATEGORIID])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler] FOREIGN KEY([YEMEKID])
REFERENCES [dbo].[Tbl_Yemekler] ([YEMEKID])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler]
GO
