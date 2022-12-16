class BlogsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  BlogsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  static List<BlogsData> recentNewsData = [
    BlogsData(
        "Wtech- Udacity Yapay Zeka Eğitim Projesi",
        "Teknolojide Kadın Derneği",
        "Teknolojide Kadın Derneği olarak yapay zeka ve veri biliminin önemini bilerek Udacity iş birliği ile “Deep Learning” ve “Artificial Intelligence with Python” olmak üzere iki ayrı eğitim programı hazırladık. Teknolojide Kadın Derneği olarak yapay zeka ve veri biliminin önemini bilerek Udacity iş birliği ile “Deep Learning” ve “Artificial Intelligence with Python” olmak üzere iki ayrı eğitim programı hazırladık. Son hazırlanan raporlara göre; yapay zekâ teknolojisinin 2030 yılına kadar potansiyel olarak 15 trilyon dolarlık bir ekosisteme sahip olacağı öngörülürken, küresel Gayri Safi Yurt İçi Hasıla’yı %14 oranında artırabileceği tahmin edilmektedir..",
        "2022-10-11",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_295_16338606796162bc476f829.jpeg"),
    BlogsData(
        "Araştırma Ölçümleme Projemiz",
        "Teknolojide Kadın Derneği",
        "Ölçemediğimiz şeyi anlayamayacağımız ve yönetemeyeceğimiz düşüncesinden yola çıkarak araştırma ve ölçümlemenin değerini ortaya koyacak, bütünü gören endeks çalışmaları konusunda büyük açığı kapatmak üzere çalışmalara başladık. Dünyanın en büyük araştırma şirketlerinden biri olan IPSOS ile başlatmış olduğumuz ön çalışmanın sonucunda, teknolojide insan endeksi ve bu endekste kadın kırılımı konularında öncü bir ölçümleme çalışması ortaya koymak üzere alt yapımızı tamamladık.",
        "2022-09-11",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_296_16338653896162ceaddce58.jpeg"),
    BlogsData(
        "Wtech ile Eğitimden İş Dünyasına Adım Adım",
        "Teknolojide Kadın Derneği",
        "Ben Doğan Yavuz ,Adana Alparslan Türkeş Bilim ve Teknoloji Üniversitesi Yönetim Bilişim Sistemleri bölümünden  2020 yılında mezun oldum. Ardından Wtech’in İş Analistliği eğitimini başarıyla tamamlayarak Vizyoneks Bilgi Teknolojileri Anonim Şirketinde Analist olarak görevime başladım.Kısa bir süre önce sizler gibi Wtech Akademi öğrencisiydim. Şu an bulunduğum pozisyona kadar edindiğim tecrübelerimi  ve eğitim sürecini sizlerle paylaşmak isterim.",
        "2022-08-11",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_262_162247067960b4f017ae646.jpeg"),
    BlogsData(
        "Wtech Mezunlar Ağı Çalışmaları",
        "Teknolojide Kadın Derneği",
        "Wtecher’larımız  gönüllü olarak dahil oldukları sosyal sorumluluk projelerini gerçekleştirmektedir. Bunlar birisi Wtech Mezunlar Ağı’nın geliştirdiği ve koordinasyonunu yürüttüğü  “Bilgisayar Bilimi ve Kodlama Yaz Okulu” projemiz. Okul Destek Derneği ve Boğaziçi Üniversitesi Eğitim Teknolojileri Uygulama Araştırma Merkezi  (UYGAR) işbirliğiyle başarı ile tamamlandı.",
        "2022-07-11",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_298_16338663756162d287e50b8.jpeg"),
  ];
}
