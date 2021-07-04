function fzf-select-history() {
    BUFFER=$(history -n -r 1 | fzf --no-sort --query="$LBUFFER")
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N fzf-select-history
bindkey '^r' fzf-select-history

function fzf-select-files() {
    BUFFER="${LBUFFER}$(fd --type f | fzf --preview "bat  --color=always --style=header,grid --line-range :100 {}")"
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N fzf-select-files
bindkey '^s^f' fzf-select-files

function fzf-select-dirs() {
    BUFFER="${LBUFFER}$(fd --type d | fzf)"
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N fzf-select-dirs
bindkey '^s^d' fzf-select-dirs

function rgv() {
    if [ $# -eq 0 ]; then
        echo 'Need a string to search for!'
        echo 'Usage: rgv string'
        return 1
    fi

    search_words=$@

    search_result=$(
        rg --smart-case --vimgrep $search_words | \
        fzf --delimiter=':' \
            --preview='bat --color=always {1} -H {2} -r `expr {2} - 1`:`expr {2} + 1`'
    )

    if [ "$search_result" != '' ]; then
        file_path=`echo $search_result | awk -F':' '{print $1}'`
        line_number=`echo $search_result | awk -F':' '{print $2}'`
        column_number=`echo $search_result | awk -F':' '{print $3}'`
    else
        return
    fi

    nvim $file_path "+call cursor($line_number, $column_number)" "+set hlsearch | let @/ = \"$search_words\""
}

function fdv() {
    file_path=$(fd --type f | fzf --preview "bat  --color=always --style=header,grid --line-range :100 {}")
    nvim $file_path
}
