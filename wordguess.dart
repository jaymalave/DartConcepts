import 'dart:html';

void main() {
     final button = document.getElementById('#btn');
     final input = document.getElementById('#inp');
  
     button.onClick
       .take(4)
       .where((event) => input.value == 'banana')
       .listen(
        (event) => print('You Got It!'),
        onDone: () => print('Nope, Bad Guesses!')
     );  
}

// HTML Part
// <h4>Guess the word</h4>
// <input id = "inp"/>
// <button id = "btn">Check</button>