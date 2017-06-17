# SpotifyCSV

### Print Spotify playlists to a CSV format


##### You will need:

* ###### The Ruby programming language installed
* ###### A Spotify application ID and Secret

#### Getting started

To get started `clone` the repo by executing

```
$ git clone https://github.com/shreyas-n/spotifyCSV.git
```

###### or [Download the .zip](https://github.com/shreyas-n/spotifyCSV/archive/master.zip)


###### in your terminal `cd` into the folder
###### run `bundle` to install the required gems

##### Finally to use the application run

```
$ ruby download.rb {playlist url}
```

##### Example

Running

```
$ ruby download.rb https://open.spotify.com/user/shreymann/playlist/3DnbNhyJfevKS3fMbXJzNt
```

Outputs [this csv file](https://github.com/shreyas-n/spotifyCSV/blob/master/chill.csv)

### Instructions

#### Getting a playlist link
![get playlist](https://i.gyazo.com/c79358b7ee0e83c195f017621b81af2e.gif)

#### Getting your client ID and Secret

Navigate to `https://developer.spotify.com/my-applications`

![get secret](https://i.gyazo.com/d82b8b30ffa314777d3f5340d37630f6.gif)

### Notes / Issues

* This will only take the first 100 songs of a playlist
* Not every track will have a preview link
