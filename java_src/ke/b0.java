package ke;
/* loaded from: classes2.dex */
public final class b0 extends z {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(String source) {
        super(source);
        kotlin.jvm.internal.m.e(source, "source");
    }

    @Override // ke.a
    public byte C() {
        String A = A();
        int G = G();
        if (G < A.length() && G != -1) {
            this.f24891a = G;
            return b.a(A.charAt(G));
        }
        return (byte) 10;
    }

    @Override // ke.z, ke.a
    public int G() {
        boolean z10;
        int i10;
        int Z;
        int i11 = this.f24891a;
        if (i11 == -1) {
            return i11;
        }
        String A = A();
        while (i11 < A.length()) {
            char charAt = A.charAt(i11);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10) {
                if (charAt != '/' || (i10 = i11 + 1) >= A.length()) {
                    break;
                }
                char charAt2 = A.charAt(i10);
                if (charAt2 == '*') {
                    Z = rd.b0.Z(A, "*/", i11 + 2, false, 4, null);
                    if (Z != -1) {
                        i11 = Z + 2;
                    } else {
                        this.f24891a = A.length();
                        a.v(this, "Expected end of the block comment: \"*/\", but had EOF instead", 0, null, 6, null);
                        throw new xc.c();
                    }
                } else if (charAt2 != '/') {
                    break;
                } else {
                    i11 = rd.b0.Y(A, '\n', i11 + 2, false, 4, null);
                    if (i11 == -1) {
                        i11 = A.length();
                    }
                }
            }
            i11++;
        }
        this.f24891a = i11;
        return i11;
    }

    @Override // ke.z, ke.a
    public boolean e() {
        int G = G();
        if (G < A().length() && G != -1) {
            return B(A().charAt(G));
        }
        return false;
    }

    @Override // ke.z, ke.a
    public byte j() {
        String A = A();
        int G = G();
        if (G < A.length() && G != -1) {
            this.f24891a = G + 1;
            return b.a(A.charAt(G));
        }
        return (byte) 10;
    }

    @Override // ke.z, ke.a
    public void k(char c10) {
        String A = A();
        int G = G();
        if (G >= A.length() || G == -1) {
            this.f24891a = -1;
            M(c10);
        }
        char charAt = A.charAt(G);
        this.f24891a = G + 1;
        if (charAt == c10) {
            return;
        }
        M(c10);
    }
}
