module Zone

  Zone_list = {
    'Holborn' => 1,
    'Bond_St' => 1,
    'Whitechapel' => 2,
    'Mile_End' => 2
  }

  def Zone.zones(station)
    Zone_list[station]
  end

end
