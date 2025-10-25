package b0;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
/* loaded from: classes.dex */
public abstract class k implements Spannable {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final TextPaint f3671a;

        /* renamed from: b  reason: collision with root package name */
        private final TextDirectionHeuristic f3672b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3673c;

        /* renamed from: d  reason: collision with root package name */
        private final int f3674d;

        /* renamed from: e  reason: collision with root package name */
        final PrecomputedText.Params f3675e;

        /* renamed from: b0.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0070a {

            /* renamed from: a  reason: collision with root package name */
            private final TextPaint f3676a;

            /* renamed from: c  reason: collision with root package name */
            private int f3678c = 1;

            /* renamed from: d  reason: collision with root package name */
            private int f3679d = 1;

            /* renamed from: b  reason: collision with root package name */
            private TextDirectionHeuristic f3677b = TextDirectionHeuristics.FIRSTSTRONG_LTR;

            public C0070a(TextPaint textPaint) {
                this.f3676a = textPaint;
            }

            public a a() {
                return new a(this.f3676a, this.f3677b, this.f3678c, this.f3679d);
            }

            public C0070a b(int i10) {
                this.f3678c = i10;
                return this;
            }

            public C0070a c(int i10) {
                this.f3679d = i10;
                return this;
            }

            public C0070a d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f3677b = textDirectionHeuristic;
                return this;
            }
        }

        a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i10, int i11) {
            PrecomputedText.Params.Builder breakStrategy;
            PrecomputedText.Params.Builder hyphenationFrequency;
            PrecomputedText.Params.Builder textDirection;
            PrecomputedText.Params build;
            if (Build.VERSION.SDK_INT >= 29) {
                breakStrategy = j.a(textPaint).setBreakStrategy(i10);
                hyphenationFrequency = breakStrategy.setHyphenationFrequency(i11);
                textDirection = hyphenationFrequency.setTextDirection(textDirectionHeuristic);
                build = textDirection.build();
                this.f3675e = build;
            } else {
                this.f3675e = null;
            }
            this.f3671a = textPaint;
            this.f3672b = textDirectionHeuristic;
            this.f3673c = i10;
            this.f3674d = i11;
        }

        public boolean a(a aVar) {
            if (this.f3673c != aVar.b() || this.f3674d != aVar.c() || this.f3671a.getTextSize() != aVar.e().getTextSize() || this.f3671a.getTextScaleX() != aVar.e().getTextScaleX() || this.f3671a.getTextSkewX() != aVar.e().getTextSkewX() || this.f3671a.getLetterSpacing() != aVar.e().getLetterSpacing() || !TextUtils.equals(this.f3671a.getFontFeatureSettings(), aVar.e().getFontFeatureSettings()) || this.f3671a.getFlags() != aVar.e().getFlags() || !this.f3671a.getTextLocales().equals(aVar.e().getTextLocales())) {
                return false;
            }
            if (this.f3671a.getTypeface() == null) {
                if (aVar.e().getTypeface() != null) {
                    return false;
                }
                return true;
            } else if (!this.f3671a.getTypeface().equals(aVar.e().getTypeface())) {
                return false;
            } else {
                return true;
            }
        }

        public int b() {
            return this.f3673c;
        }

        public int c() {
            return this.f3674d;
        }

        public TextDirectionHeuristic d() {
            return this.f3672b;
        }

        public TextPaint e() {
            return this.f3671a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (a(aVar) && this.f3672b == aVar.d()) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return c0.b.b(Float.valueOf(this.f3671a.getTextSize()), Float.valueOf(this.f3671a.getTextScaleX()), Float.valueOf(this.f3671a.getTextSkewX()), Float.valueOf(this.f3671a.getLetterSpacing()), Integer.valueOf(this.f3671a.getFlags()), this.f3671a.getTextLocales(), this.f3671a.getTypeface(), Boolean.valueOf(this.f3671a.isElegantTextHeight()), this.f3672b, Integer.valueOf(this.f3673c), Integer.valueOf(this.f3674d));
        }

        public String toString() {
            String fontVariationSettings;
            StringBuilder sb2 = new StringBuilder("{");
            sb2.append("textSize=" + this.f3671a.getTextSize());
            sb2.append(", textScaleX=" + this.f3671a.getTextScaleX());
            sb2.append(", textSkewX=" + this.f3671a.getTextSkewX());
            int i10 = Build.VERSION.SDK_INT;
            sb2.append(", letterSpacing=" + this.f3671a.getLetterSpacing());
            sb2.append(", elegantTextHeight=" + this.f3671a.isElegantTextHeight());
            sb2.append(", textLocale=" + this.f3671a.getTextLocales());
            sb2.append(", typeface=" + this.f3671a.getTypeface());
            if (i10 >= 26) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(", variationSettings=");
                fontVariationSettings = this.f3671a.getFontVariationSettings();
                sb3.append(fontVariationSettings);
                sb2.append(sb3.toString());
            }
            sb2.append(", textDir=" + this.f3672b);
            sb2.append(", breakStrategy=" + this.f3673c);
            sb2.append(", hyphenationFrequency=" + this.f3674d);
            sb2.append("}");
            return sb2.toString();
        }

        public a(PrecomputedText.Params params) {
            TextPaint textPaint;
            TextDirectionHeuristic textDirection;
            int breakStrategy;
            int hyphenationFrequency;
            textPaint = params.getTextPaint();
            this.f3671a = textPaint;
            textDirection = params.getTextDirection();
            this.f3672b = textDirection;
            breakStrategy = params.getBreakStrategy();
            this.f3673c = breakStrategy;
            hyphenationFrequency = params.getHyphenationFrequency();
            this.f3674d = hyphenationFrequency;
            this.f3675e = Build.VERSION.SDK_INT < 29 ? null : params;
        }
    }
}
