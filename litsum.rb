class Litsum < Sinatra::Base
 
  configure do
    
    # Configure public directory
    set :public, File.join(File.dirname(__FILE__), 'public')

    # Configure HAML and SASS
    set :haml, { :format => :html5 }
    set :sass, { :style => :compressed } if ENV['RACK_ENV'] == 'production'
  end

  get '/' do
    @p = ""
    3.times do
      @p << "<p>" + paragraphs(3) + "</p>"
    end
    haml :index
  end

  get "/css/style.css" do
    content_type 'text/css'
    sass :"css/style"
  end

  private

  def load_source_lines
    source_file = "sources/beowulf-temp.txt"
    @f = @f || File.new(source_file, "r")
    @lines = @lines || @f.readlines
  end

  def paragraphs num
    lines = load_source_lines
    lines.sample(3).join("")
  end

end
