# 현재 폴더 경로 가져오기
function get_pwd() { echo "${PWD/$HOME/~}" }

# kali -> custom user name
setopt PROMPT_SUBST
function get_name() {
  if [[ $USER == "kali" ]]; then
    echo "🩷(GOYEONG}"
  else
    echo "$USER"
  fi
}

# 권한에 따라 하트 모양 정하기
function get_heart() {
  if [[ $UID -eq 0 ]]; then
    echo "%B%F{202}💝%f%b"  # root일 땐 볼드 + 하트
  else
    echo "%B%F{212}🩷%f%b"  # 일반일 땐 볼드 + 핑크하트
  fi }

# 1. 왼쪽 프롬프트 (시간을 빼고 사용자 이름부터 시작!)
PROMPT='%B%F{212}$(get_name)%f%b %F{250}•◡•)◞♡%f %F{213}$(get_pwd)%f $(get_heart) '

# 2. 오른쪽 프롬프트 (시간을 이쪽으로 옮겼어!)
RPROMPT='%F{181}[%*]%f'

# 자동 완성 회색 글씨 색상 (244번 회색)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'
