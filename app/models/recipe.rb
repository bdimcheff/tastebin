class Recipe
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :body

  referenced_in :user

  def body_html
    markdown.render(body)
  end

  def safe_body_html
    Loofah.scrub_fragment(body_html, :escape).to_s.html_safe
  end

  def markdown
    @__markdown ||= Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      :autolink => true)
  end
end

