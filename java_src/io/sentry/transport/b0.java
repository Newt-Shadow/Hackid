package io.sentry.transport;
/* loaded from: classes2.dex */
public abstract class b0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b extends b0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f23693a;

        b(int i10) {
            super();
            this.f23693a = i10;
        }

        @Override // io.sentry.transport.b0
        public int c() {
            return this.f23693a;
        }

        @Override // io.sentry.transport.b0
        public boolean d() {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    private static final class c extends b0 {

        /* renamed from: a  reason: collision with root package name */
        static final c f23694a = new c();

        private c() {
            super();
        }

        @Override // io.sentry.transport.b0
        public int c() {
            return -1;
        }

        @Override // io.sentry.transport.b0
        public boolean d() {
            return true;
        }
    }

    private b0() {
    }

    public static b0 a() {
        return b(-1);
    }

    public static b0 b(int i10) {
        return new b(i10);
    }

    public static b0 e() {
        return c.f23694a;
    }

    public abstract int c();

    public abstract boolean d();
}
