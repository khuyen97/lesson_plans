require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson = lessons(:one)
  end

  test "should get index" do
    get lessons_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_url
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post lessons_url, params: { lesson: { assess_content: @lesson.assess_content, assess_time: @lesson.assess_time, diff_enrich: @lesson.diff_enrich, diff_support: @lesson.diff_support, intro_content: @lesson.intro_content, intro_time: @lesson.intro_time, last_lesson_content: @lesson.last_lesson_content, last_lesson_time: @lesson.last_lesson_time, object: @lesson.object, practice_content: @lesson.practice_content, practice_time: @lesson.practice_time, review_content: @lesson.review_content, review_time: @lesson.review_time, title_content: @lesson.title_content, title_lesson: @lesson.title_lesson, title_unit: @lesson.title_unit, working_content: @lesson.working_content, working_time: @lesson.working_time } }
    end

    assert_redirected_to lesson_url(Lesson.last)
  end

  test "should show lesson" do
    get lesson_url(@lesson)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_url(@lesson)
    assert_response :success
  end

  test "should update lesson" do
    patch lesson_url(@lesson), params: { lesson: { assess_content: @lesson.assess_content, assess_time: @lesson.assess_time, diff_enrich: @lesson.diff_enrich, diff_support: @lesson.diff_support, intro_content: @lesson.intro_content, intro_time: @lesson.intro_time, last_lesson_content: @lesson.last_lesson_content, last_lesson_time: @lesson.last_lesson_time, object: @lesson.object, practice_content: @lesson.practice_content, practice_time: @lesson.practice_time, review_content: @lesson.review_content, review_time: @lesson.review_time, title_content: @lesson.title_content, title_lesson: @lesson.title_lesson, title_unit: @lesson.title_unit, working_content: @lesson.working_content, working_time: @lesson.working_time } }
    assert_redirected_to lesson_url(@lesson)
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete lesson_url(@lesson)
    end

    assert_redirected_to lessons_url
  end
end
