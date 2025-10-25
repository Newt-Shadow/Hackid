package androidx.browser.customtabs;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Integer f1733a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f1734b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f1735c;

    /* renamed from: d  reason: collision with root package name */
    public final Integer f1736d;

    /* renamed from: androidx.browser.customtabs.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0018a {

        /* renamed from: a  reason: collision with root package name */
        private Integer f1737a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f1738b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f1739c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f1740d;

        public a a() {
            return new a(this.f1737a, this.f1738b, this.f1739c, this.f1740d);
        }

        public C0018a b(int i10) {
            this.f1739c = Integer.valueOf(i10 | (-16777216));
            return this;
        }

        public C0018a c(int i10) {
            this.f1740d = Integer.valueOf(i10);
            return this;
        }

        public C0018a d(int i10) {
            this.f1738b = Integer.valueOf(i10);
            return this;
        }

        public C0018a e(int i10) {
            this.f1737a = Integer.valueOf(i10 | (-16777216));
            return this;
        }
    }

    a(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f1733a = num;
        this.f1734b = num2;
        this.f1735c = num3;
        this.f1736d = num4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle a() {
        Bundle bundle = new Bundle();
        Integer num = this.f1733a;
        if (num != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        Integer num2 = this.f1734b;
        if (num2 != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", num2.intValue());
        }
        Integer num3 = this.f1735c;
        if (num3 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", num3.intValue());
        }
        Integer num4 = this.f1736d;
        if (num4 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", num4.intValue());
        }
        return bundle;
    }
}
