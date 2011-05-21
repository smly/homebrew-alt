require 'formula'

class Perl < Formula
  url 'http://www.cpan.org/src/5.0/perl-5.14.0.tar.gz'
  homepage 'http://www.perl.org/'
  md5 'e7457deea78330c5f8eebb2fd2a45479'

  def install
    system("rm -f config.sh Policy.sh");
    system "sh Configure -de -Dprefix=#{prefix} -Dusethreads -Duseshrplib -Duselargefiles"
    system "make install"
  end
end
