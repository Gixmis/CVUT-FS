import json


students = [
    {"name": "Anna", "score": 92, "passed": True},
    {"name": "Petr", "score": 71, "passed": True},
    {"name": "Eva", "score": 48, "passed": False},
]

with open("students.json", "w", encoding="utf-8") as file:
    json.dump(students, file, ensure_ascii=False, indent=2)