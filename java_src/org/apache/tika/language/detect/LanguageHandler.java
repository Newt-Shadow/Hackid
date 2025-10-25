package org.apache.tika.language.detect;

import org.apache.tika.sax.WriteOutContentHandler;
/* loaded from: classes2.dex */
public class LanguageHandler extends WriteOutContentHandler {
    private final LanguageWriter writer;

    public LanguageHandler() {
        this(new LanguageWriter(LanguageDetector.getDefaultLanguageDetector().loadModels()));
    }

    public LanguageDetector getDetector() {
        return this.writer.getDetector();
    }

    public LanguageResult getLanguage() {
        return this.writer.getLanguage();
    }

    public LanguageHandler(LanguageWriter languageWriter) {
        super(languageWriter);
        this.writer = languageWriter;
    }

    public LanguageHandler(LanguageDetector languageDetector) {
        this(new LanguageWriter(languageDetector));
    }
}
