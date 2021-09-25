class Tabs{
  String tabtitle;
  int tabindex;

  Tabs({required this.tabindex,required this.tabtitle});
  static List<Tabs>tab=[new Tabs(tabindex: 0,tabtitle:'ON GOING'),
  new Tabs(tabindex: 1,tabtitle:'HISTORY'),
  new Tabs(tabindex: 2,tabtitle:'DRAFT'),];

  }
