module Spree
  class Video < ActiveRecord::Base
    belongs_to :watchable, :polymorphic => true, :touch => true

    # attr_accessible :youtube_ref
    validates_presence_of :youtube_ref
    validates_uniqueness_of :youtube_ref, :scope => [:watchable_id, :watchable_type]

    def youtube_data
      ssl_char = 's' if Spree::Videos.configuration.youtube_url_params[:use_ssl]
      YouTubeIt::Client.new.video_by("http#{ssl_char}://www.youtube.com/watch?v=" + youtube_ref)
    end
  
    after_validation do
      youtube_ref.match(/(v=|\/)([\w-]+)(&.+)?$/) { |m| self.youtube_ref = m[2] }
    end
  end
end