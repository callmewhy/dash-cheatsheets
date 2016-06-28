cheatsheet do
  title 'Type Size'               # Will be displayed by Dash in the docset list
  docset_file_name 'typesize'    # Used for the filename of the docset
  keyword 'Type Size'             # Used as the initial search keyword (listed in Preferences > Docsets)

  style '  
  td.td_notes code {
    border: none;
    box-shadow: none;
    background: none;
    font-family: "Open Sans", sans-serif;
    font-size: medium;
    color: #666666;
  }
  td, th {
    white-space:nowrap;
    min-width:110px;
  }
  .no-min-width td, .no-min-width th {
    min-width:0;
  }
  td:last-child {
    width:99%;
  }
 '

  category do
    id 'Integer'
    header 'Type'
    header '32-bit Size'
    header '32-bit Alignment'
    header '64-bit Size'
    header '64-bit Alignment'

    entry do
      name 'char'
      td_notes '1 byte'
      td_notes '1 byte'
      td_notes '1 byte'
      td_notes '1 byte'
    end

    entry do
      name 'bool'
      td_notes '1 byte'
      td_notes '1 byte'
      td_notes '1 byte'
      td_notes '1 byte'
    end

    entry do
      name 'short'
      td_notes '2 byte'
      td_notes '2 byte'
      td_notes '2 byte'
      td_notes '2 byte'
    end

    entry do
      name 'int'
      td_notes '4 byte'
      td_notes '4 byte'
      td_notes '4 byte'
      td_notes '4 byte'
    end

    entry do
      name 'long'
      td_notes '4 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'long long'
      td_notes '8 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'pointer'
      td_notes '4 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'size_t'
      td_notes '4 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'time_t'
      td_notes '4 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'NSInteger'
      td_notes '4 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'CFIndex'
      td_notes '4 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'fpos_t'
      td_notes '8 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'off_t'
      td_notes '8 byte'
      td_notes '4 byte'
      td_notes '8 byte'
      td_notes '8 byte'
    end

  end


  category do
    id 'Float'
    header 'Type'
    header '32-bit Size'
    header '64-bit Size'

    entry do
      name 'float'
      td_notes '4 byte'
      td_notes '4 byte'
    end

    entry do
      name 'double'
      td_notes '8 byte'
      td_notes '8 byte'
    end

    entry do
      name 'CGFloat'
      td_notes '4 byte'
      td_notes '8 byte'
    end

  end



end
