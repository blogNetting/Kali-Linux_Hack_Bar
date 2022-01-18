function settarget(){
    ip_address=$1
    machine_name=$2
    echo "$ip_address $machine_name" > /home/kali/.config/panels/target
}

function setdomain(){
    domain=$1
    echo "$domain" > /home/kali/.config/panels/domain_target
}
