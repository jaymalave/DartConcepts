import 'dart:html';
import 'dart:async';

void main() {
   final input = querySelector('input');
   final div = querySelector('div');
  
   final validator = new StreamTransformer.fromHandlers(
         handleData: (inputValue, sink){
           if (inputValue.contains('@')){
             sink.add(inputValue);
           }else {
            sink.addError('Enter a valid email');
           }
         }
   );
  
   input.onInput
     .map((dynamic event) => event.target.value)
     .transform(validator)
     .listen(
       (inputValue) => div.innerHtml = '',
       onError: (err) => div.innerHtml = err
   );
}

//HTML Part
// <h4>Enter your E-mail</h4>
// <input/>
// <button></button>