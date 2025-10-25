package io.flutter.plugin.editing;

import io.flutter.embedding.engine.FlutterJNI;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class FlutterTextUtils {
    public static final int CANCEL_TAG = 917631;
    public static final int CARRIAGE_RETURN = 13;
    public static final int COMBINING_ENCLOSING_KEYCAP = 8419;
    public static final int LINE_FEED = 10;
    public static final int ZERO_WIDTH_JOINER = 8205;
    private final FlutterJNI flutterJNI;

    public FlutterTextUtils(FlutterJNI flutterJNI) {
        this.flutterJNI = flutterJNI;
    }

    public int getOffsetAfter(CharSequence charSequence, int i10) {
        int charCount;
        int length = charSequence.length();
        int i11 = length - 1;
        if (i10 >= i11) {
            return length;
        }
        int codePointAt = Character.codePointAt(charSequence, i10);
        int charCount2 = Character.charCount(codePointAt);
        int i12 = i10 + charCount2;
        int i13 = 0;
        if (i12 == 0) {
            return 0;
        }
        if (codePointAt == 10) {
            if (Character.codePointAt(charSequence, i12) == 13) {
                charCount2++;
            }
            return i10 + charCount2;
        } else if (isRegionalIndicatorSymbol(codePointAt)) {
            if (i12 < i11 && isRegionalIndicatorSymbol(Character.codePointAt(charSequence, i12))) {
                int i14 = i10;
                while (i14 > 0 && isRegionalIndicatorSymbol(Character.codePointBefore(charSequence, i10))) {
                    i14 -= Character.charCount(Character.codePointBefore(charSequence, i10));
                    i13++;
                }
                if (i13 % 2 == 0) {
                    charCount2 += 2;
                }
                return i10 + charCount2;
            }
            return i12;
        } else {
            if (isKeycapBase(codePointAt)) {
                charCount2 += Character.charCount(codePointAt);
            }
            if (codePointAt == 8419) {
                int codePointBefore = Character.codePointBefore(charSequence, i12);
                int charCount3 = i12 + Character.charCount(codePointBefore);
                if (charCount3 < length && isVariationSelector(codePointBefore)) {
                    int codePointAt2 = Character.codePointAt(charSequence, charCount3);
                    if (isKeycapBase(codePointAt2)) {
                        charCount2 += Character.charCount(codePointBefore) + Character.charCount(codePointAt2);
                    }
                } else if (isKeycapBase(codePointBefore)) {
                    charCount2 += Character.charCount(codePointBefore);
                }
                return i10 + charCount2;
            }
            if (isEmoji(codePointAt)) {
                boolean z10 = false;
                int i15 = 0;
                do {
                    if (z10) {
                        charCount2 += Character.charCount(codePointAt) + i15 + 1;
                        z10 = false;
                    }
                    if (isEmojiModifier(codePointAt)) {
                        break;
                    }
                    if (i12 < length) {
                        codePointAt = Character.codePointAt(charSequence, i12);
                        i12 += Character.charCount(codePointAt);
                        if (codePointAt == 8419) {
                            int codePointBefore2 = Character.codePointBefore(charSequence, i12);
                            int charCount4 = i12 + Character.charCount(codePointBefore2);
                            if (charCount4 < length && isVariationSelector(codePointBefore2)) {
                                int codePointAt3 = Character.codePointAt(charSequence, charCount4);
                                if (isKeycapBase(codePointAt3)) {
                                    charCount2 += Character.charCount(codePointBefore2) + Character.charCount(codePointAt3);
                                }
                            } else if (isKeycapBase(codePointBefore2)) {
                                charCount2 += Character.charCount(codePointBefore2);
                            }
                            return i10 + charCount2;
                        }
                        if (isEmojiModifier(codePointAt)) {
                            charCount = Character.charCount(codePointAt);
                        } else if (isVariationSelector(codePointAt)) {
                            charCount = Character.charCount(codePointAt);
                        } else if (codePointAt == 8205) {
                            codePointAt = Character.codePointAt(charSequence, i12);
                            i12 += Character.charCount(codePointAt);
                            if (i12 < length && isVariationSelector(codePointAt)) {
                                codePointAt = Character.codePointAt(charSequence, i12);
                                int charCount5 = Character.charCount(codePointAt);
                                i12 += Character.charCount(codePointAt);
                                i15 = charCount5;
                            } else {
                                i15 = 0;
                            }
                            z10 = true;
                            if (i12 < length || !z10) {
                                break;
                                break;
                            }
                        }
                        charCount2 += charCount + 0;
                        break;
                    }
                    i15 = 0;
                    if (i12 < length) {
                        break;
                    }
                } while (isEmoji(codePointAt));
            }
            return i10 + charCount2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0155 A[EDGE_INSN: B:103:0x0155->B:96:0x0155 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x014d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getOffsetBefore(java.lang.CharSequence r9, int r10) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugin.editing.FlutterTextUtils.getOffsetBefore(java.lang.CharSequence, int):int");
    }

    public boolean isEmoji(int i10) {
        return this.flutterJNI.isCodePointEmoji(i10);
    }

    public boolean isEmojiModifier(int i10) {
        return this.flutterJNI.isCodePointEmojiModifier(i10);
    }

    public boolean isEmojiModifierBase(int i10) {
        return this.flutterJNI.isCodePointEmojiModifierBase(i10);
    }

    public boolean isKeycapBase(int i10) {
        return (48 <= i10 && i10 <= 57) || i10 == 35 || i10 == 42;
    }

    public boolean isRegionalIndicatorSymbol(int i10) {
        return this.flutterJNI.isCodePointRegionalIndicator(i10);
    }

    public boolean isTagSpecChar(int i10) {
        return 917536 <= i10 && i10 <= 917630;
    }

    public boolean isVariationSelector(int i10) {
        return this.flutterJNI.isCodePointVariantSelector(i10);
    }
}
