class Song
  attr_reader :title, :artist

  $songlist = [
    {
      title: "Ring of Fire",
      artist: "Johnny Cash"
    },
    {
      title: "We Will Rock You",
      artist: "Queen"
    },
    {
      title: "Smoke on the Water",
      artist: "Deep Purple"
    },
    {
      title: "Highway to Hell",
      artist: "AC/DC"
    },
    {
      title: "Pokerface",
      artist: "Lady Gaga"
    },
    {
      title: "Jimmy Savile song",
      artist: "Stephi Irving and the Tartan Army"
    },
    {
      title: "What is Love",
      artist: "Haddaway"
    },
    {
      title: "Sweet Dreams are Made of These",
      artist: "Eurythmics"
    },
    {
      title: "I Want to Break Free (Mariachi Version)",
      artist: "Queen"
    },
    {
      title: "Staying Alive",
      artist: "The Bee Gees"
    },
    {
      title: "It's My Life",
      artist: "Bon Jovi"
    },
    {
      title: "It's My Life",
      artist: "Dr Alban"
    },
    {
      title: "If you're Happy and you know it Clap your Hands",
      artist: "Little Baby Bum"
    },
    {
      title: "Girls Just Wanna have Fun",
      artist: "Cyndi Lauper"
    },
    {
      title: "Whiskey in The Jar",
      artist: "Thin Lizzy"
    },
    {
      title: "Whiskey in The Jar",
      artist: "The Dubliners"
    },
    {
      title: "Whiskey in The Jar",
      artist: "Metallica"
    },
    {
      title: "I Follow Rivers",
      artist: "Lykke Li"
    },
    {
      title: "99 Luftballons",
      artist: "Nena"
    },
    {
      title: "99 Red Balloons",
      artist: "Nena"
    },
    {
      title: "Manic Monday",
      artist: "The Bangles"
    },
    ]

  def initialize(song)

    @title = song[:title]
    @artist = song[:artist]
  end




end
