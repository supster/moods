class MoodsController < ApplicationController
  def new
    @emotions = Emotion.order(:emotion_type_id)
    @mood = Mood.new
  end

  def create
    mood = Mood.new(params.require(:mood).permit(:emotion, :cause, :cessation))
    if mood.save
      flash[:notice] = 'Success'
    else
      flash[:notice] = 'Error'
    end
    redirect_to new_mood_path
  end
end