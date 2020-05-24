  \version "2.18.2"
  \language "deutsch"
  
 
 \include "TheHollowEarth_Flute.ly"
 \include "TheHollowEarth_Clarinet.ly"
 \include "TheHollowEarth_Trombone.ly"

 \include "TheHollowEarth_eGuitar.ly"
  \include "TheHollowEarth_Piano.ly"
  \include "TheHollowEarth_Percussion.ly"
   

instrument = ""
\book {
  
  \include "TheHollowEarth_header.ly"
  \paper {
    #(set-paper-size "a3")
  line-width = 230\mm
  two-sided = ##t
  %inner-margin = 23\mm 
  %outer-margin = 25\mm 
  %ragged-right = ##f
  %ragged-last = ##f
  
  min-systems-per-page = #3
  max-systems-per-page = #12
  system-system-spacing.padding = #15  %fit staves closer together
  system-system-spacing.stretchability = #15  %how flexible the spacing is


 myStaffSize = #20
  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans"
                          "Luxi Mono"
                          
                           (/ myStaffSize 20))) 
  
  }
  
  \score {
<<
\new StaffGroup << % Winds

\new Staff \with {
  instrumentName = #"Trombone"
  shortInstrumentName = "Trb."
  midiInstrument = #"trombone"
}
{
  \tempo 4 = 50
  \accidentalStyle modern-cautionary
  \TheHollowEarth_Trombone
}

>> % Staff Group Winds
\new StaffGroup << % Percussion

  \new Staff \with {
		instrumentName = #"Crotales"
		shortInstrumentName = #"Crot."
		midiInstrument = #"glockenspiel"
		  }
		{\tempo 4 = 50 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Crotales }

     \new Staff \with {
		instrumentName = #"Vibes"
		shortInstrumentName = #"Vibes."
		midiInstrument = #"vibraphone"
		  }
		{\tempo 4 = 50
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Vibes }
>>% Staff Group Percussion

\new StaffGroup<<

\new TabStaff \with {
instrumentName = \markup{ \column  { \line{voicings} \line{for reference} \line{score below} } }
		shortInstrumentName = #""
		midiInstrument = #"guitar fret noise"
		  }
		{
     \TheHollowEarth_eGuitar
}


\new Staff \with {
  instrumentName = #"eGuitar"
  shortInstrumentName = "eGuit."
  midiInstrument = #"overdriven guitar"
}
{
  \tempo 4 = 50
  \accidentalStyle modern-cautionary
  \TheHollowEarth_eGuitar
}
	 
  >> % Staff Group eGuit

>>%Score
  
	  

	\header {piece = ""}
	
	
	\layout {
	  
	   indent = 1\cm
           % Increase the size of the bar number by 2
           \override Score.BarNumber.font-size = #2
        
           \set Score.markFormatter = #format-mark-box-alphabet
           \override Score.RehearsalMark.font-size = #5 
           \set Staff.barAlways = ##t
           \set Staff.defaultBarType = "" 
           
           \context {
                     \Score
                     \RemoveEmptyStaves
                    }
  
           \context {
                     \Staff
                    \RemoveEmptyStaves

     % To use the setting globally, uncomment the following line:

     \override VerticalAxisGroup #'remove-first = ##t
                    }
          
                
	        }
	        
	
	\midi {  
	  \context {                         %
          \Staff                             %
          \remove "Staff_performer"          % Creating single
          }                                  % midi channel 
          \context {                        % for each 
          \Voice                            % voice
          \consists "Staff_performer"      %  
                   }
	  \tempo 4 = 100} 
                    }
  }
   
  
  