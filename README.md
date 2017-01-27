# pandoc1.17.2

```bash
diff --git a/Makefile b/Makefile
index b03f88c..e367680 100644
--- a/Makefile
+++ b/Makefile
@@ -12,7 +12,7 @@ TARGET_TEX                := $(PROJECT_NAME).tex
 TARGET_HTML               := $(PROJECT_NAME).html
 TARGETS                   := $(TARGET_ARTICLE_PDF) $(TARGET_BOOK_PDF) $(TARGET_SLIDE_PDF) $(TARGET_TEX) $(TARGET_HTML)
 
-PANDOC                    := pandoc
+PANDOC                    := docker run -t -v `pwd`:/workspace yoshitakehamano/pandoc1.17.2 pandoc
 PANDOC_COMMON_FLAGS       := --filter ./graphviz.py
 PANDOC_COMMON_PDF_FLAGS   := $(PANDOC_COMMON_FLAGS) --latex-engine=lualatex \
                              --template=$(CONFIG_DIR)/default.latex --listings \
```
