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
    response = requests.get(url, allow_redirects=False)
    if response.status_code != 200:
        print(None)
    else:
        for post in response.json().get('data').get('children'):
            print(post.get('data').get('title'))
