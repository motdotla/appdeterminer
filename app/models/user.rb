class User < ActiveRecord::Base
  serialize :historysniffed_app_ids, Array

  validates_presence_of :email
  validates_uniqueness_of :email

  def historysniffed_apps
    apps = App.where({ id: historysniffed_app_ids})
    apps
  end

  def add_historysniffed_app_by_name(name)
    app = App.where({ name: name }).first
    self.historysniffed_app_ids << app.id if app
    self.save
  end
end
