class QuotesController < Rulers::Controller
  def a_quote
    render :a_quote, noun: "winkin"
  end

  def quote_1
    quote_1 = Rulers::FileModel.find(1)
    render :quote, obj: quote_1
  end

  def index
    quotes = Rulers::FileModel.all
    render :index, quotes: quotes
  end

  def new_quote
    attrs = {"submitter" => "web user",
      "quote" => "A picture is worth one k pixels",
      "attribution" => "Me"
    }    
    m = Rulers::FileModel.create attrs
    render :quote, :obj => m
  end
end