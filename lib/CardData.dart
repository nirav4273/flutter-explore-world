class Card{
  String title;
  String subtitle;
  String image;

}


class CardData extends Card{
  List<Card> cards = [];

  CardData(){
    Card c  = new Card();
    c.title = "India";
    c.subtitle = "dasd";
    c.image = "dasd";
  }
}
