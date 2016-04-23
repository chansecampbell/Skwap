class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :identities, dependent: :destroy
  has_many :skills
  has_many :connections
  has_many :connections_as_sender, foreign_key: "sender_id", class_name: "Connection"   # Requests that you make to different people
  has_many :connections_as_receiver, foreign_key: "receiver_id", class_name: "Connection"


end
