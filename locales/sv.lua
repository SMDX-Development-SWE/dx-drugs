local Translations = {
    progress = {
        ["processingmeth"] = "Processar Meth...",
        ["processingcocaine"] = "Processar Kokain...",
        ["packagingmeth"] = "Packeterar Meth...",
        ["packagingcocaine"] = "Packeterar Kokain...",
    },
    notify = {
        ["needprocmeth"] = "Du behöver urbankat Meth för att kunna påbörja packeteringen..",
        ["needproccocaine"] = "Du behöver processat Kokain innan du kan påbörja packeteringen..",
        ["gotprocmeth"] = "Du fick 1 påse urbankat Meth",
        ["gotproccocaine"] = "Du fick 1 påse processat Kokain",
        ["gotmeth"] = "Du fick 1 påse Meth",
        ["gotcocaine"] = "Du fick 1 påse Kokain",
    },
    press = {
        ["startmethproc"] = "Tryck på ~g~[E]~w~ för att processa Meth",
        ["startmethpack"] = "Tryck på ~g~[E]~w~ för att packetera Meth",
        ["startcoceproc"] = "Tryck på ~g~[E]~w~ för att processa Kokain",
        ["startcocepack"] = "tryck på ~g~[E]~w~ för att packetera Kokain",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})