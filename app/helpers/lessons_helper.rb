module LessonsHelper
  def grades_for_select
    Grade.all.collect { |g| [g.name, g.id] }
  end
  def subjects_for_select
    Subject.all.collect { |s| [s.name, s.id]}
  end
end
