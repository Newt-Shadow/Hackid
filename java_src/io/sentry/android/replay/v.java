package io.sentry.android.replay;

import androidx.compose.ui.semantics.SemanticsPropertyKey;
import id.Function2;
/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final v f22815a = new v();

    /* renamed from: b  reason: collision with root package name */
    private static final SemanticsPropertyKey f22816b = new SemanticsPropertyKey("SentryPrivacy", a.f22818e);

    /* renamed from: c  reason: collision with root package name */
    public static final int f22817c = SemanticsPropertyKey.$stable;

    /* loaded from: classes2.dex */
    static final class a extends kotlin.jvm.internal.n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        public static final a f22818e = new a();

        a() {
            super(2);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final String invoke(String str, String str2) {
            kotlin.jvm.internal.m.e(str2, "<anonymous parameter 1>");
            return str;
        }
    }

    private v() {
    }

    public final SemanticsPropertyKey a() {
        return f22816b;
    }
}
