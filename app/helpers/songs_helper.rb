module SongsHelper
    def artist_name(song)
        if song != nil
            song.artist.name
        end
    end

    def artist_name=(name)
        song.artist.name = name
    end

    def display_artist(song)
        if artist_name(song) != nil
            link_to artist_name(song), artist_path(song.artist)
        else
            link_to "Edit Song", song_path(song)
        end
    end
end
