class GossipsController < ApplicationController
	def index
		@gossip = Gossip.all
	end

	def new
  		@gossip = Gossip.new
	end
 
	def create
    if moussaillon_signed_in?
      @moussaillon = current_moussaillon
      @gossip = @moussaillon.created_gossips.new(gossip_params)
      if @gossip.save
        redirect_to root_path
      else
        render 'new'
      end
    end
end

	def edit
  		@gossip = Gossip.find(params[:id])
	end
 
	def update
  		@gossip = Gossip.find(params[:id])
  		if @gossip.update(gossip_params)
    		redirect_to @gossip
		end
	end

	def show
		@gossip = Gossip.find(params[:id])
	end

	def destroy
		@gossip = Gossip.find(params[:id])
		if @gossip.destroy
		redirect_to @gossip
		end
	end

#partie privée qui ne sera pas affiché
	private

	def gossip_params
		params.require(:gossip).permit(:id, :content)
	end

end