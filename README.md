# One line install
```bash
curl -L http://os161.xcv58.me | sh
```

---

# Goal of OS/161 Scripts
The goal of OS/161 scripts is help you build and debug your kernel more convenient.

You can easily rebuild your kernel and change the sys161's memory size.

---

In other words, the goal of scripts is save the time of build and debug OS/161 kernel.

Please make sure you can bmake, run, gdb your kernel before use the scripts!

The instructions for Ubuntu:
http://www.eecs.harvard.edu/~dholland/os161/resources/setup.html

If you use Mac, you need the hint:
https://gist.github.com/xcv58/8696189

# Don't do this before your toolchain works
Once you complete your toolchain configuration, and test your kernel frequently.

You may need the scripts.

To use the scripts please make sure your kernel codes located in:
```
~/src
```

And your sys161 located in:
```
~/root
```

## Build and Run kernel
The build_run_os161.sh help you to
1. Build your latest kernel
2. Run your kernel
3. Pass arguments to kernel

### Build
For example, if you type:
```
build_run_os161.sh 1r
```
The script will run the instruction for ASST1:
```
bmake depend
bmake
bmake install
```
```
sys161 kernel
```

### Run
The first argument should be 1, 1r, 1rw, r, or rw.

You can change 1 to which assignment you want.

"r" means directly run kernel.

"rw" means run kernel in debug model.

### Pass arguments to kernel
You can supply more arguments you want.

Agruments from position 2 will pass to kernel.

For example:
```
build_run_os161.sh 3rw /testbin/parallelvm
```
will build your kernel, run your new kernel as debug mode, and pass
```
/testbin/parallelvm
```
to your new kernel.

## Change memory size
The change_config_for_sys161.sh will change the ~/root/sys161.conf file.

You can use the argument as the memory you wanna use.

So you can just type in the memory size you want to test.

The script will automatic update your sys161.conf file.

If you wanna run kernel immediately, please uncomment the last line in the script file.


# Hints
You may need make links for the scripts.

My favor:
```
sudo ln -s ~/OS-161-Scripts/build_run_os161.sh /usr/local/bin/a
sudo ln -s ~/OS-161-Scripts/change_config_for_sys161.sh /usr/local/bin/s
```

If you wanna use these two commands: "a" for build and run, "s" for change memory size.

You can just use:
```
sudo make
```
to link files.

```
sudo make remove
```
to remove links.
