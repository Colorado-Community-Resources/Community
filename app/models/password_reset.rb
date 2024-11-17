class PasswordReset < ApplicationRecord
  belongs_to :user, foreign_key: :user_id, primary_key: :username

  def generate_reset_digest
    token = SecureRandom.urlsafe_base64
    self.reset_digest = User.digest(token)  # Hash the token
    self.reset_sent_at = Time.zone.now
    save!
    token  # Return the raw token so it can be used in the email
  end

  # Check if the reset request has expired
  def expired?
    reset_sent_at < 1.hour.ago
  end
end
