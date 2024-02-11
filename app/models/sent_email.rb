# == Schema Information
#
# Table name: sent_emails
#
#  id            :bigint           not null, primary key
#  from          :string
#  to            :text
#  subject       :string
#  bodyhtml      :text
#  sent_at       :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  business_name :string           not null
#
class SentEmail < ApplicationRecord
end
