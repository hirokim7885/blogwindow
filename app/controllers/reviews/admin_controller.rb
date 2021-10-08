class Reviews::AdminController < Admin::BaseController

  def index
    @reviews = Review.page(params[:page]).order(created_at: :desc)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_admin_index_path, notice: 'メッセージを削除しました。'
  end

end
