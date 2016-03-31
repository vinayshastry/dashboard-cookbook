name "dashboard"
version "0.1.0"
description "Installs Dasboard :: Infrastructure as a Code"
maintainer "Raja. Soundaramourty"
maintainer_email "rajasoun@cisco.com"
source_url "https://github.com/rajasoun/dashboard-cookbook.git"
issues_url "https://github.com/rajasoun/dashboard-cookbook/issues"

depends "apt", "~> 3.0.0"
depends "mysql", "~> 5.7"
depends "runit", "~> 1.4.0"

supports "ubuntu"
