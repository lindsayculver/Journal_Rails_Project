class EntriesController < ApplicationController
  def index
    if Entry.new_entry_for_today?
      Entry.create
    end
    @entries = Entry.all
  end

  def update_multiple
    entry = Entry.find(params[:id])
    entry.update(:content => params[:entry][:content])
    redirect_to :back
  end
end
