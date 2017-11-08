class Npo < ActiveRecord::Base
          
    establish_connection (:development)   
    self.table_name = 'dbo.T_NPO'
    
 end
    