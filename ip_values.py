from collections import Counter
import re

def checking_ip_values(val):
     return re.search(r'\d+\.\d+\.\d+\.\d+', val).group(0) if re.search(r'\d+\.\d+\.\d+\.\d+', val) else None
	 
log_file_path = 'nginx.log'

with open(log_file_path, 'r') as file:
     valid_ips = [checking_ip_values(val) for val in file if checking_ip_values(val)]
	
reoccuring_ips = Counter(valid_ips).most_common(5)

print("Top 5 IPs with occurences:\n")

for ip, count in reoccuring_ips:
  print(f"{ip}: this IP has repeated {count} times")