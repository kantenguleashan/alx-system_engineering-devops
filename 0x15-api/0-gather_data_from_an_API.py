#!/usr/bin/python3
import requests
import sys

def get_employee_todo_progress(employee_id):
    # API endpoint URL
    api_url = f'https://jsonplaceholder.typicode.com/users/{employee_id}/todos'

    try:
        # Fetching employee TODO list
        response = requests.get(api_url)
        response.raise_for_status()

        todos = response.json()

        # Filtering completed tasks
        completed_tasks = [task for task in todos if task['completed']]

        # Displaying progress information
        employee_name = todos[0]['username']
        num_done_tasks = len(completed_tasks)
        total_tasks = len(todos)

        print(f"Employee {employee_name} is done with tasks ({num_done_tasks}/{total_tasks}):")

        # Displaying titles of completed tasks
        for task in completed_tasks:
            print(f"\t{task['title']}")

    except requests.exceptions.HTTPError as err:
        print(f"Error fetching data from the API: {err}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <employee_id>")
        sys.exit(1)

    employee_id = int(sys.argv[1])
    get_employee_todo_progress(employee_id)
