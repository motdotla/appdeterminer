class App < ActiveRecord::Base
  CODE_404 = 404

  validates_uniqueness_of :name
  validates_presence_of :name
  validates_presence_of :url
  validates_format_of   :url, with: /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
  validate  :url_exists, on: :create

  private

  def url_exists
    return false if errors.messages.try(:[], :url).present?
    
    uri = URI.parse(url)
    req = Net::HTTP.new(uri.host, uri.port)
    req.use_ssl = true if url[0..4] == "https"
    res = req.request_head(uri.path.empty? ? '/' : uri.path)
  
    errors.add :url, 'could not be found' if res.code == CODE_404
  rescue
    errors.add :url, 'could not be found'
  end
end
