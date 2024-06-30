local Translations = {
    progress = {
        ["processingmeth"] = "Processing Meth...",
        ["processingcocaine"] = "Processing Cocaine...",
        ["packagingmeth"] = "Packaging Meth...",
        ["packagingcocaine"] = "Packaging Cocaine...",
    },
    notify = {
        ["needprocmeth"] = "You need processed Meth in order to start the packaging..",
        ["needproccocaine"] = "You need processed Cocaine in order to start the packaging..",
        ["gotprocmeth"] = "You got %d bag(s) of processed Meth",
        ["gotproccocaine"] = "You got %d bag(s) of processed Cocaine",
        ["gotmeth"] = "You got %d bag(s) of Meth",
        ["gotcocaine"] = "You got %d bag(s) of Cocaine",
    },
    press = {
        ["startmethproc"] = "Press ~g~[E]~w~ to process Meth",
        ["startmethpack"] = "Press ~g~[E]~w~ to package Meth",
        ["startcoceproc"] = "Press ~g~[E]~w~ to process Cocaine",
        ["startcocepack"] = "Press ~g~[E]~w~ to package Cocaine",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})