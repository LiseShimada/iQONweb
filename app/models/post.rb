class Post < ActiveRecord::Base
	belongs_to :user
	mount_uploader :picture, PictureUploader
	has_and_belongs_to_many :tags

	accepts_nested_attributes_for :tags, :reject_if => :tag_invalid

	before_save :fix_tags

	def tag_invalid(attributed)
		attributed['name'].empty?
	end

	private
	def fix_tags
		return if tags.nil?
		tag_list = []
		tags.each do |t|
			tag_list << t
		end
		tags.clear
		tag_list.each do |t|
			if t.id.nil?
				tag = Tag.find_by(name: t.name)
				if tag.nil?
					tags.build(name: t.name)
				else
					tags << tag unless self.tags.include?(tag)
				end
			else
				tags << t
			end
		end
	end
end
