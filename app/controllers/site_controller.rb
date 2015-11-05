class SiteController < ApplicationController
  def home
  end

  def result
    # render plain: params.inspect
    @term = params["term"]
    @results = SiteHelper.search(@term)
  end
end
