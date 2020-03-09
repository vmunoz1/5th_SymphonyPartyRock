PRA_pt1="C:/Users/valeria_munoz/Desktop/Second song/samples/Sample_PR_pt1.wav"
PRA_pt2="C:/Users/valeria_munoz/Desktop/Second song/samples/Sample_PR_pt2.wav"
PRA_pt3="C:/Users/valeria_munoz/Desktop/Second song/samples/Sample_PR_pt3.wav"
clear_Throat="C:/Users/valeria_munoz/Desktop/Second song/samples/Clearing Throat Male-SoundBible.com-37691700.wav"
record="C:/Users/valeria_munoz/Desktop/Second song/samples/record scratch.wav"
a="C:/Users/valeria_munoz/Desktop/Second song/samples/rand2.wav"
b="C:/Users/valeria_munoz/Desktop/Second song/samples/rand3.wav"
c="C:/Users/valeria_munoz/Desktop/Second song/samples/rand4.wav"
d="C:/Users/valeria_munoz/Desktop/Second song/samples/rand1.wav"
pt3o="C:/Users/valeria_munoz/Desktop/Second song/samples/pt3o.wav"
steps="C:/Users/valeria_munoz/Desktop/Second song/samples/walk.wav"


use_bpm 100
use_synth :prophet


define :s1_notes do |note1|
  3.times do
    play note1
    sleep 0.5
  end
end

define :short1 do
  play :d5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :f5
  sleep 0.5
end

define :short2 do
  play:g5
  play:d5
  play:g4
  sleep 0.333
end

define :fours do |note1, note2, note3, note4|
  play note1
  sleep 0.25
  play note2
  sleep 0.25
  play note3
  sleep 0.25
  play note4
  sleep 0.25
end

define :long do |n1, n2, n3|
  play n1
  sleep 0.25
  3.times do
    play n2
    play n3
    sleep 0.25
  end
end

#-------------------------Define Up Top----------------------------
sample steps, amp:5
sleep 7

sample clear_Throat, amp:3
sleep 3

s1_notes :g4

play :e4
sleep 2

s1_notes :f4

play :d4, release:3 #hold
sleep 3

s1_notes :g4

s1_notes :a4

s1_notes :e5

play :c5
sleep 2

4.times do
  play :g4
  sleep 0.25
end

s1_notes :a4

s1_notes :f5

play :d5, release:3
sleep 2

short1

play :e5
sleep 2
#-------------
short1

play :e5
sleep 2

play:d5
sleep 0.5

short2

short2

play:f5
play:d5
play:g4
sleep 0.333

play:e5
play:c5
play:g4
sleep 1

play:f4
play:c5
play:g4
sleep 1

play:c
play:a4
sleep 1

2.times do
  play:c
  play:a4
  sleep 0.5
end

x=1

live_loop :okay do
  play:f5, amp:x
  sleep 2
  x = x + 1
  if x == 4
    stop
  end
end
x=1

sleep 4
#---------

sample PRA_pt1, amp:3
sleep 106
sample record, amp:3
sample clear_Throat, amp:3
sleep 3

play:e5
play:g5
play:c6
sleep 0.25
3.times do
  play:e6
  sleep 0.25
end

fours:c6, :g5, :g5, :g5

fours:e5, :c5, :g4, :g4

fours:e4, :c4, :c4, :c4

play:f6
sleep 0.333
play:d6
sleep 0.333
play:d6
sleep 0.333

fours:b5, :g5, :f5, :f5

fours:d5, :b4, :g4, :f4

play:d4
sleep 0.25
play:b3
sleep 0.25
play:g3
play:c4
sleep 0.25
play:g3
play:c4
sleep 0.25

play:e5
play:e6
sleep 0.333
play:e5
play:e6
sleep 0.333
play:e5
play:e6
sleep 0.333

play:c5
long:c6, :a4, :a5

long:f5, :e4, :e5

long:c5, :a4, :a3

play:a3
play:e4
play:f4
sleep 1

play:g3
play:d4
play:g4
sleep 1
#--------Part 2 of song---------
sample=[a, b, c,d]
live_loop :Sounds do
  4.times do
    sleep 10
    x = rrand_i(0, 3)
    print x
    sample sample[x], amp:3
    sleep 20
  end
  stop
end

live_loop :pt2 do
  1.times do
    sample PRA_pt2, amp:3
  end
  stop
end
sleep 105
#--------Part 3 of song---------
sample pt3o, amp:3
