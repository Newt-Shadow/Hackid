package io.sentry.util;
/* loaded from: classes2.dex */
public abstract class v {

    /* renamed from: a  reason: collision with root package name */
    private static final b f23805a = new b();

    /* loaded from: classes2.dex */
    private static class b extends ThreadLocal {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public t initialValue() {
            return new t();
        }
    }

    public static t a() {
        return (t) f23805a.get();
    }
}
