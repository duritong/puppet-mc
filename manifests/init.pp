class mc {
  case $::operatingsystem {
    gentoo: { include mc::gentoo }
    default: { include mc::base }
  }
}
