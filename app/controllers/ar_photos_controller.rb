class ArPhotosController < ApplicationController
    skip_before_action :authenticate_user!
    def new
        @poses = %w[b-boy_ynjona singer-blue-pants_cbph5l]
    end
end
