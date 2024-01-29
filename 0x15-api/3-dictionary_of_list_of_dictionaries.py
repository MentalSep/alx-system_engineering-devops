#!/usr/bin/python3
"""Gather data from an API"""
import json
import requests


if __name__ == "__main__":
    """saves information about the TODO list progress for
        all employees in JSON format"""
    url = "https://jsonplaceholder.typicode.com/"
    users = requests.get(url + "users").json()
    todo = requests.get(url + "todos").json()
    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump({user.get('id'): [{
            "username": user.get('username'),
            "task": task.get('title'),
            "completed": task.get('completed')
        } for task in todo if user.get('id') == task.get('userId')]
            for user in users}, jsonfile)
