class TemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :content
  has_one :user
end
