class RecommendsController < ApplicationController

  before_action :find_recommend, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :log_impression, :only=> [:show]
  load_and_authorize_resource

  def index
    @recommends = Recommend.all.order("created_at DESC")
    set_meta_tags title: 'Featured Gadgets',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'we help you find the best gadgets what you are looking for',
                  keywords: 'gift guide,tech blog,featured,recommend gadgets',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Featured Gadgets',
                    description: 'we help you find the best gadgets what you are looking for',
                    image: 'https://i.pinimg.com/564x/a7/5d/d3/a75dd30418dec26b3c0fdc3bcf831486.jpg',
                  },
                  og: {
                    title: 'Featured Gadgets',
                    description: 'we help you find the best gadgets what you are looking for',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/recommends/',
                    image:'https://i.pinimg.com/564x/a7/5d/d3/a75dd30418dec26b3c0fdc3bcf831486.jpg'
                  }
  end

  def index_02
    @recommends = Recommend.all.order("created_at DESC")
    set_meta_tags title: 'Featured Gadgets',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'you have to change this description',
                  keywords: 'gift guide,tech blog,featured,recommend gadgets',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Featured Gadgets',
                    description: 'we help you find the best gadgets what you are looking for',
                    image: 'https://i.pinimg.com/564x/a7/5d/d3/a75dd30418dec26b3c0fdc3bcf831486.jpg',
                  },
                  og: {
                    title: 'Featured Gadgets',
                    description: 'we help you find the best gadgets what you are looking for',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/recommends/',
                    image: 'https://i.pinimg.com/564x/a7/5d/d3/a75dd30418dec26b3c0fdc3bcf831486.jpg'
                  }
  end

  def show
    @related = Recommend.where.not(id: @recommend).order("created_at DESC").limit(6)
    set_meta_tags title: @recommend.re_title,
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: @recommend.sub_intro,
                  keywords: 'gift guide,tech blog,featured,recommend gadgets',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: @recommend.re_title,
                    description: @recommend.sub_intro,
                    image: @recommend.re_image
                  },
                  og: {
                    title: @recommend.re_title,
                    description: @recommend.sub_intro,
                    type: 'website',
                    url: recommend_url(@recommend),
                    image: @recommend.re_image
                  }
  end

  def new
    @recommend = current_user.recommends.build
  end

  def create
    @recommend = current_user.recommends.build(recommend_params)
      if @recommend.save
        redirect_to @recommend
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @recommend.update(recommend_params)
      redirect_to @recommend
    else
     render 'edit'
    end
  end

  def destroy
    @recommend.destroy
      redirect_to root_path
  end

  private

  def find_recommend
    @recommend = Recommend.friendly.find(params[:id])
  end

  def recommend_params
    params.require(:recommend).permit(:re_filter, :re_title, :sub_intro, :re_intro, :re_image, :sub_number_01, :sub_number_01, :sub_number_01,
                                      :sub_number_02, :sub_number_03, :sub_number_04, :sub_number_05, :sub_number_06, :sub_number_07, :sub_number_08,
                                      :sub_number_09, :sub_number_10, :sub_image_01, :sub_image_02, :sub_image_03, :sub_image_04, :sub_image_05, :sub_image_06,
                                      :sub_image_07, :sub_image_08, :sub_image_09, :sub_image_10, :sub_title_01, :sub_title_02, :sub_title_03, :sub_title_04, :sub_title_05,
                                      :sub_title_06, :sub_title_07, :sub_title_08, :sub_title_09, :sub_title_10, :sub_intro_01, :sub_intro_02, :sub_intro_03, :sub_intro_04,
                                      :sub_intro_05, :sub_intro_06, :sub_intro_07, :sub_intro_08, :sub_intro_09, :sub_intro_10, :sub_source_01, :sub_source_02, :sub_source_03,
                                      :sub_source_04, :sub_source_05, :sub_source_06, :sub_source_07, :sub_source_08, :sub_source_09, :sub_source_10, :sub_price_01, :sub_price_02,
                                      :sub_price_03, :sub_price_04, :sub_price_05, :sub_price_06, :sub_price_07, :sub_price_08, :sub_price_09, :sub_price_10, :sub_link_01,
                                      :sub_link_02, :sub_link_03, :sub_link_04, :sub_link_05, :sub_link_06, :sub_link_07, :sub_link_08, :sub_link_09, :sub_link_10, :sub_youtube_01,
                                      :sub_youtube_02, :sub_youtube_03, :sub_youtube_04, :sub_youtube_05, :sub_youtube_06, :sub_youtube_07, :sub_youtube_08, :sub_youtube_09, :sub_youtube_10,
                                      :rec_spare_01, :rec_spare_02, :rec_spare_03, :rec_spare_04, :rec_spare_05, :rec_spare_06, :rec_spare_07, :rec_spare_08, :rec_spare_09, :rec_spare_10, 
                                      :rec_spare_11, :rec_spare_12, :rec_spare_13, :rec_spare_14, :rec_spare_15, :rec_spare_16, :rec_spare_17, :rec_spare_18, :rec_spare_19, :rec_spare_20)
  end
end
