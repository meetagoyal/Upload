class SqlTest < ActiveRecord::Base
    
      
    establish_connection (:development)
    
      self.table_name = 'dbo.T_AGREEMENT'
    
    
    end
    