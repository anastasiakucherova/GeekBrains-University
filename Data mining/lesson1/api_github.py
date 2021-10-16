import requests

username = 'anastasia-kucherova'
link = f'https://api.github.com/users/{username}/repos'
api_params = {
    'sort': 'created',
    'direction': 'asc'
}

response = requests.get(link, params=api_params)

if response.ok:
    with open('repositories.json', 'w') as f:
        f.write(response.text)

    print(f'Public GitHub repositories of user {username}:')
    for rep in response.json():
        print(
            rep["name"],
            f'language: {rep["language"]}',
            f'description: {rep["description"]}',
            f'created: {rep["created_at"]}',
            sep='\n\t'
        )
else:
    print(f'Error! Response code: {response.status_code}')
