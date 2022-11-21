_build_icalinguapp()
{
    cd ~/.local/project/i/Icalingua-plus-plus/icalingua
    if $(pnpm ibuild); then
        echo "构建成功"
    else
        echo "构建失败"
    fi
}

