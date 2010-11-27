module IngredientHelper
  def mash(name, amount, options={})
    output = tag(:tr) do
      tag(:td, :class => "mashIngredient"){name} << tag(:td){amount}
    end
    output
  end

  def hop(name, amount, time, alphaAcid=nil, options={})
    output = tag(:tr) do
      content =  tag(:td, :class => "boilAddition"){name} 
      content <<  tag(:td, :class => "notMobile"){alphaAcid || "&nbsp;"} 
      content << tag(:td, :class => "boilAmount"){amount}
      content << tag(:td){time}
    end
    output
  end
end
