module Zone

  ZONE_LIST = {
    'Holborn' => 1,
    'Bond_St' => 1,
    'Whitechapel' => 2,
    'Mile_End' => 2
  }

  def Zone.zones(station)
    ZONE_LIST[station]
  end

end
