class TUnidadesController < ApplicationController

    before_action :set_t_unidad, only: [:show, :edit, :update, :destroy]
    
      # GET /t_unidades
      def index
        @organigrama = TUnidad.where("nCodUni=10000000 or nCodUniPadre=10000000 or nCodUniPadre=10000001 or nIdArea=10000002").arrange_as_array({:order => 'norder'})
        @t_unidades = TUnidad.all    
      end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_t_unidad
        @t_unidad = TUnidad.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def t_unidad_params
        params.fetch(:t_unidad, {})
        #params.require(:t_unidad).permit(:name, :parent_id)
      end      
end
