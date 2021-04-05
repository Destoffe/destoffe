class HomeController < ApplicationController
  def index
  end


  def league

    @stoffe = get_stoffe
    if(@stoffe[0]['queueType'] == "RANKED_SOLO_5x5")

      @stoffe[0]['queueType'] = "Ranked solo"
    end

    @ralle = get_ralle

    if(@ralle[0]['queueType'] == "RANKED_SOLO_5x5")

      @ralle[0]['queueType'] = "Ranked solo"
      @ralleUser = User.new(@ralle[0]['summonerName'],@ralle[0]['queueType'],@ralle[0]['tier'],@ralle[0]['rank'],@ralle[0]['leaguePoints'],@ralle[0]['wins'],@ralle[0]['losses'])

    else
      @ralle[1]['queueType'] = "Ranked solo"
      @ralleUser = User.new(@ralle[1]['summonerName'],@ralle[1]['queueType'],@ralle[1]['tier'],@ralle[1]['rank'],@ralle[1]['leaguePoints'],@ralle[1]['wins'],@ralle[1]['losses'])

    end

    @branniz = get_branniz

    if(@branniz[0]['queueType'] == "RANKED_SOLO_5x5")

      @branniz[0]['queueType'] = "Ranked solo"
      @branniz = User.new(@branniz[0]['summonerName'],@branniz[0]['queueType'],@branniz[0]['tier'],@branniz[0]['rank'],@branniz[0]['leaguePoints'],@branniz[0]['wins'],@branniz[0]['losses'])

    else
      @branniz[1]['queueType'] = "Ranked solo"
      @branniz = User.new(@branniz[1]['summonerName'],@branniz[1]['queueType'],@branniz[1]['tier'],@branniz[1]['rank'],@branniz[1]['leaguePoints'],@branniz[1]['wins'],@branniz[1]['losses'])

    end

    @santa = get_santa
    if(@santa[0]['queueType'] == "RANKED_SOLO_5x5")

      @santa[0]['queueType'] = "Ranked solo"
      @santa = User.new(@santa[0]['summonerName'],@santa[0]['queueType'],@santa[0]['tier'],@santa[0]['rank'],@santa[0]['leaguePoints'],@santa[0]['wins'],@santa[0]['losses'])

    else
      @santa[1]['queueType'] = "Ranked solo"
      @santa = User.new(@santa[1]['summonerName'],@santa[1]['queueType'],@santa[1]['tier'],@santa[1]['rank'],@santa[1]['leaguePoints'],@santa[1]['wins'],@santa[1]['losses'])

    end

    @botBastian = get_botBastian
    if(@botBastian[0]['queueType'] == "RANKED_SOLO_5x5")

      @botBastian[0]['queueType'] = "Ranked solo"
      @botBastian = User.new(@botBastian[0]['summonerName'],@botBastian[0]['queueType'],@botBastian[0]['tier'],@botBastian[0]['rank'],@botBastian[0]['leaguePoints'],@botBastian[0]['wins'],@botBastian[0]['losses'])

    else
      @botBastian[1]['queueType'] = "Ranked solo"
      @botBastian = User.new(@botBastian[1]['summonerName'],@botBastian[1]['queueType'],@botBastian[1]['tier'],@botBastian[1]['rank'],@botBastian[1]['leaguePoints'],@botBastian[1]['wins'],@botBastian[1]['losses'])

    end

    @affe = get_affe
    if(@affe[0]['queueType'] == "RANKED_SOLO_5x5")

      @affe[0]['queueType'] = "Ranked solo"
      @affe = User.new(@affe[0]['summonerName'],@affe[0]['queueType'],@affe[0]['tier'],@affe[0]['rank'],@affe[0]['leaguePoints'],@affe[0]['wins'],@affe[0]['losses'])

    else
      @affe[1]['queueType'] = "Ranked solo"
      @affe = User.new(@affe[1]['summonerName'],@affe[1]['queueType'],@affe[1]['tier'],@affe[1]['rank'],@affe[1]['leaguePoints'],@affe[1]['wins'],@affe[1]['losses'])

    end

    @major = get_major
    if(@major[0]['queueType'] == "RANKED_SOLO_5x5")

      @major[0]['queueType'] = "Ranked solo"
      @major = User.new(@major[0]['summonerName'],@major[0]['queueType'],@major[0]['tier'],@major[0]['rank'],@major[0]['leaguePoints'],@major[0]['wins'],@major[0]['losses'])

    else
      @major[1]['queueType'] = "Ranked solo"
      @major = User.new(@major[1]['summonerName'],@major[1]['queueType'],@major[1]['tier'],@major[1]['rank'],@major[1]['leaguePoints'],@major[1]['wins'],@major[1]['losses'])

    end

    @pw = get_pw
    if(@pw[0]['queueType'] == "RANKED_SOLO_5x5")

      @pw[0]['queueType'] = "Ranked solo"
      @pw = User.new(@pw[0]['summonerName'],@pw[0]['queueType'],@pw[0]['tier'],@pw[0]['rank'],@pw[0]['leaguePoints'],@pw[0]['wins'],@pw[0]['losses'])

    else
      @pw[1]['queueType'] = "Ranked solo"
      @pw = User.new(@pw[1]['summonerName'],@pw[1]['queueType'],@pw[1]['tier'],@pw[1]['rank'],@pw[1]['leaguePoints'],@pw[1]['wins'],@pw[1]['losses'])

    end

    @stoffeUser = User.new(@stoffe[0]['summonerName'],@stoffe[0]['queueType'],@stoffe[0]['tier'],@stoffe[0]['rank'],@stoffe[0]['leaguePoints'],@stoffe[0]['wins'],@stoffe[0]['losses'])

    @Users = [@ralleUser,@branniz,@stoffeUser,@santa,@botBastian,@affe,@major,@pw]
    @Users = @Users.sort
  end

  private
  def get_stoffe
    response = Excon.get("https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/FK7VJFhgGMkvJg0S4B9Kwk6WGbXvxr0CUXkv4X1nGE0SRqA?api_key=RGAPI-0051ec13-b630-457b-aad2-95de8ccf5770")
    return "monkey" if response.status != 200
    JSON.parse(response.body)
  end

  def get_ralle
    response = Excon.get("https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/a-oHYan1zA6eQuw-GIypf3dY3h9YnWsSYkfS7wf94-2hHKs?api_key=RGAPI-0051ec13-b630-457b-aad2-95de8ccf5770")
    return "monkey" if response.status != 200
    JSON.parse(response.body)
  end

  def get_branniz
    response = Excon.get("https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/au5MX8JZ6tXSg8gzP7V9CJauhZvpH0CyxYptfuu8M0RROyk?api_key=RGAPI-0051ec13-b630-457b-aad2-95de8ccf5770")
    return "monkey" if response.status != 200
    JSON.parse(response.body)
  end

  def get_santa
    response = Excon.get("https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/aqy7Q-fJwXJwZmZQTxbmAvVZtEoj4CBb0pSAqiCfB-ibrnU?api_key=RGAPI-0051ec13-b630-457b-aad2-95de8ccf5770")
    return "monkey" if response.status != 200
    JSON.parse(response.body)
  end

  def get_botBastian
    response = Excon.get("https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/42QuZAsnMb6HTFIrR0yOvE9UvgBerdAjSG8rcr5KRmMYNaw?api_key=RGAPI-0051ec13-b630-457b-aad2-95de8ccf5770")
    return "monkey" if response.status != 200
    JSON.parse(response.body)
  end

  def get_affe
    response = Excon.get("https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/dkpivkrhpOOH_Gr59IqV4qcbIT97rz2nwq_n9-WxUuIe8Eg?api_key=RGAPI-0051ec13-b630-457b-aad2-95de8ccf5770")
    return "monkey" if response.status != 200
    JSON.parse(response.body)
  end

  def get_major
    response = Excon.get("https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/D55Soz14oJCZZ3S_f5IiE_p1j4TETyy3MDseb0WUeoukAWI?api_key=RGAPI-0051ec13-b630-457b-aad2-95de8ccf5770")
    return "monkey" if response.status != 200
    JSON.parse(response.body)
  end

  def get_pw
    response = Excon.get("https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/x_TYVH0EFejTuQJYIzjiqsBL5Srl6q2e0qUTht1I0oURazE?api_key=RGAPI-0051ec13-b630-457b-aad2-95de8ccf5770")
    return "monkey" if response.status != 200
    JSON.parse(response.body)
  end

  class User

    include Comparable

    attr_accessor :tier,:queueType,:rank,:leaguePoints,:summonerName,:eloScore
    def initialize(summonerName ,queueType,tier,rank,leaguePoints,wins,losses)
      @queueType = queueType
      @tier = tier
      @rank = rank
      @leaguePoints = leaguePoints
      @summonerName = summonerName
      @wins = wins
      @losses = losses
    end

    def tier
      @tier
    end

    def queueType
      @queueType
    end

    def rank
      @rank
    end
    def leaguePoints
      @leaguePoints
    end
    def summonerName
      @summonerName
    end
    def wins
      @wins
    end
    def losses
      @losses
    end

    def winrate
      ((@wins.to_f / (@wins  + @losses).to_f) * 100).to_f.ceil
    end

    def eloScore
      (tier_to_value(tier) +  @leaguePoints)  + rank_to_value(rank)
    end

    def <=> (other)
      other.eloScore <=> self.eloScore
    end
    def tier_to_value(rank)

      if(rank == "IRON")
        return 10000
      elsif(rank == "BRONZE")
        return 20000
      elsif(rank == "SILVER")
        return 30000
      elsif(rank == "GOLD")
        return 40000
      elsif(rank == "PLATINUM")
        return 50000
      elsif(rank == "DIAMOND")
        return 60000
      else
        return 70000
      end
    end

    def rank_to_value(rank)

      if(rank == "I")
        return 4000
      elsif(rank == "II")
        return 3000
      elsif(rank == "III")
        return 2000
      elsif(rank == "IV")
        return 1000
      else
        return 5000
      end
    end
  end




end
