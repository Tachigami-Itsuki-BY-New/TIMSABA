# Milestones support

Optional integration with Milestones 1.5.2. Enable both mods and choose **TIMSABA - Family layout** in Milestones settings. On an existing save, select this preset explicitly: Milestones retains the previously selected preset after mod updates. Apply the selection in the settings window.

All production goals require **one** item; trains and robots need not be placed. Science goals are discovered from the final research ingredients, including planet mods. Early Rubia science variants are included separately. Missing prototypes are skipped, and duplicate goals are removed within this preset.

The early progression is Lignumis → provisional rocket → Nauvis → conventional rocket / personal spaceflight → Muluna → production of full platform components. The component goals track actual production, not technology unlocks. The initial planet is excluded from landing goals. With Rocket-Silo-Construction the conventional launch confirms the finished silo; no misleading goal for crafting a silo item that is built in stages is added.

Travel counters are hidden, recipe-free items. Event handlers record their production statistic once per force, and Milestones reads those statistics normally. No items are given to players, and no gameplay technologies are unlocked. These counters may appear in production statistics. The Milestones notification uses its normal “produced” wording for these counters; their names describe the actual travel event.

Only physical character travel counts; remote view does not. Platform destinations require departure and arrival at a different location. Stars are excluded. First observations of players and existing platforms establish a baseline, so adding the integration to an old save does not invent historical travel times. Production goals can use existing production history according to Milestones' normal behaviour. Travel is observed from installation onwards, with a polling fallback every 60 ticks for scripted transfers.

Milestones also loads addons from other mods. In particular, Bob's Tech adds its own transport-science goals (including 1,000 units). Choosing **TIMSABA - Family layout** directly from the preset dropdown applies the standalone preset without those addons; using automatic detection or the Reset action can append them again. This integration does not edit or replace another mod's remote interface.

## Local verification

Run `lua tests/milestones.lua` from the repository root. The standalone mocks cover optional loading, prototype filtering, deduplication, remote view, scripted landings, rockets, platform departures/arrivals and existing-save baselines. These checks do not replace loading Factorio.

## In-game verification

- New Lignumis game: no landing goal should complete just for spawning.
- Produce one science pack, each train tier and both robot families: each corresponding goal completes once.
- Launch the provisional rocket and land on Nauvis: separate launch and landing goals complete.
- Launch a conventional rocket from Nauvis; physically board a platform, then land on Muluna.
- Open remote view on another planet: no landing goal should complete.
- Create a platform in orbit: no voyage goal. Travel to a different location: first voyage completes. Non-planet destinations have separate arrival goals.
- Reload and repeat a visit: no duplicate counter. In multiplayer the counter belongs to the travelling player's/platform's force.
- Disable Milestones: no counters, remote interface or travel handlers should be added.

API references: [physical surfaces](https://lua-api.factorio.com/latest/classes/LuaPlayer.html#physical_surface), [platform state events](https://lua-api.factorio.com/latest/events.html#on_space_platform_changed_state), [flow counters](https://lua-api.factorio.com/latest/classes/LuaFlowStatistics.html#on_flow).

## Family layout

Enable Milestones' **group milestones** display setting. Each equipment family is a separate section: ordinary drills, area drills, planetary drills, pumpjacks, centrifuges, each furnace family, assembling machines, engines, turbines, boilers, each solar-panel size, trains, robots and module families. Empty families are omitted when the corresponding mod is absent.

The preset gives tier order within each family. Milestones 1.5.2 itself sorts completed goals by completion time and chooses its column count based on window size. Therefore long families wrap; a preset cannot force a fixed column count or keep completed tiers in strict tier order. Compact display can fit more columns. No changes to Milestones itself are required for these family sections. Select TIMSABA - Family layout again and apply the preset to update existing layouts.

New tooltip items include wooden/military/space/hyper belts, burner/hyper assemblers, gold/copper construction robots, ordinary/area/planetary drills, all pumpjacks/centrifuges/steam engines/turbines/boilers/electric mixing furnaces, rigor modules (including `rigor-module-4-S`) and Rubia's `rubia-efficiency-module4`. The latter two are distinct from Bob's quality/efficiency modules.

## Localization

TIMSABA ships only English text for this integration. Russian translations belong in the separate TIMSABA localization mod, using the keys from `locale/en/milestones.cfg`. Family names are English strings supplied directly to Milestones.

## Refreshing an existing save

The TIMSABA version remains 2.0.0. Existing saves keep their old selected milestone list by design: choose **TIMSABA - Family layout** in the Milestones settings and apply the selection. Seeing the old sections `Railway`, `Robots`, `Power`, `Industry` or `Modules` means the old list is still selected. The current preset has `Locomotives`, `Construction robots`, `Electric mining drills`, etc.

Transport belts are discovered from visible placeable belt items and sorted by `place_result.belt_speed`, including wooden, military, space and hyper variants. Quality goals include every visible module prototype, grouped first by rare/epic/legendary, then by module category, with tier order inside each family. All eight TIMSABA tiers are included. Hidden helper modules are excluded.

## Equipment qualities and Resources

Tanks MK1–MK3, power armor MK1–MK5, mech armor, Antron, Tankotron, Logitron, Spidertron and Heavy Spidertron have normal production goals and separate rare/epic/legendary goals. Additional visible spider-vehicle items from installed mods are discovered automatically. Each equipment family remains separate within each quality.

The redundant `Resources` row with productivity modules comes from the **Bob's Modules** addon. It is not in this standalone preset. To remove it from the displayed list, select **TIMSABA - Family layout** directly in Milestones settings and apply. Automatic initialization and Reset append other mods' addons again. The integration cannot disable those addons through Milestones 1.5.2's preset API; it does not modify Bob's Modules or Milestones.

## Science progression and armored trains

Science production goals follow the supplied TIMSABA progression: wood → steam → automation → logistic → chemical → military → advanced logistic → production → utility → Bob's alien science family → space → interstellar → electromagnetic → metallurgic → agricultural → lightweight → metabolic → acidworking → vanadium → compression → pulsar → polishing → refraction → bioengineering → pathological → cryogenic → galvanization → hydraulic → golden → gas manipulation → promethium. Alien research itself is a technology, so its eight produced packs occupy that stage; this preset does not substitute technology research for production goals. Other installed science packs remain after the ordered sequence. Missing optional packs are skipped. Milestones' own completed-goal sorting still uses completion times.

Rubia's armored locomotive, cargo wagon and fluid wagon have separate first-production goals under `Armored trains`. These are different from the Bob's armored trains removed by TIMSABA. Reapply `TIMSABA - Family layout` to refresh an existing save's list.
