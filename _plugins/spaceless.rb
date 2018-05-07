module Jekyll
  class Spaceless < Liquid::Block

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      text = super.to_s
      lines = text.split("\n").map { |line| line.strip }.reject! { |line| line.empty? }
      lines.join("\n") if lines
    end

  end
end

Liquid::Template.register_tag('spaceless', Jekyll::Spaceless)
