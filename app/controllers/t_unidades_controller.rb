class TUnidadesController < ApplicationController

    before_action :set_t_unidad, only: [:show, :edit, :update, :destroy]
    
    # GET /organigrama
    
      # def organigrama
          # params[:id]=10000000 if !params[:id]  
          # @organigrama = TUnidad.find(params[:id])            
      # end

      # GET /t_unidades
      def index                
        @t_unidad = TUnidad.all
        @organigrama = TUnidad.select(:nCodUni, :nCodUniPadre, :cDenominacion, :nIdArea, :ancestry, :norder).all.arrange({:order => 'norder'}) 
      end

      def show
      end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_t_unidad
        @t_unidad = TUnidad.find(params[:id])                    
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def t_unidad_params        
        params.require(:t_unidad).permit(:nCodUni, :nCodUniPadre, :nIdArea, :cDenominacion, :norder)
      end      
end
