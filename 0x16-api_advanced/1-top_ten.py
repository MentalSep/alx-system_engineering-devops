#!/usr/bin/python3
"""
Module wokring with Reddit API
"""
import requests


def top_ten(subreddit):
    """
    Returns the number of subscribers for a given subreddit
    """
    url = "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit)
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        print(None)
    else:
        for i in response.json().get('data').get('children'):
            print(i.get('data').get('title'))
