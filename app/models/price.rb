class Price < ActiveRecord::Base

establish_connection (:development)

self.table_name = 'dbo.T_PRC_CHG_EVENT_EXCL'

end