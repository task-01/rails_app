class RoomsController < ApplicationController
  def index
  end

  def new
    
  end

  def show
    @room = Room.new
  end
  # def create
  #   @room = Room.new #データを新規登録するためのインスタンス生成
  #   @room.save #データをデータベースに保存するためのsaveメソッド実行
  #   flash[:notice] = "新規投稿をしました"
  #   redirect_to edit_room_path(current_user) #トップ画面へリダイレクト
  # end
  
  # private
  #   def post_params #ストロングパラメータ
  #     params.require(:room).permit(:roomName, :user_id, :roomIntroduction, :roomMoney, :roomAddress, :image) #パラメーターのキー
  #   end
  
  def create
    @room = Room.new(params.require(:room).permit(:roomName, :user_id, :roomIntroduction, :roomMoney, :roomAddress, :image))
    if @room.save
      flash[:notice] = "新規投稿をしました"
      redirect_to edit_room_path
    else
      flash[:notice] = "失敗"
      @user = User.find_by(params[:user_id])
    end
  end

  def edit
    @user = User.find(params[:id])
    @room = Room.find(params[:id])
  end

  def update
    
  end

  def destroy
  end
end
