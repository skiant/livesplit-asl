// asl-help by ero (https://github.com/just-ero/asl-help/)
// Prior art by Biksel (https://github.com/Biksell/asl/blob/main/SWORN/SWORN.asl)

state("Sworn", "v0.52.1.0.660") {
  float GameTime: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x1F8, 0x20, 0x90, 0x68;
  bool GameTimeCounting: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x1F8, 0x20, 0x90, 0x6C;
  int BiomeRoomIndex: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x68, 0xEC;
  int RoomIndex: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x68, 0xE8;
  int BiomeIndex: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x68, 0xF0;
  int LevelManagerCurrentState: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x100, 0xC0;
  int RoundTableCurrentRound: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x100, 0x170;
  bool IsInRun: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x142;
  bool IsLobby: "GameAssembly.dll", 0x051DE730, 0x128, 0x0, 0x143;
}

state("Sworn", "v0.52.0.0.657") {
  float GameTime: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x1F8, 0x20, 0x90, 0x68;
  bool GameTimeCounting: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x1F8, 0x20, 0x90, 0x6C;
  int BiomeRoomIndex: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x68, 0xEC;
  int RoomIndex: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x68, 0xE8;
  int BiomeIndex: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x68, 0xF0;
  int LevelManagerCurrentState: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x100, 0xC0;
  int RoundTableCurrentRound: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x100, 0x170;
  bool IsInRun: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x142;
  bool IsLobby: "GameAssembly.dll", 0x05174D08, 0x128, 0x0, 0x143;
}

state("Sworn", "v0.51.2.0.613") {
  float GameTime: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x1F8, 0x20, 0x90, 0x68;
  bool GameTimeCounting: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x1F8, 0x20, 0x90, 0x6C;
  int BiomeRoomIndex: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x68, 0xEC;
  int RoomIndex: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x68, 0xE8;
  int BiomeIndex: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x68, 0xF0;
  int LevelManagerCurrentState: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x100, 0xB8;
  int RoundTableCurrentRound: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x100, 0x170;
  bool IsInRun: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x142;
  bool IsLobby: "GameAssembly.dll", 0x05074F30, 0x128, 0x0, 0x143;
}

state("Sworn", "v0.51.1.1.593") {
  float GameTime: "GameAssembly.dll", 0x050E0AC8, 0x140, 0x0, 0x68;
  bool GameTimeCounting: "GameAssembly.dll", 0x050E0AC8, 0x140, 0x0, 0x6C;
  int BiomeRoomIndex: "GameAssembly.dll", 0x050E0310, 0x140, 0x8, 0xEC;
  int RoomIndex: "GameAssembly.dll", 0x050E0310, 0x140, 0x8, 0xE8;
  int BiomeIndex: "GameAssembly.dll", 0x050E0310, 0x140, 0x0, 0xF0;
  int LevelManagerCurrentState: "GameAssembly.dll", 0x050D8330, 0x128, 0x0, 0x100, 0xB8;
  int RoundTableCurrentRound: "GameAssembly.dll", 0x050D8330, 0x128, 0x0, 0x100, 0x170;
  bool IsInRun: "GameAssembly.dll", 0x050D8330, 0x128, 0x0, 0x142;
  bool IsLobby: "GameAssembly.dll", 0x050D8330, 0x128, 0x0, 0x143;
}

startup {
  Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Unity");
  vars.Helper.LoadSceneManager = true;
  vars.Helper.AlertGameTime();
}

init {
  // Manually setting the version number until I figure out how to automate it
  version = "v0.52.1.0.660";

  vars.bossArenas = new List<string>() {
    "b370d40fbca123841b3ceea0a5a16186", //"Kingswood - Bane Of Crows Arena (level scene)", //
    "85d9faf8534a99048b624a6dfd9caf67", //"Kingswood - Questing Beast Arena (level scene)", //
    "d252359acf8dc4542ab7cc1fc4db1ad7", //"Kingswood - Gawain Arena Final (level scene)", //
    "dd7795900c12d084aada9c4b442aa295", //"Cornucopia - Mauler Rat Arena (level scene)", //
    "07f271142f0470345bf10106f0bf947e", //"Cornucopia - Raving Blight Arena (level scene)", //
    "cd292f0b2dccc4245850fc0843d5e977", //"Cornucopia - Percival Arena (level scene)" //
    "797c78d7e2ee46f40bb3e59441127529", // Deep Harbor - Galvanic Witch Arena (level data)
    "16094410534220c4aa496d7f1ba1e1a8", // Deep Harbor - Abyssal Watcher Arena (level data)
    "af97e3b30df446b4fad3470ff90cba79", // Deep Harbor - Lady Bedivere (level data)
    "68fe5cbe592e2bb499f6c1076892f395", // Camelot - Round Table Chamber (level data)
    "6fb2ce97ef04c5c46a9c34ae2963b212", // Camelot - Arthur Arena (level data)
    "424b8e9d561eb324e94e5e39c91318ae", // Somewhere - Morgana Boss Arena (level data)
  };

  vars.ignored = new List<string>() {
    "12d51152f6e170441aeb4bd6d6f32bba", // "Kingswood - Intro (level scene)",
    "3e46d34be382e6f40999ce606619fde5" // "Hub Area (level scene)"
  };

  current.activeScene = "";
  current.loadingScene = "";
  vars.canStart = true;
  vars.isLevelComplete = false;
  vars.combatStarted = false;
}

update {
  current.activeScene = vars.Helper.Scenes.Active.Name ?? current.activeScene;
  current.loadingScene = vars.Helper.Scenes.Loaded[0].Name ?? current.loadingScene;

  if (current.activeScene == "3e46d34be382e6f40999ce606619fde5" && !vars.canStart) vars.canStart = true;

  if(old.loadingScene != current.loadingScene) print("Livesplit - Loading: " + old.loadingScene + "->" + current.loadingScene);

  if(old.activeScene != current.activeScene) {
    print("Livesplit - Active: " + old.activeScene + "->" + current.activeScene);
    vars.isLevelComplete = false;
    vars.combatStarted = false;
    vars.canSplit = true;
  };

  if (old.LevelManagerCurrentState != current.LevelManagerCurrentState && current.LevelManagerCurrentState == 5) {
    vars.combatStarted = true;
  }

  if (!vars.isLevelComplete && vars.combatStarted && old.LevelManagerCurrentState != current.LevelManagerCurrentState && current.LevelManagerCurrentState == 7) {
    vars.isLevelComplete = true;
    print("Livesplit - Level Completed");
  }

}

onStart {
  vars.canStart = false;
}

onReset {
  vars.canStart = true;
}

start {
  return current.IsInRun == true && old.IsInRun == false;
}

gameTime {
  return TimeSpan.FromSeconds(current.GameTime);
}

split {
  // RoundTable
  if (vars.canSplit && current.activeScene == "68fe5cbe592e2bb499f6c1076892f395" && current.RoundTableCurrentRound == 4 && current.LevelManagerCurrentState == 7) {
    vars.canSplit = false;
    return true;
  }

  // All mid-run bosses & Major Foes
  if (vars.canSplit && vars.isLevelComplete && vars.bossArenas.Contains(current.activeScene)) {
    vars.canSplit = false;
    return true;
  }
}

reset {
  return old.activeScene != current.activeScene && current.activeScene == "3e46d34be382e6f40999ce606619fde5";
}

isLoading {
  return true;
}