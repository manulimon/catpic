# Catpic

Catpic on sivu, jonne jokainen käyttäjä voi lisätä kissojaan, niiden kuvia sekä tehdä kuvista postauksia. Kirjautuminen on toteutettu sessioiden avulla. Postaukset näkyvät listauksena Posts-otsikon alla. Yksittäiset kuvat näkyvät kuvakarusellina sovelluksen etusivulla.

## Käyttöohje: 
Käyttäjäksi voi rekisteröityä sign up-linkistä. Tämän jälkeen käyttäjä voi kirjautua sisään tunnuksillaan ja lisätä kuvia ja kissoja ylävalikon Create-menusta. Kuvat lisätään antamalla jo olemassaolevan kuvan url. Kun kuvia on lisätty, käyttäjä voi tehdä siihen liittyvän postauksen johon voi liittää laajemman tekstin. Kaikkia postauksia voi selata navigaatiopalkin Posts-linkin kautta. Käyttäjä voi myös muokata ja poistaa omia kissojaan, kuviaan sekä postauksiaan.

## Yuml-kaavio: 

![Classdiagram](https://dl.dropboxusercontent.com/u/19373621/luokkakaavio.png)

Heroku: [http://catpic.herokuapp.com/](http://catpic.herokuapp.com/)

Travis: [![Build Status](https://travis-ci.org/manulimon/catpic.png)](https://travis-ci.org/manulimon/catpic)

## Testaus

rspec-testit testaavat että modelien luonti onnistuu/epäonnistuu ilman olennaisia parametreja.
Sivuilla on myös muutama capybaratesti websivujen toiminnoille.

## Muuta

Mahdollisia laajennuksia: Tarkoituksena olisi ollut, että käyttäjät olisivat voineet myös "tagata" kissojaan kuviin niin, että kuvia olisi voinut hakea tietyn kissan perusteella. Tarkoituksena olisi myös saada kuvia lisättyä api-integraation (esim. flickr) avulla.