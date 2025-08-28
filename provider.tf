provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaayn6s77e3y4hgz56uzwvay3jrpekafo6ycr5pr5xdsg3gahcygx7a"
  user_ocid        = "ocid1.user.oc1..aaaaaaaayq2lgs4nd7j3iwu7jhj4h2mumjp3vypbhv7pgkqbaczmpw6to6qq"
  private_key_path = "/Users/i4fx7b/.oci/amit-hyd-api-key.pem"
  fingerprint      = "b8:c3:63:60:26:55:70:46:1d:0f:0a:77:6f:83:ed:17"
  region           = "ap-hyderabad-1"
}

provider "oci" {
  alias            = "PHX"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaayn6s77e3y4hgz56uzwvay3jrpekafo6ycr5pr5xdsg3gahcygx7a"
  user_ocid        = "ocid1.user.oc1..aaaaaaaayq2lgs4nd7j3iwu7jhj4h2mumjp3vypbhv7pgkqbaczmpw6to6qq"
  private_key_path = "/Users/i4fx7b/.oci/amit-hyd-api-key.pem"
  fingerprint      = "b8:c3:63:60:26:55:70:46:1d:0f:0a:77:6f:83:ed:17"
  region           = "us-phoenix-1"
}

provider "oci" {
  alias            = "HYD"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaayn6s77e3y4hgz56uzwvay3jrpekafo6ycr5pr5xdsg3gahcygx7a"
  user_ocid        = "ocid1.user.oc1..aaaaaaaayq2lgs4nd7j3iwu7jhj4h2mumjp3vypbhv7pgkqbaczmpw6to6qq"
  private_key_path = "/Users/i4fx7b/.oci/amit-hyd-api-key.pem"
  fingerprint      = "b8:c3:63:60:26:55:70:46:1d:0f:0a:77:6f:83:ed:17"
  region           = "ap-hyderabad-1"
}
