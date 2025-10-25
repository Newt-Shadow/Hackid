package ke;
/* loaded from: classes2.dex */
public class z extends a {

    /* renamed from: e  reason: collision with root package name */
    private final String f24950e;

    public z(String source) {
        kotlin.jvm.internal.m.e(source, "source");
        this.f24950e = source;
    }

    @Override // ke.a
    public int E(int i10) {
        if (i10 >= A().length()) {
            return -1;
        }
        return i10;
    }

    @Override // ke.a
    public int G() {
        boolean z10;
        int i10 = this.f24891a;
        if (i10 == -1) {
            return i10;
        }
        String A = A();
        while (i10 < A.length()) {
            char charAt = A.charAt(i10);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10) {
                break;
            }
            i10++;
        }
        this.f24891a = i10;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ke.a
    /* renamed from: O */
    public String A() {
        return this.f24950e;
    }

    @Override // ke.a
    public boolean e() {
        boolean z10;
        int i10 = this.f24891a;
        if (i10 == -1) {
            return false;
        }
        String A = A();
        while (i10 < A.length()) {
            char charAt = A.charAt(i10);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                i10++;
            } else {
                this.f24891a = i10;
                return B(charAt);
            }
        }
        this.f24891a = i10;
        return false;
    }

    @Override // ke.a
    public String i() {
        int Y;
        k('\"');
        int i10 = this.f24891a;
        Y = rd.b0.Y(A(), '\"', i10, false, 4, null);
        if (Y != -1) {
            for (int i11 = i10; i11 < Y; i11++) {
                if (A().charAt(i11) == '\\') {
                    return o(A(), this.f24891a, i11);
                }
            }
            this.f24891a = Y + 1;
            String substring = A().substring(i10, Y);
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        p();
        w((byte) 1, false);
        throw new xc.c();
    }

    @Override // ke.a
    public byte j() {
        boolean z10;
        String A = A();
        int i10 = this.f24891a;
        while (i10 != -1 && i10 < A.length()) {
            int i11 = i10 + 1;
            char charAt = A.charAt(i10);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10) {
                this.f24891a = i11;
                return b.a(charAt);
            }
            i10 = i11;
        }
        this.f24891a = A.length();
        return (byte) 10;
    }

    @Override // ke.a
    public void k(char c10) {
        boolean z10;
        if (this.f24891a == -1) {
            M(c10);
        }
        String A = A();
        int i10 = this.f24891a;
        while (i10 < A.length()) {
            int i11 = i10 + 1;
            char charAt = A.charAt(i10);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10) {
                this.f24891a = i11;
                if (charAt == c10) {
                    return;
                }
                M(c10);
            }
            i10 = i11;
        }
        this.f24891a = -1;
        M(c10);
    }
}
