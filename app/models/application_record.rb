class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  before_save :downcase_email
  before_save :downcase_username, if: :new_record?

  private

  def downcase_username
    self.username = username.downcase if respond_to?(:username) && username.present?
  end

  def downcase_email
    self.email = email.downcase if respond_to?(:email) && email.present?
  end
end
