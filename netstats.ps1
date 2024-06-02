#[Environment]::NewLine
$date = Get-Date
$stat = Get-NetAdapterStatistics -Name Wi-Fi
$recv = [math]::round($stat.ReceivedBytes /1Mb, 3)
$sent = [math]::round($stat.SentBytes /1Mb, 3)
$total = [math]::round(($stat.ReceivedBytes + $stat.SentBytes) /1Mb, 3)
$data = "Rcvd: $($recv) Mb | Sent: $($sent) Mb | Total: $($total) Mb"
$log = -join($date, "`r`n", $data) | Out-file -FilePath '.\inetusage.log' -Append
