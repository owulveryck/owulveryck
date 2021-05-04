\book {
  #(set! paper-alist (cons '("reMarkable2" . (cons (* 7 in) (* 9 in))) paper-alist))
  \paper {
    print-all-headers = ##t
    top-margin = 20
    bottom-margin = 20
    #(set-paper-size "reMarkable2")
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
        \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'page:page-number-string
        }
    }
    evenFooterMarkup = \oddFooterMarkup
  }
  \header {
    title = "DEUX NOCTURNES"
    subtitle = "dédiée à Mademoiselle Laure Duperré"
    % Do not display the tagline for this book
    tagline = ##f
  }
  \markup { \vspace #1 }
    \layout { ragged-right = ##f }

  \score {
    \new PianoStaff <<
      \new Staff \relative c''  { 
        \tempo "Lento"
        \clef treble
        \key c \minor
          r4_\markup{\italic \normalsize "mezza voce"} 
          g'-3 r aes
          r8 ( g4-5 g8~g16 ees f ees d ees f g 
          c,4 c8.-3 c16-4 d4 c8. aes16 )

      }
      \new Staff { 
          \clef "bass" 
          \key c \minor
          <c, c>4\sustainOn\staccato <g ees' g'>\sustainOff\staccato
          <c, c>\sustainOn\staccato <aes ees' aes'>\sustainOff\staccato
          <b,, b,>4\sustainOn\staccato <g d' f' g'>\sustainOff\staccato
          <c, c>4\sustainOn\staccato <g c' ees' g'>\sustainOff\staccato
          <aes,, aes,>4\sustainOn\staccato <c' ees' aes'>\sustainOff\staccato
          <f,, f,>4\sustainOn\staccato <f c' d'>\sustainOff\staccato
      }
    >>
      \layout {
    #(layout-set-staff-size 24)

    \context {
      \Score
      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #20
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/64)
    }
  }
    \header {
      title = "I"
      opus = "Opus 48 Nr. 1"
      % Do not display the subtitle for this score
      subtitle = "Komponiert 1841"
    }
  }
}