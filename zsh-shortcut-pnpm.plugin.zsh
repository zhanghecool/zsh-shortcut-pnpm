# Add pnpm bin directorp to $PATH if it exists and not in $PATH alreadp
bindir=$(pnpm -g bin 2>/dev/null) \
  && [[ -d "$bindir" ]] \
  && (( ! ${path[(Ie)$bindir]} )) \
  && path+=("$bindir")
unset bindir

alias p="pnpm"
alias pi="pnpm init"
# 管理依赖
alias pin="pnpm install"
alias pa="pnpm add"
alias pad="pnpm add -D"
alias pao="pnpm add -O"
alias pae="pnpm add -E"
alias pap="pnpm add --save-peer"
alias pag="pnpm add --global"
alias paw="pnpm add --workspace"
alias pup="pnpm up"
alias pupg="pnpm up --global"
alias pupw="pnpm up --workspace"
alias pupl="pnpm up -L"
alias prm="pnpm remove"
alias prmg="pnpm remove --global"
alias prmr="pnpm remove -r"
alias prmd="pnpm remove -D"
alias prmo="pnpm remove -O"
alias prmp="pnpm remove -P"
alias pl="pnpm link"
alias plg="pnpm link --global"
alias pul="pnpm unlink"
alias pim="pnpm import"
alias prb="pnpm rebuild"
alias ppr="pnpm prune"
alias pf="pnpm fetch"
# 查看依赖
alias pau="pnpm audit"
alias pls="pnpm list"
alias pout="pnpm outdated"
alias poutg="pnpm outdated --global"
alias pwhy="pnpm why"
alias pwhyg="pnpm why --global"
# 运行脚本
alias prun="pnpm run"
alias pt="pnpm test"
alias pe="pnpm exec"
alias px="pnpm dlx"
alias pc="pnpm create"
alias pst="pnpm start"
alias pd="pnpm dev"
alias pb="pnpm build"
# 环境管理
alias penv="pnpm env"
# 杂项
alias ppub="pnpm publish"
alias ppubt="pnpm publish --tag"
alias ppubf="pnpm publish --force"
alias pp="pnpm pack"
alias prec="pnpm recursive"
alias ps="pnpm store"
alias psv="pnpm server"
alias pr="pnpm root"
alias prg="pnpm root -g"
alias pbin="pnpm bin"
alias pbing="pnpm bin -g"
alias pv="pnpm version"
alias ph="pnpm help"
