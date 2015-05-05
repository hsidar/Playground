#the problem

#<% blog.tags.each do |tag, articles| %>
#<li><%= link_to "#{tag} (#{articles.size})",  tag_path(tag) %></li>
#<% end %>

# variables referred to throughout the process

@tag_link_template = uri_template blog_controller.options.taglink

options.taglink = File.join(options.prefix, options.taglink)

# below lines are commented out/disabled in config.rb

blog.taglink = "tags/{tag}.html"
blog.prefix = "blog"

###

# the called method from tag_path(tag) in the problem

def tag_path(tag, blog_name=nil)
  build_url blog_controller(blog_name).tag_pages.link(tag)
end

# the link method referred to in the tag_pages.link(tag) above

def link(tag)
  apply_uri_template @tag_link_template, tag: safe_parameterize(tag)
end

# The apply_uri_template method called above

def apply_uri_template(template, data)
  ::Middleman::Util.normalize_path Addressable::URI.unencode(template.expand(data)).to_s
end

# The build_url method called in the tag_pages.link at the beginning

def build_url(path)
  sitemap.find_resource_by_path(path).try(:url)
end

# The uri_template called from the @tag_link_template variableo

def uri_template(tmpl_src)
  # Support the RFC6470 templates directly if people use them
  if tmpl_src.include?(':')
    tmpl_src = tmpl_src.gsub(/:([A-Za-z0-9]+)/, '{\1}')
  end
  
  # the \1 seems to be a reg-ex back reference from http://www.regular-expressions.info/backref.html