\version "2.18.2"
\language "deutsch"
  

\include "TheHollowEarth_Flute.ly"
\include "TheHollowEarth_Clarinet.ly"
\include "TheHollowEarth_Trombone.ly"

\include "TheHollowEarth_Piano.ly"
\include "TheHollowEarth_Percussion.ly"
\include "TheHollowEarth_eGuitar.ly"

\include "TheHollowEarth_Violin.ly"
\include "TheHollowEarth_Viola.ly"
\include "TheHollowEarth_Cello.ly"
\include "TheHollowEarth_Contrabass.ly"

instrument = ""

\book {
  
  \include "TheHollowEarth_headerFlute.ly"
  \paper {
    #(set-paper-size "a3")
  line-width = 230\mm
  two-sided = ##t
  %inner-margin = 23\mm 
  %outer-margin = 25\mm 
  %ragged-right = ##f
  %ragged-last = ##f
  
  min-systems-per-page = #8
  max-systems-per-page = #10
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
%{
\new StaffGroup<<
%}
	  \new Staff \with {
		instrumentName = "Flute" 
		shortInstrumentName = #"Fl."
		midiInstrument = #"flute"
	  }{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Flute }
%{
	  \new Staff \with {
		instrumentName = #"Clarinet"
		shortInstrumentName = #"Cl."
		midiInstrument = "clarinet"
	  }{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \transpose b c'
    \TheHollowEarth_Clarinet }
	  %{
	  \new Staff \with {
		instrumentName = #"Trombone"
		shortInstrumentName = #"Trb."
		midiInstrument = "trombone"
	  }{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Trombone }
%{
>> % StaffGroup
\new StaffGroup <<

  \new Staff \with {
		instrumentName = #"Crotales"
		shortInstrumentName = #"Crot."
		midiInstrument = #"glockenspiel"
		  }
		{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Crotales }
     \new Staff \with {
		instrumentName = #"Vibes"
		shortInstrumentName = #"Vibes."
		midiInstrument = #"vibraphone"
		  }
		{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Vibes }
%{>>% Staff Group Percussion

	  \new PianoStaff = "Piano"
	 \with {
		instrumentName = #"Piano"
		shortInstrumentName = #"Pno."
		midiInstrument = #"acoustic grand"
	  }<<
          \context Staff = "upper" 
            \context Voice = TheHollowEarth_PianoRight 
            { \tempo 4 = 55 
            \accidentalStyle modern-cautionary 
            \TheHollowEarth_PianoRight }
          \context Staff = "lower" 
            \context Voice = TheHollowEarth_PianoLeft  
            { \tempo 4 = 55 
            \accidentalStyle modern-cautionary 
            \TheHollowEarth_PianoLeft }
          >>
          
          \new StaffGroup << %%Strings
            \new Staff \with {
		instrumentName = #"eGuitar"
		shortInstrumentName = #"eGuit."
		midiInstrument = #"overdriven guitar"
		  }
		{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \transpose c c'
    \TheHollowEarth_eGuitar }

            \new Staff \with {
		instrumentName = #"Violin"
		shortInstrumentName = #"Vln."
		midiInstrument = #"violin"
		  }
		{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Violin }
		%{
	    \new Staff \with {
		instrumentName = #"Viola"
		shortInstrumentName = #"Vla."
		midiInstrument = #"viola"
		  }
		{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Viola }
%{
          \new Staff \with {
		instrumentName = #"Cello"
		shortInstrumentName = #"Vlc."
		midiInstrument = #"cello"
		  }
		{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Cello }


	  \new Staff \with {
		instrumentName = #"Contrabass"
		shortInstrumentName = #"Cb."
		midiInstrument = #"contrabass"
		  } 
		{\tempo 4 = 55 
    \accidentalStyle modern-cautionary 
    \TheHollowEarth_Contrabass }
        %  >>%%Staffgroup Strings
%}	 
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
	  \tempo 4 = 55} 
                    }
  }
   
  
  