# 6. **Install FVM**
<details><summary>A. Pub package</summary>

```bash
dart pub global activate fvm

```
</details><br><br>


<details><summary>X. This part is already present in "1_bashrc_config.md"</summary>

```bash
echo 'export PATH=$PATH:$HOME/.pub-cache/bin' >> ~/.bashrc

```

```bash
source ~/.bashrc

```
</details><br><br>


<details><summary>B. Config FVM</summary>

```bash
fvm --version

```

```bash
fvm config

```

```bash
cd /home/$USER/ && mkdir _devprograms
cd /home/$USER/_devprograms && mkdir fvm
cd /home/$USER/_devprograms/fvm
fvm config --cache-path /home/$USER/_devprograms/fvm

```

```bash
# Listar FVM instaladas
fvm list

```

```bash
# Quais são as versões que existem disponíveis
fvm releases

```

```bash
fvm doctor

```

```bash
fvm install stable

```

```bash
fvm install 3.10.3

```
</details><br><br>


<details><summary>C. Usando uma versão especifica do FVM em um projeto</summary>

```bash
# Dentro do VSCode no terminal:
fvm list

```

```bash
fvm use 3.10.3

```

```bash
fvm flutter doctor

```

```bash
### na raiz do projeto crie o seguinte:
#### source: https://fvm.app/docs/getting_started/configuration
.vscode/settings.json

```

```bash
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk",
  // Remove .fvm files from search
  "search.exclude": {
    "**/.fvm": true
  },
  // Remove from file watching
  "files.watcherExclude": {
    "**/.fvm": true
  }
}

```
