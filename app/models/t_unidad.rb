class TUnidad < ApplicationRecord
    include Tree
    
	self.table_name ="geslico.dbo.TUnidades"		

    has_one :t_unidad, :foreign_key => "nCodUniPadre"

    belongs_to :t_unidad, :foreign_key => "nIdArea", :primary_key => "nCodUni"
    belongs_to :t_unidad, :foreign_key => "nCodUniPadre", :primary_key => "nCodUni"
    
    has_ancestry

end
