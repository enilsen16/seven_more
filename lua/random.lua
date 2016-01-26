-- A random part of canon speed up

song = require 'notation'

song.set_tempo(80)

song.part{
   Fs4ed,           Fs5s,
   Fs5s, G5s, Fs5s, E5s,
   D5ed,            D5s,
   D5s,  E5s, D5s,  Cs5s,
   B4q,
   D5q,
   D5s,  C5s, B4s,  C5s,
   A6q
}

song.go()
