# Preview all emails at http://localhost:3000/rails/mailers/ad
class AdPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/ad/sold
  def sold
    AdMailer.sold
  end

end
