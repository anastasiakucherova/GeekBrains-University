import requests

print_err = lambda err: print(f'Error! Response code: {err}')

base_link = 'https://www.googleapis.com/youtube/v3/'
apiKey = 'AIzaSyC-mpPSjA1CQVKSm_KLEplrndVUfES67Tc'

# YouTube API video search link
search_link = base_link + 'search'
search_params = {
    'key': apiKey,
    'type': 'video',                                  # type of content
    'part': 'snippet',                                # required type of search resource properties
    'channelId': 'UCGYD8kK1HgUpM9uUnIVUG8Q',          # channel id of my employer
    'q': 'area9',                                     # search keyword
    'maxResults': 10                                  # results per search page
}

# Getting a list of info about first 10 videos
response = requests.get(search_link, params=search_params)
search_items = []

if response.ok:
    with open('videos_info.json', 'w') as f:
        f.write(response.text)

    search_items = response.json()['items']

    print(f'Area9 YouTube channel videos (sorted by relevance):')
    for item in search_items:
        snippet = item['snippet']
        print(
            snippet["title"],
            f'description: {snippet["description"]}',
            f'video id: {item["id"]["videoId"]}',
            sep='\n\t'
        )
else:
    print_err(response.status_code)

# Trying to get iframe code for the first video
if len(search_items) > 0:
    link = base_link + 'videos'
    video_params = {
        'key': apiKey,
        'id': search_items[0]['id']['videoId'],
        'part': 'player'
    }
    response = requests.get(link, params=video_params)
    if response.ok:
        first_video_info = response.json()['items'][0]
        embedHtml = first_video_info['player']['embedHtml']
        print(f'Html code for {first_video_info["id"]}:\n{embedHtml}')
    else:
        print_err(response.status_code)
