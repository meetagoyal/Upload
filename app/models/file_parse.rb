class Fileparse
    def initialize
        
    end
   
    def self.parse(path)
        binding.pry
        workbook = Roo::Spreadsheet.open path
        worksheets = workbook.sheets
        puts "Found #{worksheets.count} worksheets"
        
        #checks each worksheet
        worksheets.each do |worksheet|
        num_rows = 0
          #checks each row
          workbook.sheet(worksheet).each_row_streaming do |row|
            if num_rows != 0
                row_cells = row.map { |cell| cell.value }
                Item.create!(item_number: row_cells[0], start_date: row_cells[1], end_date: row_cells[2])
            end
            num_rows += 1
          end
        end
    end
end