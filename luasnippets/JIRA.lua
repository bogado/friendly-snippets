return {
    s('code', { t{'{{'}, i(1), t{'}}'} , i(0) }),
    s('link', { t{'['}, i(2, "text" ), t{'|'}, i(1, "https://"), t{']'}, i(0)}),
    s('code block', { t{'{code:'}, c(1, { t('c++'), t('bash'), t('json'), t('ruby'), i(1)}), t{'}',''}, i(2), t{'', '{code}',''}, i(0) } ),
    s('quote block', { t{'{quote}',''}, i(1), t{'', '{quote}'}, i(0) })
}
