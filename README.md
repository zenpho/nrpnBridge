# nrpnBridge
midi nrpn and rpn support in modern sequencers is very(!) poor - let's fix that

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

# Problem specification

Generally speaking hardware/software sequencers provide easily ediable graphical views of CCs, whilst NRPN and RPN support is very poor.

The example_CC1_64.mid file contain a four bar sequence for two CC parameters.
Apple Logic, Cockos Reaper, Steinberg Cubase, Ableton Live, Avid ProTools present editable views like this. This is no problem.

The example_NRPN1_2.mid file contains a four bar sequence for two NRPN parameters.
Apple Logic, Cockos Reaper, Steinberg Cubase, Ableton Live, Avid ProTools present ediable views like this. **This is certainly a problem!**

# Techncical information

NRPN and RPN data and value is 12 bytes (4 x 3byte) 

099 MSB CTL
098 LSB  CTL 
006 MSB DAT 
038 LSB  DAT
