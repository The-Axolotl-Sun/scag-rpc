---
sidebar_position: 4
---

# Manually Printing

Although we provide ScagRPC to "simplify" the process and make code more readable, since ScagJPT just reads your local machine's Roblox logs, you can always just use [`print()`](https://create.roblox.com/docs/reference/engine/globals/LuaGlobals#print).

## Print Format

All ScagJPT print calls follow this format:

```
[SJPT]:command,data
```

| Section | Description |
|------|-------------|
| `[SJPT]:` | The prefix that ScagJPT will listen for |
| `command` | The action you want ScagJPT to perform (e.g. `say`). You can view all commands [here](https://scag.theaxolotlsun.com/api/ScagRPC#Commands). |
| `data` | The data to pass along with the command. |

:::warning
ScagRPC handles comma escaping automatically. If you are manually printing strings that contain commas, you must escape them as `,,` to prevent them from being interpreted as parameter separators.
:::

## API Reference

### `.Say(text: string)`

Sends a message via the `say` command.

| Parameter | Type | Description |
|-----------|------|-------------|
| `text` | `string` | The message to say. |

**Print equivalent:**
```lua
print("[SJPT]:say," .. text)
print("[SJPT]:say,hello world") -- Scag will say "hello world"
print("[SJPT]:say,i am scag,, hello!") -- Scag will say "i am scag, hello!" (notice the double commas to escape the comma in the string)
```

---

### `.Fling(direction: Vector2)`

Flings using the `fling` command. The `Vector2` is split into two separate parameters.

| Parameter | Type | Description |
|-----------|------|-------------|
| `direction` | `Vector2` | The X and Y fling direction/force. |

**Print equivalent:**
```lua
print("[SJPT]:fling," .. direction.X .. "," .. direction.Y)
print("[SJPT]:fling,12,0") -- Scag will fling to the right
print("[SJPT]:fling,0,-5") -- Scag will fling downwards
```

