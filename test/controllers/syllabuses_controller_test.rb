require "test_helper"

class SyllabusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus = syllabuses(:one)
  end

  test "should get index" do
    get syllabuses_url
    assert_response :success
  end

  test "should get new" do
    get new_syllabus_url
    assert_response :success
  end

  test "should create syllabus" do
    assert_difference('Syllabus.count') do
      post syllabuses_url, params: { syllabus: { activelearning_content: @syllabus.activelearning_content, activelearning_howto: @syllabus.activelearning_howto, comment: @syllabus.comment, condition: @syllabus.condition, contents: @syllabus.contents, day: @syllabus.day, degree: @syllabus.degree, evaluation: @syllabus.evaluation, evaluation_note: @syllabus.evaluation_note, experience: @syllabus.experience, experience_contents: @syllabus.experience_contents, experience_reduction: @syllabus.experience_reduction, faculty: @syllabus.faculty, feedback: @syllabus.feedback, feedback_note: @syllabus.feedback_note, goal: @syllabus.goal, grade: @syllabus.grade, lang: @syllabus.lang, note: @syllabus.note, outofclass_content: @syllabus.outofclass_content, outofclass_time: @syllabus.outofclass_time, overview: @syllabus.overview, purpose: @syllabus.purpose, teacher: @syllabus.teacher, term: @syllabus.term, textbook: @syllabus.textbook, title: @syllabus.title, url: @syllabus.url, year: @syllabus.year } }
    end

    assert_redirected_to syllabus_url(Syllabus.last)
  end

  test "should show syllabus" do
    get syllabus_url(@syllabus)
    assert_response :success
  end

  test "should get edit" do
    get edit_syllabus_url(@syllabus)
    assert_response :success
  end

  test "should update syllabus" do
    patch syllabus_url(@syllabus), params: { syllabus: { activelearning_content: @syllabus.activelearning_content, activelearning_howto: @syllabus.activelearning_howto, comment: @syllabus.comment, condition: @syllabus.condition, contents: @syllabus.contents, day: @syllabus.day, degree: @syllabus.degree, evaluation: @syllabus.evaluation, evaluation_note: @syllabus.evaluation_note, experience: @syllabus.experience, experience_contents: @syllabus.experience_contents, experience_reduction: @syllabus.experience_reduction, faculty: @syllabus.faculty, feedback: @syllabus.feedback, feedback_note: @syllabus.feedback_note, goal: @syllabus.goal, grade: @syllabus.grade, lang: @syllabus.lang, note: @syllabus.note, outofclass_content: @syllabus.outofclass_content, outofclass_time: @syllabus.outofclass_time, overview: @syllabus.overview, purpose: @syllabus.purpose, teacher: @syllabus.teacher, term: @syllabus.term, textbook: @syllabus.textbook, title: @syllabus.title, url: @syllabus.url, year: @syllabus.year } }
    assert_redirected_to syllabus_url(@syllabus)
  end

  test "should destroy syllabus" do
    assert_difference('Syllabus.count', -1) do
      delete syllabus_url(@syllabus)
    end

    assert_redirected_to syllabuses_url
  end
end
