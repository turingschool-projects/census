class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :cohort, :image_url

  def image_url
    url = object.image.url
    root_url = instance_options[:root_url] || ""

    if !url.include?("http") && url.include?("missing.png")
      root_url + url
    else
      url
    end
  end
end