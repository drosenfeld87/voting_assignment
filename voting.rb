ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

result = {}
ballots.each do |string|
  string.each do |rank, name|
    if result[name] == nil
      if rank == 1
        result[name] = 3
      elsif rank == 2
        result[name] = 2
      elsif rank == 3
        result[name] = 1
      end
  else
    if rank == 1
      result[name] +=3
    elsif rank == 2
      result[name] +=2
    elsif rank == 3
      result[name] +=1
    end
  end
end

end

puts result
