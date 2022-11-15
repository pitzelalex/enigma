# **Enigma - Alex Pitzel**

## Self assessment

### Functionaliy 3/4

My enigma class successfully implements the encrypt and decrypt methods. It follows SRP and passes the encryption / decryption responsibilites to my Encrypter and Decrypter classes. Enigma is where the hash output of the encryption / decryption process is generated.

### Object Oriented Programming 4/4

I believe my project follows SRP well and implements the use of a module effectiely. I did not find that inheritance would be useful in this project. None of my classes modify each other and my module dries up 4 methods that would otherwise be duplicated between my encrypter and decrypter classes. This helps cut down on lines of code within each. 

### Ruby Conventions and Mechanics 3.5/4

All of my code is properly indented and follows ruby syntax (thanks Rubocop). My encrypt / decrypt methods are slightly longer than 10 lines, otherwise I belive this would be a 4/4. I used enumerables as I believe appropriate.

### Test Driven Development 4/4?

I have 100% coverage and I have used mocks / stubs to help ensure I didn't need to generate each and every class. Though I'm less confident in knowing when / if this was the appropriate time / usecase. I also am less confident in my ability to say that each method is tested at the unit / integration level, however I do belive that I havce accomplished that. 