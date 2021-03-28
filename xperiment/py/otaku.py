import obsessed

def Otaku(thing):
    if obsessed.With(thing):
        obsessed.to_know_all_about(thing)
        obsessed.to_master(thing)
        obsessed.to_make_a_dedication_to(thing)
        return True
    elif not(obsessed.With(thing)):
        obsessed.to_live_without(thing)
        return False
    else:
        obsessed.to_get_rid_of(thing)
        return False

AnimeLovers = Otaku("anime")
Programmers = Otaku("code")
Artist = Otaku("art")
Gamers = Otaku("games")

print("AnimeLovers like anime?",AnimeLovers)
print("Programmers love code? maybe",Programmers)
print("Artist live on art?",Artist)
print("Real Gamers would never cheat?",Gamers)
