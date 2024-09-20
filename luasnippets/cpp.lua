local function defname()
    return vim.fn.tr(vim.fn.toupper(vim.fn.expand("%:t")), '.', '_') .. "_INCLUDED"
end

local function align(before, size, after)
    size = size - #before - #after
    return before .. string.rep(" ", size) .. after
end

local function filename()
    return vim.fn.expand("%:t")
end

return {
    s('#guard', { t('#ifndef '), f(defname), t({'',''}), t('#define '), f(defname), t({'',''}), i(0), t({'', '', '#endif // ' }), f(defname) }),
    s('//top', {t('// '), f(function() return align(filename(), 79, "-*-C++-*--") end)}),
    s('bloomberg', {
        t({'namespace BloombergLP {', '', 'namespace '}),
        sn (1, { f(function() return string.gsub(filename(), '\\..*', '') end) } ),
        t({' {', ''}),
        i(0),
        t{'', '} // namespace '},
        i(1),
        t{'', '} // namespace BloombergLP'}
    }),
    s('//Notice', {
        t{
            '// ----------------------------------------------------------------------------',
            '// NOTICE:',
            '//      Copyright (C) Bloomberg L.P.,'
        },
        f(function() return os.date('%Y') end ),
        t {'',
            '//      All Rights Reserved.',
            '//      Property of Bloomberg L.P. (BLP)',
            '//      This software is made available solely pursuant to the',
            '//      terms of a BLP license agreement which governs its use.',
            '// ----------------------------- END-OF-FILE ----------------------------------',
        }
    })
}


