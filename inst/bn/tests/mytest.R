app <- ShinyDriver$new("../", seed = 123)
app$snapshotInit("mytest")

app$snapshot()
Sys.sleep(2)
app$setInputs(sidebarMenu = "structure")
Sys.sleep(4)
app$snapshot()
app$setInputs(net = "3")
app$setInputs(alg = "hc")
app$setInputs(type = "aic")
app$setInputs(sidebarMenu = "parameters")
Sys.sleep(1)
app$snapshot()
app$setInputs(met = "bayes")
app$setInputs(param = "dotplot")
app$setInputs(Node = "PCWP")
app$setInputs(sidebarMenu = "inference")
Sys.sleep(1)
app$snapshot()
app$setInputs(evidenceNode = "PCWP")
app$setInputs(evidence = "HIGH")
app$setInputs(event = "HIST")
app$setInputs(sidebarMenu = "measures")
app$setInputs(nodeMeasure = "nbr")
app$setInputs(nodeMeasure = "parents")
app$setInputs(nodeNames = "PCWP")
app$setInputs(dendrogram = "row")
app$setInputs(sidebarMenu = "editor")
app$setInputs(bookmark = "click")
app$setInputs(sidebarMenu = "structure")
app$setInputs(dataInput = "2")
app$uploadFile(file = "learning_test.csv")
