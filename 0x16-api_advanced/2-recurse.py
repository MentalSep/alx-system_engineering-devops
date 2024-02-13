#!/usr/bin/python3
"""
Module wokring with Reddit API
"""
import requests


def recurse(subreddit, hot_list=[], after=None):
    """
    Returns the number of hot posts in a subreddit
    """
    url = "https://www.reddit.com/r/{}/hot.json?limit=100".format(subreddit)
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        return None
    for i in response.json().get('data').get('children'):
        hot_list.append(i.get('data').get('title'))
    after = response.json().get('data').get('after')
    if after is None:
        return hot_list
    return recurse(subreddit, hot_list, after)
