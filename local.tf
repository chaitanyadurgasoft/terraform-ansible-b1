resource "local_file" "serverlist" {
  content = templatefile("details.tpl",
    {
      master01 = aws_instance.master-1.public_ip
      master02 = aws_instance.master-2.public_ip
      master03 = aws_instance.master-3.public_ip
      worker01 = aws_instance.worker-1.public_ip
      worker02 = aws_instance.worker-2.public_ip
      worker03 = aws_instance.worker-3.public_ip
    }
  )
  filename = "invfile"
}
