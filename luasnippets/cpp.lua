local function defname()
    return vim.fn.tr(vim.fn.toupper(vim.fn.expand("%:t")), '.', '_') .. "_INCLUDED"
end

return {
    s('#guard', { t('#ifndef '), f(defname), t({'',''}), t('#define '), f(defname), t({'',''}), i(0), t({'', '', '#endif // ' }), f(defname) })
}
