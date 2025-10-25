package org.apache.tika.language.detect;

import java.util.Locale;
/* loaded from: classes2.dex */
public class LanguageResult {
    public static final LanguageResult NULL = new LanguageResult("", LanguageConfidence.NONE, 0.0f);
    private final LanguageConfidence confidence;
    private final String language;
    private final float rawScore;

    public LanguageResult(String str, LanguageConfidence languageConfidence, float f10) {
        this.language = str;
        this.confidence = languageConfidence;
        this.rawScore = f10;
    }

    public LanguageConfidence getConfidence() {
        return this.confidence;
    }

    public String getLanguage() {
        return this.language;
    }

    public float getRawScore() {
        return this.rawScore;
    }

    public boolean isLanguage(String str) {
        String[] split = str.split("\\-");
        String[] split2 = this.language.split("\\-");
        int min = Math.min(split.length, split2.length);
        for (int i10 = 0; i10 < min; i10++) {
            if (!split[i10].equalsIgnoreCase(split2[i10])) {
                return false;
            }
        }
        return true;
    }

    public boolean isReasonablyCertain() {
        if (this.confidence == LanguageConfidence.HIGH) {
            return true;
        }
        return false;
    }

    public boolean isUnknown() {
        if (this.confidence == LanguageConfidence.NONE) {
            return true;
        }
        return false;
    }

    public String toString() {
        return String.format(Locale.US, "%s: %s (%f)", this.language, this.confidence, Float.valueOf(this.rawScore));
    }
}
