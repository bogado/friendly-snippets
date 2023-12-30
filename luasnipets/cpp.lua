local function defname()
    return vim.fn.expand("%:t").toupper().tr('.', '_')
end

print("hi")

return {
    s({ name="Header guard", trig = "#guard", desc = "Header guard" }, {
        t('#ifndef '), i(1, f(defname)),
        t({""}),
        t("#define "), ai(1),
        t({""}),
        i(0),
        t({"", "#endif"})
    })
}, {}
