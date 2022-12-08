# nrpnBridge
midi nrpn and rpn support in modern sequencers is very(!) poor - let's fix that

# Problem specification

Many popular MIDI sequencers provide graphical views of parameter data. NRPN and RPN support is very poor.
I've been waiting over 20 years for some software sequencers to improve NRPN support. They have not. These tools are my workaround.

The [CC example file](example_MIDI/example_CC1_2.mid) contains a four bar sequence with two CC parameters rising and falling.
Apple Logic, Cockos Reaper, Steinberg Cubase, Ableton Live, Avid Protools display the sequence like this. This is no problem.

The [NRPN example file](example_MIDI/example_NRPN1_2.mid) contains a four bar sequence with two NRPN parameters rising and falling.
Apple Logic, Cockos Reaper, Steinberg Cubase, Ableton Live, Avid Protools display the sequence like this. **This is very much a problem!**

# How to use the tools

The tools provide a bridge to reformat NRPN for easier editing.

1. If you do not already have it, download Cycling74 MaxMSP (the free demo is sufficient to use these tools) 
2. Download and open the "main.maxpat" file to start the bridge.
3. Select your MIDI input and output in the bridge.
4. Select the bridge input and output in your sequencer.
5. Enjoy!

Apple Logic, Cockos Reaper, Steinberg Cubase, Ableton Live, Avid Protools now display the sequence like this. **Yay!** 

# Background context

The MIDI protocol offers three common mechanisms for controlling MIDI hardware and software:
1. Continuous Controllers (CC)
    1. Channel message, indexed by numbers 0-127
    2. Manufactuers assign meaning to each numbered control
    3. Common performance controls include MODWHEEL=CC1, EXPRESSION=CC11, SUSTAIN_PEDAL=CC64
  
2. Registered Parameter Numbers, and Non Registered Parameter Numbers (RPN and NRPN)
    1. Messaging system built "on top of" CC system (see below)
    2. Channel message(s), indexed by numbers 0-16383
    3. Manufacturers assign meaning to each numbered control 
    4. RPNs are pay-to-play, Midi Manufacturers Association maintains common register 
    5. NRPNs are free-to-play, but you must dig (in manuals) to find the info

# Techncical information

NRPN and RPN data and value is 12 bytes (4 x 3byte) 

099 MSB CTL
098 LSB  CTL 
006 MSB DAT 
038 LSB  DAT
