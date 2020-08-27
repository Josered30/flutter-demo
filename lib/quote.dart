class Quote {
  String text;
  String author;

  Quote({this.text, this.author});

  Quote.empty(){
    this.text = '';
    this.author = '';
  }
}