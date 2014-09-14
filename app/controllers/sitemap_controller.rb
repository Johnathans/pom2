class SitemapController < ApplicationController
  respond_to :xml
  def index
    @pomsky_breeders = PomskyBreeder.order("created_at DESC")
    @husky_breeders = HuskyBreeder.order("created_at DESC")
    @pomeranian_breeders = HuskyBreeder.order("created_at DESC")
  end
end