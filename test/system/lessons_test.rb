require "application_system_test_case"

class LessonsTest < ApplicationSystemTestCase
  setup do
    @lesson = lessons(:one)
  end

  test "visiting the index" do
    visit lessons_url
    assert_selector "h1", text: "Lessons"
  end

  test "creating a Lesson" do
    visit lessons_url
    click_on "New Lesson"

    fill_in "Assess Content", with: @lesson.assess_content
    fill_in "Assess Time", with: @lesson.assess_time
    fill_in "Diff Enrich", with: @lesson.diff_enrich
    fill_in "Diff Support", with: @lesson.diff_support
    fill_in "Intro Content", with: @lesson.intro_content
    fill_in "Intro Time", with: @lesson.intro_time
    fill_in "Last Lesson Content", with: @lesson.last_lesson_content
    fill_in "Last Lesson Time", with: @lesson.last_lesson_time
    fill_in "Object", with: @lesson.object
    fill_in "Practice Content", with: @lesson.practice_content
    fill_in "Practice Time", with: @lesson.practice_time
    fill_in "Review Content", with: @lesson.review_content
    fill_in "Review Time", with: @lesson.review_time
    fill_in "Title Content", with: @lesson.title_content
    fill_in "Title Lesson", with: @lesson.title_lesson
    fill_in "Title Unit", with: @lesson.title_unit
    fill_in "Working Content", with: @lesson.working_content
    fill_in "Working Time", with: @lesson.working_time
    click_on "Create Lesson"

    assert_text "Lesson was successfully created"
    click_on "Back"
  end

  test "updating a Lesson" do
    visit lessons_url
    click_on "Edit", match: :first

    fill_in "Assess Content", with: @lesson.assess_content
    fill_in "Assess Time", with: @lesson.assess_time
    fill_in "Diff Enrich", with: @lesson.diff_enrich
    fill_in "Diff Support", with: @lesson.diff_support
    fill_in "Intro Content", with: @lesson.intro_content
    fill_in "Intro Time", with: @lesson.intro_time
    fill_in "Last Lesson Content", with: @lesson.last_lesson_content
    fill_in "Last Lesson Time", with: @lesson.last_lesson_time
    fill_in "Object", with: @lesson.object
    fill_in "Practice Content", with: @lesson.practice_content
    fill_in "Practice Time", with: @lesson.practice_time
    fill_in "Review Content", with: @lesson.review_content
    fill_in "Review Time", with: @lesson.review_time
    fill_in "Title Content", with: @lesson.title_content
    fill_in "Title Lesson", with: @lesson.title_lesson
    fill_in "Title Unit", with: @lesson.title_unit
    fill_in "Working Content", with: @lesson.working_content
    fill_in "Working Time", with: @lesson.working_time
    click_on "Update Lesson"

    assert_text "Lesson was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson" do
    visit lessons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson was successfully destroyed"
  end
end
