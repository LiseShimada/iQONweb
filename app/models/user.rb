class User < ActiveRecord::Base
	has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

#テストここから
has_many :evaluations, class_name: "ReputationSystem::Evaluation", as: :source
 def liked?(post)
    evaluations.where(target_type: post.class, reputation_name: :likes, target_id: post.id).present?
  end
#テストここまで

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
