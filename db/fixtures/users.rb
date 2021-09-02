User.seed do |s|
  s.id = 2
  s.email = "taro@sample111"
  s.password = "sample111"
  s.family_name = "山田"
  s.given_name = "太郎"
  s.family_name_kana = "やまだ"
  s.given_name_kana = "たろう"
  s.admin = 0
  s.suspended = 0
end