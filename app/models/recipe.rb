class Recipe
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :body

  attr_accessible :name, :body

  belongs_to :user

  scope :recent_first, order_by(:updated_at.desc)

  def body_html
    markdown.render(body)
  end

  def safe_body_html
    Loofah.scrub_fragment(body_html, :escape).to_s.html_safe
  end

  def description
    safe_body_html
  end

  def markdown
    @__markdown ||= Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      :autolink => true)
  end
end

