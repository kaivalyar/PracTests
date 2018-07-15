This repository contains the profiling scripts and outputs for PracMLN.

# Setup

After setting up PracMLN on your computer (via pip for usage, or git-clone for development); edit [line 11](https://github.com/kaivalyar/PracTests/blob/master/Profile/progressive/pprofilec.sh#L11) in the bash script to reflect the pythonpath required for your particular [PracMLN development setup](https://kaivalyar.github.io/gsoc18-pracmln/posts/mln-inference/#pracmln-setup).

Seperately, `pip install cprofilev` to your computer.

# Usage

Run the bash script via ` ... ~ $ bash pprofilec.sh`.

This will generate four different profile files (using the built-in python `cprofile`): `cython1.txt`, `cython2.txt`, `cython3.txt`, and `cython4.txt`, each with more and more complicated inferences, and a runtime summary in `runtimes.txt`.

To analyse say, the `cython3.txt` profile run using `pstats`, simply open a terminal and type ` ... ~ $ cprofilev -f cython3.txt`.

This will open a webpage browser window / provide a link to a webpage where different pstats analyses can be performed easily.
