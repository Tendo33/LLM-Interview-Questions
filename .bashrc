# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval "$('/d/anaconda/Scripts/conda.exe' 'shell.bash' 'hook')"
# <<< conda initialize <<<

function git_branch {
    branch="$(git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //")"
    if [ "${branch}" != "" ]; then
        if [ "${branch}" = "(no branch)" ]; then
            branch="($(git rev-parse --short HEAD)...)"
        fi
        echo "($branch)"
    fi
}

#显示目录
function get_pwd {
    # echo `pwd`;
    #获取远程代码库名称
    git_url=$(git remote get-url origin 2>/dev/null | awk -F '/' '{print $NF}' | sed 's/\.git$//')
    # $(basename )
    project_path=$(pwd)
    #username=$(git config --global user.name 2>/dev/null)
    username='Simon'
    if [ "${username}" != "" ]; then
        username="@${username}:"
    fi
    echo -e "\033[01;34m${git_url}\033[01;36m${username}\033[01;33m${project_path}"
}

export PS1='\[$(get_pwd)\]\[\033[01;36m\]$(git_branch)\[\033[00m\]\$ '
