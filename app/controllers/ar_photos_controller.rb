class ArPhotosController < ApplicationController
    skip_before_action :authenticate_user!
    def new
        @poses = %w[singer-blue-pants_cbph5l.png]
    end
end
