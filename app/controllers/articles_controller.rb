class ArticlesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_article, only: [:show, :edit, :update, :destroy, :vote]

  # GET /articles
  # GET /articles.json
  def index
    @user = current_user
    if params[:page]
      @articles = Article.order(:updated_at).page(params[:page]).per(1)
    else
      @articles = Article.order(:updated_at).page(0).per(1)
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @user = current_user
    # Initializes a Markdown parser
    @renderer = Redcarpet::Render::HTML.new(filter_html: true, hard_wrap: true)
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
  end

  # GET /articles/new
  def new
    @user = current_user
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    @user = current_user
  end

  # POST /articles
  # POST /articles.json
  def create
    @user = current_user
    @article = Article.new(article_params)
    @article.user = current_user

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @user = current_user
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote
    @user = current_user
    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @article.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :content, :user_id, :pic, :name)
    end
end
