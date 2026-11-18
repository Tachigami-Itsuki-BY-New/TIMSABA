# **How to Make a Build ?**
## **Issues**
**All changes must be made exclusively within the scope of a specific [issue](https://github.com/Tachigami-Itsuki-BY-New/TIMSABA/issues)**. Making changes without an issue is strictly prohibited for everyone. An **issue** must be small and limited to a single problem. If an **issue** is too large, it must be split into smaller ones. The title of the **issue** must briefly describe the problem being solved (in case of a bug) or the functionality being added. The body of the **issue** must include a detailed description of the problem to be solved, the reasons and motivations for considering it a problem, and a clear description of the desired behavior. The description of the **issue** must be completely sufficient for its implementation and testing by any authorized developer **without additional discussions or questions**. If this is not the case, the **issue** cannot be taken into development until further discussions are held.

## **Epics**
Sometimes **issues** become very large. For such cases, I suggest using **epics**. These are **issues** with a special [epic](https://github.com/Tachigami-Itsuki-BY-New/TIMSABA/labels) label that contain nested **sub-issues**. An epic must contain a list of logically related **issues** that can be completed independently of one another. No separate branches or **PRs** are created for an **epic**. Changes are made within the scope of the **sub-issues**. An **epic** is closed only when all of its **sub-issues** have been closed. Example of an [epic](https://github.com/Tachigami-Itsuki-BY-New/TIMSABA/issues/13).

## **Branches**
Each **issue** is developed in a separate branch. The branch must branch off from the **dev** branch. The branch name must correspond to the **issue** number. Changes within this branch can only be made within the scope of the given **issue**. A branch can contain any number of commits. After the work is completed, a pull request is created. The pull request must be linked to the corresponding **issue**. Before creating a **pull request**, it is mandatory to rebase onto the top of the base branch (or merge the base branch into the child branch) to avoid conflicts. Merging changes into the **dev** or **main** branches is done exclusively through **pull requests**. A **pull request** can only be accepted by someone other than its creator. Changes to a **pull request** are made only by its creator. After the **PR** is merged into **dev**, the merged changes must be verified by a QA engineer. After testing, the **issue** can be closed. If additional changes are required after testing, they are made within the same branch.

## **Labels**
### **TBD**
-------------------------------------------------------------------------------------------------------------------------------------------------
# **The mod version is formatted as x1.x2.x3.**
* **x1 is the major version.** It changes when old saves are incompatible with the new version.
* **x2 is the minor version.** It changes when we make a simple update.
* **x3 is the hotfix version.** It changes when we make an urgent fix.
-------------------------------------------------------------------------------------------------------------------------------------------------
# 🌌**Project T.I.M.S.A.B.A.**
**Welcome to the Project T.I.M.S.A.B.A.** - an ambitious project that merges the classic depth of **Angel's & Bob's** mods with the innovative mechanics of the **Space Age** expansion.
This is more than just a modpack; it’s a complete "from scratch" overhaul designed for those seeking ultimate challenge and logical consistency across all production chains.
# ✨**Key Features:**
* **Unified Balance:** Recipes, buildings, and items from the base game, Space Age, and core Bob's/Angel's** mods have been completely reworked to function as a single, cohesive system.
* **Energy Management:** Power generation and consumption parameters are fully redesigned. Building an efficient power grid now requires deep strategic planning.
* **Exclusive Content:** Added unique intermediate items, fluids, recipes, and technologies bridge the gap between Space Age tech and Angel's/Bob's production lines.
* **New Building Tiers:** Added new levels for Bob's and Angel's structures.
* **Visual Overhaul:** Updated icons for 95% of recipes and fluids, along with many items.
# 🪐**Custom Planet Compatibility:**
* **Deep Adaptation:** The modpack supports popular community-made custom planets, ensuring seamless gameplay.
* **Scaling Production Chains:** The unique resources of the new planets do not replace, but rather organically complement, the Angel's and Bob's mods.
* **Expanded Content:** Each planet has received new items, fluids, recipes, entities and technologies to varying degrees.
* **Currently fully supported and expanded:**
> * **[🌐Muluna, Moon of Nauvis](https://mods.factorio.com/mod/planet-muluna)**
> * **[🌐Moshine](https://mods.factorio.com/mod/Moshine)**
> * **[🌐Panglia](https://mods.factorio.com/mod/panglia_planet)**
> * **[🌐Planetaris: Arig](https://mods.factorio.com/mod/planetaris-arig)**
> * **[🌐Planetaris: Hyarion](https://mods.factorio.com/mod/planetaris-hyarion)**
> * **[🌐Planetaris: Tellus](https://mods.factorio.com/mod/planetaris-tellus)**
> * **[🌐Paracelsin](https://mods.factorio.com/mod/Paracelsin)**
> * **[🌐Corrundum](https://mods.factorio.com/mod/corrundum)**
> * **[🌐Secretas & Frozeta](https://mods.factorio.com/mod/secretas)**
> * **[🌐Terra Palus](https://mods.factorio.com/mod/terrapalus)**
> * **[🌐Castra Prime](https://mods.factorio.com/mod/castra-prime)**
> * **[🌐Shchierbin](https://mods.factorio.com/mod/shchierbin)**
> * **[🌐Maraxsis Classic](https://mods.factorio.com/mod/maraxsis-classic)**
> * **[🌐Vesta](https://mods.factorio.com/mod/skewer_planet_vesta)**
> * **[🌐Muria](https://mods.factorio.com/mod/Muria)**
> * **[🌐Pelagos](https://mods.factorio.com/mod/pelagos)**
> * **[🌐Apia-Carnova planet system](https://mods.factorio.com/mod/apia)**
> * **[🌐Lignumis](https://mods.factorio.com/mod/lignumis)**
> * **[🌐Aegis & Bellicos](https://mods.factorio.com/mod/bellicos-and-aegis)**
* *(More planets coming soon! Feel free to suggest a planet in our Telegram or Discord Server)*.
# ⚙️**Optimization & Polish:**
* **UPS Focused:** Maximum optimization for stable performance on large factories.
* **Clean UI:** All unused prototypes are removed to keep the interface and search menus clutter-free.
# 📜 **Credits and Resources:**
* This project was made possible thanks to the hard work of amazing authors from the Factorio community. Special thanks to:
> * **Authors of Bob's & Angel's mods** - for the monumental foundation, graphic assets, and inspiration.
> * **Authors of Periodic Madness & Scrap Industry mods** - for the graphic assets.
> * **Kirazy** - for the Reskins mod series.
> * **Horogon** - for creating unique mod settings.
> * **Vesper Wayfarer** - for icons for the "Flow Control (New)" addon.
> * **Udachnic** and **psaikher** - for patience and help with testing.
> * **Magapy** - for the reorganization of project development.
# ⚠️**ATTENTION:** The modpack is under active development. Your feedback and bug reports are vital!
* **Languages:**
> * **English**
> * **[Русский](https://mods.factorio.com/mod/TIMSABA-ru)**
> * **[Polski](https://mods.factorio.com/mod/TIMSABA-PL)**
> * **[Deutsch](https://mods.factorio.com/mod/TIMSABA_Deutsch)**
* **Compatibility:** With most mods.
* **My Contacts:** TGC: https://t.me/+fbP66l3k50U0NDIy.
# **Note: This description will be updated as the project evolves.**
-------------------------------------------------------------------------------------------------------------------------------------------------
**Q: Is TIMSABA compatible with other mods?**
**A:** Currently, stable performance is only guaranteed within the modpack itself. The list of compatible mods will be gradually expanded in future updates.

**Q: I found a bug or an error, where should I report it?**
**A:** You can report issues in two ways:
- **1.** Send me a direct message via Discord or Telegram (links are available on the mod page).
- **2.** Use the "Discussion" tab on this website, which is specifically designed for feedback and bug reports.

**Q: Do I need to start a new game to play TIMSABA?**
**A:** Yes, it is mandatory. The modpack introduces deep changes to balance and recipes that will not work correctly in existing save files.

**Q: Can my computer run this modpack?**
**A:** If you can run vanilla Factorio smoothly, TIMSABA will work just as well. There are no additional system requirements.

**Q: What exactly does this modpack change?**
**A:** It is a large-scale rebalance of existing game values along with the addition of new content:
- **Recipes:** All standard recipes have been reworked to varying degrees of complexity.
- **New Content:** Added new items, fluids, and unique production recipes.
- **Value Balancing:** Changed item weight parameters, stack sizes, building energy consumption, and energy generation methods.
- **Visual Tweaks:** Updated icons for all fluids, most recipes, and some items for better navigation.
- **Technology Economy:** Adjusted to match the overall modpack balance.

**Q: Can I use TIMSABA features for my own mods based on it?**
**A:** Yes, of course! You can find a full description of available functions and development guides in the README file of the development branch on GitHub.