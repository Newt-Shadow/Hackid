package n6;
/* loaded from: classes.dex */
public abstract class d implements n {

    /* loaded from: classes.dex */
    static abstract class a extends d {
        a() {
        }

        @Override // n6.n
        public /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.b((Character) obj);
        }
    }

    /* loaded from: classes.dex */
    private static final class b extends a {

        /* renamed from: a  reason: collision with root package name */
        private final char f26422a;

        b(char c10) {
            this.f26422a = c10;
        }

        @Override // n6.d
        public boolean e(char c10) {
            if (c10 == this.f26422a) {
                return true;
            }
            return false;
        }

        public String toString() {
            String g10 = d.g(this.f26422a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(g10).length() + 18);
            sb2.append("CharMatcher.is('");
            sb2.append(g10);
            sb2.append("')");
            return sb2.toString();
        }
    }

    /* loaded from: classes.dex */
    static abstract class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private final String f26423a;

        c(String str) {
            this.f26423a = (String) m.i(str);
        }

        public final String toString() {
            return this.f26423a;
        }
    }

    /* renamed from: n6.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0257d extends c {

        /* renamed from: b  reason: collision with root package name */
        static final C0257d f26424b = new C0257d();

        private C0257d() {
            super("CharMatcher.none()");
        }

        @Override // n6.d
        public int c(CharSequence charSequence, int i10) {
            m.k(i10, charSequence.length());
            return -1;
        }

        @Override // n6.d
        public boolean e(char c10) {
            return false;
        }
    }

    protected d() {
    }

    public static d d(char c10) {
        return new b(c10);
    }

    public static d f() {
        return C0257d.f26424b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(char c10) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(c10 & 15);
            c10 = (char) (c10 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public boolean b(Character ch) {
        return e(ch.charValue());
    }

    public int c(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        m.k(i10, length);
        while (i10 < length) {
            if (e(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public abstract boolean e(char c10);
}
