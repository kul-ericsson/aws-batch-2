resource "mysql_database" "kul"{
	name = "kul_db"
}

resource "mysql_user" "dbuser" {
	user = "kmayer"
	plaintext_password = "india@123"
}