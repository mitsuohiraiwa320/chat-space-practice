class Groups <ActivRecord::Base
  has_many :groups_users
  has_many :users, through: groups_users
  has_many :messages
end