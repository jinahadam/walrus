class ParseRating
  require 'spreadsheet'
  #Company Name	Ticker	Market Cap ($000's)	
  #StockScouter Score	Fundamental	Valuation	
  #Ownership	Technical	P/E Ratio	Price
  
  def initialize(file_path) 
    Rating.delete_all
    i = 0 
    book = Spreadsheet.open file_path 
    sheet1 = book.worksheet 0
    sheet1.each_with_index do |row, index|
       unless index == 0
         puts row[7]
        Rating.create(
            name:row[0].strip, 
            ticker:row[1].strip,
            cap:row[2],
            score:row[3],
            fundamental:row[4].strip,
            valuation:row[5].strip,
            ownership:row[6].strip,
            techinical:row[7].strip,
            pe_ratio:row[8],
            price:row[9]
        )
       end
    end

  end



end
