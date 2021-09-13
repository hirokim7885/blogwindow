require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  
  test "welcome" do
    email = UserMailer.with(to: "hirokim7885@gmail.com", family_name: "天海").welcome

    # メールが送信キューに追加されるかどうかをテスト
    assert_emails(1){ email.deliver_now }
    # 送信されたメールを確認するテスト
    assert_equal["minatonoen@gmail.com"], email.from
    assert_equal["hirokim7885@gmail.com"], email.to
    assert_equal "登録が完了致しました。”, email.subject
    assert_includes email.text_part.decoded, "天海"
    assert_includes email.html_part.dedoded, "天海”
  end

end
