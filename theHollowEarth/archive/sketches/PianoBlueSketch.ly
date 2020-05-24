\version "2.18.2"
\language "deutsch"


THERightOne = { \stemUp \repeat unfold 2 {
                                   r4 <des'' f''>16[ <c'' e''>8.] r2 |
                                   <des'' f''>16[ <c'' e''>8.] r2 <des'' f''>16[ <c'' e''>8.] |
                                   r2 <des'' f''>16[ <c'' e''>8.] r4 | 
                                   }
}

THERightTwo = { \stemDown \repeat unfold 2{
                                   r4 b'4 r2 | 
                                   b'4 r2 b'4 |
                                   r2 b'4 r4 | 
                                   }
            }
            
TheHollowEarth_PianoRight = { << \THERightOne \\ \THERightTwo  >> }

\score{
  \new PianoStaff = "Piano"
	 \with {
		instrumentName = #"Piano"
		shortInstrumentName = #"Pno."
		midiInstrument = #"acoustic grand"
	  }<<
          \context Staff = "upper" 
            \context Voice = TheHollowEarth_PianoRight 
            { \tempo 4 = 50
            \accidentalStyle modern-cautionary 
            \TheHollowEarth_PianoRight
            }
            
            
          \context Staff = "lower" 
            \context Voice = TheHollowEarth_PianoLeft  
            { \tempo 4 = 50
            \accidentalStyle modern-cautionary 
            \clef bass
            r8 r16 b,16 r16 b16[ f8] r4 r8 r16 b,16 | 
            r16 b16[ f8] r4 r8 r16 b,16 r16 b,16[ f8] | 
            r4 r8 r16 b, r16 b,16[ f8] r4 |
            r8 r16 f,16 r16 b,16[ b8] r4 r8 r16 f,16 | 
            r16 b,16[ b8] r4 r8 r16 b16 r16 b,16[ b,8] | 
            r4 r8 r16 b r16 b,16[ b,8] r4 | }
          >>

}