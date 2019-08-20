class MessagesController < ApplicationController

  before_action :find_message, only: [:show, :edit, :update, :destroy]

  def index
    @messages = Message.all.order("created_at DESC")
    set_meta_tags title: 'You want to know about us?',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'It is discount platform but also trending item platform',
                  keywords: 'about us,feedback,question',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'You want to know about us?',
                    description: 'It is discount platform but also trending item platform',
                    # image: 
                  },
                  og: {
                    title: 'You want to know about us?',
                    description: 'It is discount platform but also trending item platform',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/messages/',
                    # image:
                  }
  end

  def show
  end

  def new
    @message = Message.new
    set_meta_tags title: 'Get a question? Get in touch with us!',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'If you have any question or give feedback just do it!!',
                  keywords: 'about us,feedback,question',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Get a question? Get in touch with us!',
                    description: 'If you have any question or give feedback just do it!!',
                    # image: 
                  },
                  og: {
                    title: 'Get a question? Get in touch with us!',
                    description: 'If you have any question or give feedback just do it!!',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/messages/new/',
                    # image:
                  }
  end

  def create
    @message = Message.new(message_params)
      if @message.save
        flash[:message_board] = 'Your Message has been sent'
        redirect_to @message
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @message.update(message_params)
      redirect_to @message
    else
      render 'edit'
    end
  end

  def destroy
    @message.destroy
    redirect_to @message
  end

  private

  def find_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:mtitle, :mmail, :mcontent, :m_spare_01, :m_spare_02, :m_spare_03, :m_spare_04, 
                                    :m_spare_05, :m_spare_06, :m_spare_07, :m_spare_08, :m_spare_09, :m_spare_10, 
                                    :m_spare_11, :m_spare_12, :m_spare_13, :m_spare_14, :m_spare_15)
  end

end
