def search(list:, hc:)

  if list.first > hc
    p "Finns ej."
    return "Finns ej"
  elsif list.last < hc
    p "Finns ej"
    return "Finns ej"
  end
  until list[list.length/2] == hc
      middle_index = list.length/2
      middle_value = list[middle_index]
      if middle_value > hc
        list.delete_if { |value| value >= middle_value }
        p "delete alt som är större"

      else
        list.delete_if { |value| value <= middle_value }
        p "delete alt som är mindre"
      end
    p list
  end
  p hc
end

search(list: [2, 2, 4, 4, 5, 6, 7, 9, 9, 10] ,hc: 8)