module SongsHelper
    def artist_name(name)
        if self.artist != nil
            self.artist.name
        end
    end

    def artist_name=(name)
        self.artist.name = name
    end

    def display_artist(song)
        if artist_name(song) != nil && artist_name(song) != ""
            link_to artist_name(song), artist_path(song.artist)
        else
            link_to "Add Artist", edit_song_path(song)
        end
    end
end
