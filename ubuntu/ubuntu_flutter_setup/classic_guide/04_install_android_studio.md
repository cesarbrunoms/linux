# **4. Install Android Studio**
<details><summary>A. Install Android Studio</summary>

```bash
sudo apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

```

```bash
sudo snap install android-studio --classic

```
</details><br><br>


<details><summary>X. This part is already present in "1_bashrc_config.md"</summary>

```bash
echo '' >> ~/.bashrc
echo 'export ANDROID_HOME=/home/$USER/Android/Sdk' >> ~/.bashrc
echo 'export ANDROID_SDK_ROOT=/home/$USER/Android/Sdk' >> ~/.bashrc
echo '' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bashrc

```

```bash
source ~/.bashrc

```

```bash
# Status Android Studio
adb --version

```
</details><br><br>
