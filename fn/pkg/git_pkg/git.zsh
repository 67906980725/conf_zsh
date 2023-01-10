_ts_git_pull_msg()
{
    tips="$1"
    # files changed 有更新且成功更新
    # Please commit your changes or stash them before you merge (中) / Merge with strategy ort failed (尾) 本地有未提交
    # Automatic merge failed 有更新且自动合并失败(冲突)
    # Already up to date. (已是最新不用更新)
    nothing_match=$(echo "$tips" | grep "Already up to date")
    success_match=$(echo "$tips" | grep "files changed")
    merge_match=$(echo "$tips" | grep "Automatic merge failed")
    commit_match=$(echo "$tips" | grep "Merge with strategy ort failed")
    if [ ${#nothing_match} -gt 0 ]; then
        echo "已是最新"
    elif [ ${#success_match} -gt 0 ]; then
        echo "更新成功"
    elif [ ${#merge_match} -gt 0 ]; then
        echo "请手动合并冲突"
    elif [ ${#commit_match} -gt 0 ]; then
        echo "请提交本地修改"
    fi
}

_update_git_proj()
{
    name="$1"
    dir="$2"
    remote="$3"
    branch="$4"
    build_fn="$5"

    cd "$dir"
    origin_msg=$(git pull $remote $branch)
    msg=$(_ts_git_pull_msg "$origin_msg")
    build_msg=""
    if [ "$msg" = "更新成功" ] && [ "$build_fn" != "" ]; then
        build_msg=$($build_fn)
    fi
    echo "${name}: $msg $build_msg"
}
