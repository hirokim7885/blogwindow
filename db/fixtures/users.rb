User.seed do |s|
  s.id = 3
  s.email = "jiro@sample210828"
  s.password = "sample210828"
  s.family_name = "佐藤"
  s.given_name = "二郎"
  s.family_name_kana = "さとう"
  s.given_name_kana = "じろう"
  s.admin = 0
  s.suspended = 1
end