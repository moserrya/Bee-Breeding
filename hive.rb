# To find the distance between two cells:
# Hive.len_shortest_path cell1, cell2

module Hive
  extend self

  def len_shortest_path(cell1, cell2)
    x = x_travel(cell1, cell2)
    y = y_travel(cell1, cell2)
    x + [y - (x + 1) / 2, 0].max
  end

  def x_travel(cell1, cell2)
    (coords(cell1).first - coords(cell2).first).abs 
  end

  def y_travel(cell1, cell2)
    (coords(cell1).last  - coords(cell2).last).abs
  end

  def coords(cell)
    return [0, 0] if cell == 1
    [get_x(cell), get_y(cell)]
  end

  def ring_number(cell)
    return 0 if cell == 1  
    root = (cell - 2) / 6  # divide number of hexagons in each ring by six and they increase as triangle numbers
    (((8 * root + 1) ** 0.5 - 1) / 2).to_i + 1 # triangle root
  end

  def anchor_coords(ring)
    return [0, 0] if ring.zero?
    [ring - 1, -ring / 2]
  end

  def anchor_cell(ring)
    (ring) * (ring - 1) * 3 + 2 # triangle number * 6 + offset
  end

  def get_x(cell)
    ring = ring_number(cell)
    anchor_x = anchor_coords(ring).first
    anchor = anchor_cell(ring)
    hexagon_side = (cell - anchor) / (ring)
    hindex = (cell - anchor) % ring
    case hexagon_side
    when 0 then anchor_x - hindex
    when 1 then -hindex - 1 
    when 2 then -ring
    when 3 then -ring + hindex + 1
    when 4 then hindex + 1
    when 5 then ring
    end
  end

  def get_y(cell)
    ring = ring_number(cell)
    anchor_y = anchor_coords(ring).last
    anchor = anchor_cell(ring)
    hexagon_side = (cell - anchor) / ring
    hindex = (cell - anchor) % ring
    case hexagon_side
    when 0 then anchor_y  - hindex / 2
    when 1 then -ring   + hindex / 2  + 1
    when 2 then anchor_y  + hindex + 1
    when 3 then -anchor_y + (hindex + 1) / 2
    when 4 then ring    - (hindex + 1) / 2
    when 5 then -anchor_y - hindex - 1
    end
  end
end
