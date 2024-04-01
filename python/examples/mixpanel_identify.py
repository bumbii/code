import requests

url = "https://api.mixpanel.com/track#create-identity"

payload = {
    "data": """{
      "event\": "$identify\",
      "properties": {
          "$identified_id": "3204",
          "$anon_id": "$device:da88189b-7a36-4d76-a3cc-0dbb4b86d859",
          "token": "c8a613beaa196e54eef479be8b7dc0d1"
      }
    }""",
    "strict": 0 }

headers = {
    "accept": "application/json",
    "content-type": "application/x-www-form-urlencoded"
}

response = requests.post(url, data=payload, headers=headers)

print(response)