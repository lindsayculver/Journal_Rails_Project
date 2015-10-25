class EntriesController < ApplicationController
  def index
    # if Entry.new_entry_for_today?
    #   Entry.create
    # end
    @entries = Entry.order(:created_at)
  end

  def update_multiple
    params[:entries].each do |id, content_hash|
      entry = Entry.find(id)
      entry.update(content: content_hash[:content])
    end
    redirect_to :back
  end
end
