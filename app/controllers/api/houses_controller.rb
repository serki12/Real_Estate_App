module Api
    class HousesController < ApplicationController  
        def index
            if params[:state]== nil
                @houses = House.all
                render json: {status: 'SUCCESS', message: 'Loading houses', data: @houses},status: :ok
           else
            @house = House.where('state=?', params[:state]);
             render json:{status: 'SUCCESS', message: 'Loading houses', data: @house}, status: :ok 
           end
        end

        def show
            @housess = House.find(params[:id])
            render json: {status: 'SUCCESS', message: 'Loading houses', data: @housess},status: :ok
        end  


        # def create 
        #     house = House.create(city: params[:city], state: params[:state], zipcode: params[:zipcode], address: params[:address], price: params[:price], beds: params[:beds], bath: params[:bath], image: params[:image], dimension: params[:dimension])

        #     house.save
        #     if house.save
        #                 render json:{status: 'SUCCESS', message: 'Save houses', data: house}, status: :ok
        #             else 
        #                 render json:{status: 'ERROR', message: 'Not saved', data: house.errors},status: :unprocessable_entity
        #             end   
        #         end

        
                #update/put

        # def house_params
        #     params.permit(:city, :state, :zipcode, :address, :price, :beds, :bath, :image, :dimension)
        # end   
        
        # def edit
        #     house = House.find(params[:id])
        #     if house.update_attributes(house_params)
        #         render json:{status: 'SUCCESS', message: 'Updated', data: house}, status: :ok
        #     else 
        #         render json:{status: 'ERROR', message: 'Not updated', data: house.errors},status: :unprocessable_entity
        #     end    
        # end     



#         def destroy
#             house = House.find(params[:id])
#             house.destroy
#             render json:{status: 'SUCCESS', message: 'Deleted house', data: house}, status: :ok
#         end    
    end
 end
