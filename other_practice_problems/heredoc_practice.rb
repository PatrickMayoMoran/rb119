test = 
<<~SQUIGGLY_HEREDOC
        This is a test of indenting my heredoc
          Above line should flush left,
          whereas these should be 1 in
              "A special quote"
          Let's see!
        Here endeth the lesson
  SQUIGGLY_HEREDOC

puts test
