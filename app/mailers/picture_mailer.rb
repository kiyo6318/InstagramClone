class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture

    mail to:"kiyonari6318@yahoo.co.jp",subject:"お問い合わせの確認メール"
  end
end
