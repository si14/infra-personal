resource "aws_key_pair" "main" {
  key_name_prefix = "main-"
  public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDoDPaMOOETCuK1XciQe1ECcT3cr5X5brhOQBta0gat2rWF3VAgYZ9ndJpz8TA1MoAGn6hBmz29RcTWR18mZzPPwJkyo1eFEmzfuxxHE6mu6yOfOCV8MeYRNurSM37CHvbvBjiQDQ2TdxiVURVIP1rvvpOi61NDbv58fsPDiw1dP8iin44bM9rsI7LpaG/L3PYVK+Z0ZblQt9SSy77VE+x49ifGJvHy+21vZudELrsNe21inaYMcgav9rEtFxK7EsKrwuf01U7EO0p7Ozlgkl4xzsfD/u7/h0H2YsXCalsC2kt04KDF6woh25RUd6OdU14g0trCvEDEQ565dlAb7NYEO7+5D4UZMPSZM8zSzL1MctnyXKD/R339PNYKHn7x4/v8Ze553aEFTDdM3TUFXKL7O5zdgXI991qO+0zIPxgtZzdo1IUEpNorSj+gGqdfslZRnX/dcQ8cSX100UL16PhbpJuLzO6KsnZoH8kPILPRAErqlE18l9rWbIC2tWDbl2sxmdNDRyB8EawLVjP0jUEnOejE+rG3c3cV4xK8ICbnWMdJURma4jX8nJTUHB+AL70gnvm2Q9yQhRAamo0sn3BuR50oj57WLlTvHmAQovCQQsim+6JKuAGDddv3YCycsRnwMhGy80Hva1HJaoX1nNH2oHFASPEZTGbha1pcaXyFxQ== sean@lingrino.com"
}

output "keypair_main_name" {
  description = "The name of the main ssh keypair"
  value       = aws_key_pair.main.key_name
}
