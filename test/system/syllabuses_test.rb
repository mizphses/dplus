require "application_system_test_case"

class SyllabusesTest < ApplicationSystemTestCase
  setup do
    @syllabus = syllabuses(:one)
  end

  test "visiting the index" do
    visit syllabuses_url
    assert_selector "h1", text: "Syllabuses"
  end

  test "creating a Syllabus" do
    visit syllabuses_url
    click_on "New Syllabus"

    fill_in "Activelearning content", with: @syllabus.activelearning_content
    fill_in "Activelearning howto", with: @syllabus.activelearning_howto
    fill_in "Comment", with: @syllabus.comment
    fill_in "Condition", with: @syllabus.condition
    fill_in "Contents", with: @syllabus.contents
    fill_in "Day", with: @syllabus.day
    fill_in "Degree", with: @syllabus.degree
    fill_in "Evaluation", with: @syllabus.evaluation
    fill_in "Evaluation note", with: @syllabus.evaluation_note
    check "Experience" if @syllabus.experience
    fill_in "Experience contents", with: @syllabus.experience_contents
    fill_in "Experience reduction", with: @syllabus.experience_reduction
    fill_in "Faculty", with: @syllabus.faculty
    fill_in "Feedback", with: @syllabus.feedback
    fill_in "Feedback note", with: @syllabus.feedback_note
    fill_in "Goal", with: @syllabus.goal
    fill_in "Grade", with: @syllabus.grade
    fill_in "Lang", with: @syllabus.lang
    fill_in "Note", with: @syllabus.note
    fill_in "Outofclass content", with: @syllabus.outofclass_content
    fill_in "Outofclass tile", with: @syllabus.outofclass_tile
    fill_in "Overview", with: @syllabus.overview
    fill_in "Purpose", with: @syllabus.purpose
    fill_in "Teacher", with: @syllabus.teacher
    fill_in "Term", with: @syllabus.term
    fill_in "Textbook", with: @syllabus.textbook
    fill_in "Time", with: @syllabus.time
    fill_in "Title", with: @syllabus.title
    fill_in "Url", with: @syllabus.url
    fill_in "Year", with: @syllabus.year
    click_on "Create Syllabus"

    assert_text "Syllabus was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus" do
    visit syllabuses_url
    click_on "Edit", match: :first

    fill_in "Activelearning content", with: @syllabus.activelearning_content
    fill_in "Activelearning howto", with: @syllabus.activelearning_howto
    fill_in "Comment", with: @syllabus.comment
    fill_in "Condition", with: @syllabus.condition
    fill_in "Contents", with: @syllabus.contents
    fill_in "Day", with: @syllabus.day
    fill_in "Degree", with: @syllabus.degree
    fill_in "Evaluation", with: @syllabus.evaluation
    fill_in "Evaluation note", with: @syllabus.evaluation_note
    check "Experience" if @syllabus.experience
    fill_in "Experience contents", with: @syllabus.experience_contents
    fill_in "Experience reduction", with: @syllabus.experience_reduction
    fill_in "Faculty", with: @syllabus.faculty
    fill_in "Feedback", with: @syllabus.feedback
    fill_in "Feedback note", with: @syllabus.feedback_note
    fill_in "Goal", with: @syllabus.goal
    fill_in "Grade", with: @syllabus.grade
    fill_in "Lang", with: @syllabus.lang
    fill_in "Note", with: @syllabus.note
    fill_in "Outofclass content", with: @syllabus.outofclass_content
    fill_in "Outofclass tile", with: @syllabus.outofclass_tile
    fill_in "Overview", with: @syllabus.overview
    fill_in "Purpose", with: @syllabus.purpose
    fill_in "Teacher", with: @syllabus.teacher
    fill_in "Term", with: @syllabus.term
    fill_in "Textbook", with: @syllabus.textbook
    fill_in "Time", with: @syllabus.time
    fill_in "Title", with: @syllabus.title
    fill_in "Url", with: @syllabus.url
    fill_in "Year", with: @syllabus.year
    click_on "Update Syllabus"

    assert_text "Syllabus was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus" do
    visit syllabuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus was successfully destroyed"
  end
end
