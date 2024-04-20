# Define the list of remote machines machines=("172.50.7.192" "172.50.12.28")


# SSH options for executing commands without prompting for password ssh_options="-oBatchMode=yes -oStrictHostKeyChecking=no"

# Loop through each machine and get memory and CPU usage for machine in "${machines[@]}"; do
echo "Machine: $machine" echo "	"

# Get memory usage echo "Memory Usage:"
ssh $ssh_options $machine "free -m"

# Get CPU usage echo "CPU Usage:"
ssh $ssh_options $machine "top -bn1 | grep 'Cpu(s)'"

echo "	" done

file:///home/student/Output_q1_q2.pdf
