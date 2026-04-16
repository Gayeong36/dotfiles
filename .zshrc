# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="pink-heart"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# --- [1] 지능형 명령어 하이라이팅 ---
typeset -A ZSH_HIGHLIGHT_STYLES

# 1. 실제 실행 가능한 파일/명령어일 때 (현재 폴더 파일 포함)
ZSH_HIGHLIGHT_STYLES[command]='fg=212,bold'         # 일반 명령어
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=212,bold'  # 현재 폴더 내 실행 파일 등
ZSH_HIGHLIGHT_STYLES[precommand]='fg=201,bold'      # sudo (더 밝은 핫핑크 볼드)

# 2. 내장 명령어 및 함수
ZSH_HIGHLIGHT_STYLES[builtin]='fg=212,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=213,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=213,bold'

# 3. 옵션 및 경로
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=218,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=218,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=255,bold'            # 경로도 볼드 처리해서 가독성 UP!

# 4. 에러 (파일이 없거나 명령어가 틀렸을 때)
# 존재하지 않는 걸 칠 때는 볼드 없이 밝은 레드로 표시해서 구분해줘.
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=197'

# --- [2] 자동 완성 및 ls 색상 (기존 유지) ---
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'
export LS_COLORS="di=1;38;5;212:fi=0;38;5;255:ln=1;38;5;219:ex=1;38;5;197:"
alias ls='ls --color=auto'
