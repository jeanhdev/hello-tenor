require 'test_helper'

class CaseMailerTest < ActionMailer::TestCase
  test "create_confirmation" do
    mail = CaseMailer.create_confirmation
    assert_equal "Create confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hello", mail.body.encoded
  end

end
