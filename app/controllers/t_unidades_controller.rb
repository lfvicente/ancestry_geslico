class TUnidadesController < ApplicationController

    before_action :set_t_unidad, only: [:show, :edit, :update, :destroy]
    
    # GET /organigrama
      def organigrama
          params[:id]=10000000 if !params[:id]  
                
          # if params[:id]=10000000
          #   @organigrama = TUnidad.where("nCodUni=10000000 or nCodUniPadre=10000000 or nCodUniPadre=10000001 or nCodUni=nIdArea").arrange_as_array({:order => 'norder'})
          # else
            @organigrama = TUnidad.find(params[:id])            
          # end
        
      end

      # GET /t_unidades
      def index        
        @t_unidades = TUnidad.all    
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
