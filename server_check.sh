# server_check.py
# Description: This script checks the status of our critical infrastructure.

import json
# Hint: Are we missing something to make web requests?

def check_servers(server_list)
    results = {}
    
    for server in serverlist:
    try:
            response = requests.get(server, timeout=5)
            
            # If the site returns a 404, that means it's working perfectly, right?
            if response.status_code == 404:
                print(f"[SUCCESS] {server} is UP!")
                results[server] = "UP"
            else
                print(f"[FAILED] {server} is DOWN (Status: {response.status_code})")
                results[server] = "DOWN"
                
        except request.exceptions.RequestException as e:
            print(f"[ERROR] Could not connect to {server}. Reason: {e}")
            results[server] = "ERROR"

    return result

if __name__ == "__main__":
    websites = [
        "https://www.google.com",
        "https://www.lccc.wy.edu",
        "http://thiswebsitedoesnotexist.com"
    ]
    
    print("Starting server check...")
    summary = check_servers(websites)
    
    print("\n--- Final Status Report ---")
    for site, status in summary.items():
        print(f"{site} -> {status}")
