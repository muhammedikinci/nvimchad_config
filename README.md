# neovim chad custom config

## formatters

### gofumpt
```sh
go install mvdan.cc/gofumpt@latest
```

### golines
```sh
go install github.com/segmentio/golines@latest
```

### goimports-reviser
```sh
go install github.com/incu6us/goimports-reviser/v3@latest
```

## linters

### golangcilint

```sh
M.mason = {
  ensure_installed = {
    ...
    "golangcilint",
    ...
  },
}

```

## LSP Servers

/configs/lspconfig.lua

- gopls ()

## Font

https://www.jetbrains.com/lp/mono/
