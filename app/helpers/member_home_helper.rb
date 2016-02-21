module MemberHomeHelper
  def format_phone(user)
    "#{user.phone_number[0..2]}-#{user.phone_number[3..5]}-#{user.phone_number[6..9]}"
  end
end
