  def complete_board!(arr)
    # call_name.tr("_", " ")
    # => "call some name"
    # irb(main):023:0> call_name.gsub!("_", " ")
    # => "call some name"
    # [*('A'..'Z')].sample(8)
    arr[1].scan(/./).each { |char| print char }


  end

  arr = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]

  complete_board!(arr)