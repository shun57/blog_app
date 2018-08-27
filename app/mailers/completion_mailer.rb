class CompletionMailer < ApplicationMailer
  def completion_mail(blog)
    @completion = blog
    @mail = blog.user.email
    mail to: "@mail",subject:"お問い合わせの確認メール"
  end
end
