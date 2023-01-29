import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImageUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt});
  static List<Article> article = [
    Article(
        id: '1',
        title:
            'Mikayıl Cabbarov: “2022-ci ildə gənc sahibkarlara 14 milyon manat güzəştli kredit ayrılıb',
        subtitle:
            "Xatırladaq ki, “Zirə”nin baş məşqçisi Rəşad Sadıqov bir neçə gün əvvəl açıqlamasında bildirmişdi ki, Geryeni heyətə cəlb etmək istəyirlər. Geryenin son klubu isə “Olimpiakos” (Kipr) olub",
        body:
            'Biznes sahəsini təmsil edən qadınların və gənc sahibkarların fəaliyyətinin dəstəklənməsi, maliyyə əlçatanlığının artırılması istiqamətində dövlətin maliyyə mexanizmləri xüsusi rol oynayır',
        author: 'Elmar Jafarli',
        authorImageUrl:
            'data:image/jpeg;base64,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',
        category: 'Business news',
        views: 1204,
        imageUrl:
            'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjIvMDkvMDgvMTQvNDUvMjIvZTA1NDBmZDEtYjljMS00ZTRiLWE3OWItNGFmOGVmNzUyMmQxL2J5N1VrMGY0SmtkWmZ2VnZ6bHlId242cnR3cEd6Q1JjNm5nVVp1V0cuanBnIl1d?sha=3d7118650504c47b',
        createdAt: DateTime.now().subtract(const Duration(hours: 5))),
    Article(
        id: '2',
        title:
            'İsveç Türkiyə ilə NATO-ya üzv olmaq barədə razılığa gələcəyinə ümid edir',
        subtitle:
            'Xatırladaq ki, “Zirə”nin baş məşqçisi Rəşad Sadıqov bir neçə gün əvvəl açıqlamasında bildirmişdi ki, Geryeni heyətə cəlb etmək istəyirlər. Geryenin son klubu isə “Olimpiakos” (Kipr) olub',
        body:
            'Yanvarın 28-də İsveçin xarici işlər naziri Tobias Billstrem ölkəsinin NATO-ya daxil olması ilə bağlı iyulda Türkiyə ilə razılığa gələ biləcəyinə ümid etdiyini bildirib',
        author: 'Elmar Jafarli',
        authorImageUrl:
            'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjMvMDEvMjcvMTYvMDcvMTEvNTNiN2ZkMmMtMmIwMi00MDhlLThmOTYtZWU1OThiYTZhMGYzL21qTW4xVlFiTFJqRUVBdzNJRnRIdGh6Q0ZCQ1R6ak5GOHRsY2FSTEsuanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjYyMHg0MTMjIl1d?sha=5d0b99398348ae49',
        category: 'Politics news',
        views: 1204,
        imageUrl:
            'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjMvMDEvMjgvMjAvMDAvMjYvNmE1MmVlM2ItOWY3Mi00ZmI1LThlMmQtMzIwNjc5ZGIwM2I0LzMyNTA5NzExOF82NTE3ODM2NDMzODE1NTlfNjI2ODA2MTczNDU5NzQ3Mzg5Ml9uLmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI2MjB4NDEzIyJdXQ?sha=696b79b303c21daf',
        createdAt: DateTime.now().subtract(const Duration(hours: 5))),
    Article(
        id: '3',
        title:
            'Netanyahu: “İsrailin terror aktına cavabı güclü, sürətli və dəqiq olacaq”',
        subtitle:
            'İsrailin Baş naziri Benyamin Netanyahu Yerusəlimdə yeddi nəfərin ölümü ilə nəticələnən fələstinli yaraqlıların hücumuna cavabının “güclü, sürətli və dəqiq” olacağını söyləyib'
            " O, bu barədə Təhlükəsizlik Şurasının toplantısında bildirib"
            ' Qeyd edək ki, sinaqoqda atışma fələstinli qrupların İsrailin İordan çayının qərb sahilindəki Cenin qaçqın düşərgəsindəki əməliyyatına cavab olub',
        body:
            'İsrailin Baş naziri Benyamin Netanyahu Yerusəlimdə yeddi nəfərin ölümü ilə nəticələnən fələstinli yaraqlıların hücumuna cavabının “güclü, sürətli və dəqiq” olacağını söyləyib'
            " O, bu barədə Təhlükəsizlik Şurasının toplantısında bildirib"
            ' Qeyd edək ki, sinaqoqda atışma fələstinli qrupların İsrailin İordan çayının qərb sahilindəki Cenin qaçqın düşərgəsindəki əməliyyatına cavab olub',
        author: 'Elmar Jafarli',
        authorImageUrl:
            'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjMvMDEvMjgvMjMvMzYvNDgvODExZjI4YWQtNTUwNy00YmQ5LWE3OTUtOTNhZDA2OTU5NTdjL2VKVV9Ca0lQSDc5NS5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQxMyMiXV0?sha=b1f93446c163e78a',
        category: 'Business news',
        views: 1204,
        imageUrl:
            'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjMvMDEvMjgvMjMvMzYvNDgvODExZjI4YWQtNTUwNy00YmQ5LWE3OTUtOTNhZDA2OTU5NTdjL2VKVV9Ca0lQSDc5NS5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQxMyMiXV0?sha=b1f93446c163e78a',
        createdAt: DateTime.now().subtract(const Duration(hours: 5))),
    Article(
        id: '4',
        title: 'ABŞ-də 85 avtomobil toqquşdu: Onlarla insan xəsarət aldı',
        subtitle: 'ABŞ-ın Viskonsin ştatının cənubunda yük maşınları da daxil olmaqla 85 avtomobilin toqquşması nəticəsində ən azı 21 nəfər xəsarət alıb'

         "Məlumata görə, Ceynsvil şəhərində əlverişsiz hava şəraiti və qar yağması səbəbindən baş verən qəzadan sonra böyük tıxac yaranıb"

          "Bildirilir ki, hadisə nəticəsində onlarla insan xəsarət alaraq yaxınlıqdakı xəstəxanalara çatdırılıb. Hazırda onların həyatları təhlükədə deyil.",
        body:
            'ABŞ-ın Viskonsin ştatının cənubunda yük maşınları da daxil olmaqla 85 avtomobilin toqquşması nəticəsində ən azı 21 nəfər xəsarət alıbr',
        author: 'Elmar Jafarli',
        authorImageUrl:
            'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjMvMDEvMjcvMTYvMDcvMTEvNTNiN2ZkMmMtMmIwMi00MDhlLThmOTYtZWU1OThiYTZhMGYzL21qTW4xVlFiTFJqRUVBdzNJRnRIdGh6Q0ZCQ1R6ak5GOHRsY2FSTEsuanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjYyMHg0MTMjIl1d?sha=5d0b99398348ae49',
        category: 'Politic news',
        views: 1204,
        imageUrl:
            'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjMvMDEvMjgvMTgvNDIvNDMvM2JlM2QzYjMtZjQ1NC00MWI1LWI3NGQtNTVjNGFkNDQ0ZTMwL2Ficy5KUEciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQxMyMiXV0?sha=90e962e73f3f90a3',
        createdAt: DateTime.now().subtract(const Duration(hours: 5))),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
