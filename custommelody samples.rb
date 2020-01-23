sampjon1 = "C:/Users/charles_nott/Desktop/melody practice/okay1.wav"
sampjon2 = "C:/Users/charles_nott/Desktop/melody practice/okay2.wav"
sampintro = "C:/Users/charles_nott/Desktop/melody practice/egypt intro.wav"
section2done = false;
use_synth_defaults amp: 15
define :drum2 do |n|
  sample sampjon1, amp: n
  sleep 0.5
  sample sampjon1, amp: n
  sleep 0.5
  sample sampjon1, amp: n
  sleep 0.5
  sample sampjon2, amp: n
  sleep 0.5
end

define :bassline2 do
  use_synth :chipbass
  play :f3
  sleep 0.25
  play :c3
  sleep 0.25
  play :eb3
  sleep 0.125
  play :e3
  sleep 0.25
  play :f3
  sleep 0.375
  play :c3
  sleep 0.25
  play :eb3
  sleep 0.25
  play :e3
  sleep 0.25
  
  play :f3
  sleep 0.25
  play :c3
  sleep 0.25
  play :eb3
  sleep 0.125
  play :e3
  sleep 0.25
  play :f3
  sleep 0.375
  play :eb3
  sleep 0.25
  play :f3
  sleep 0.25
  play :gb3
  sleep 0.25
end
define :melody2 do
  use_synth :chiplead
  play :f4, sustain: 2
  sleep 2
  play :af4, sustain: 0.75
  sleep 0.75
  play :c5, sustain: 0.75
  sleep 0.75
  play :f5, sustain: 0.5
  sleep 0.5
  play :g5, sustain: 3.25
  sleep 3.25
  
  play :ab5, sustain: 0.25
  sleep 0.25
  play :bb5, sustain: 0.25
  sleep 0.25
  play :b5, sustain: 0.25
  sleep 0.25
  play :c6, sustain: 0.375
  sleep 0.375
  play :cb6, sustain: 0.375
  sleep 0.375
  play :ab5, sustain: 0.5
  sleep 0.5
  play :f5, sustain: 0.25
  sleep 0.25
  play :c5, sustain: 0.25
  sleep 0.25
  play :c6, sustain: 0.25
  sleep 0.25
  play :cb6, sustain: 0.375
  sleep 0.375
  play :bb5, sustain: 0.375
  sleep 0.375
  play :ab5, sustain: 0.5
  sleep 0.5
  play :f5, sustain: 0.5
  sleep 0.5
  play :eb5, sustain: 0.25
  sleep 0.25
  play :d5, sustain: 3
  sleep 3.25
  
  play :f5, sustain: 0.125
  sleep 0.125
  play :eb5, sustain: 0.125
  sleep 0.125
  play :c5, sustain: 0.125
  sleep 0.125
  play :bb4, sustain: 0.125
  sleep 0.125
  play :eb5, sustain: 0.125
  sleep 0.125
  play :fb5, sustain: 0.125
  section2done = true
  sleep 0.125
end

sample sampintro
sleep 9
drum2 0.2
drum2 0.5
drum2 0.8
live_loop :drum do
  if section2done then
    stop
  end
  drum2 1
end
bassline2
bassline2
live_loop :bass do
  if section2done then
    stop
  end
  bassline2
end
melody2
play :f3
play :f4
play :f5