class RelationshipsController < ApplicationController
    #フォロー追加
    def create
        user = User.find(params[:user_id])
        current_user.follow(user)
        redirect_to request.referer
    end
    
    #フォロー削除
    def destroy
        user = User.find(params[:user_id])
        current_user.unfollow(user)
        redirect_to request.referer
    end
    
    #フォロー一覧表示
    def followers
        user = User.find(params[:user_id])
        @users = user.followers
    end
    
    #フォロー一覧表示
    def followings
        user = User.find(params[:user_id])
        @users = user.followings
    end
end
