import 'dart:html';

void main() {
   final btn = document.getElementById('#btn');
  
    btn.onClick
      .timeout(
       new Duration(seconds: 1),
       onTimeout: (sink) => sink.addError("You Lost!!!")
    )
    .listen(
      (event) {},
      onError: (err) => print(err)
    );
}

//HTML Part

//<button id = "btn">Click Me</button>