package u9;

import org.apache.tika.pipes.PipesConfigBase;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final j9.a f31078a;

    /* renamed from: b  reason: collision with root package name */
    private final m f31079b = new m();

    /* renamed from: c  reason: collision with root package name */
    private final StringBuilder f31080c = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(j9.a aVar) {
        this.f31078a = aVar;
    }

    private n b(int i10) {
        char c10;
        int f10 = f(i10, 5);
        if (f10 == 15) {
            return new n(i10 + 5, '$');
        }
        if (f10 >= 5 && f10 < 15) {
            return new n(i10 + 5, (char) ((f10 + 48) - 5));
        }
        int f11 = f(i10, 6);
        if (f11 >= 32 && f11 < 58) {
            return new n(i10 + 6, (char) (f11 + 33));
        }
        switch (f11) {
            case 58:
                c10 = '*';
                break;
            case 59:
                c10 = ',';
                break;
            case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                c10 = '-';
                break;
            case 61:
                c10 = '.';
                break;
            case 62:
                c10 = '/';
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: " + f11);
        }
        return new n(i10 + 6, c10);
    }

    private n d(int i10) {
        char c10;
        int f10 = f(i10, 5);
        if (f10 == 15) {
            return new n(i10 + 5, '$');
        }
        if (f10 >= 5 && f10 < 15) {
            return new n(i10 + 5, (char) ((f10 + 48) - 5));
        }
        int f11 = f(i10, 7);
        if (f11 >= 64 && f11 < 90) {
            return new n(i10 + 7, (char) (f11 + 1));
        }
        if (f11 >= 90 && f11 < 116) {
            return new n(i10 + 7, (char) (f11 + 7));
        }
        switch (f(i10, 8)) {
            case 232:
                c10 = '!';
                break;
            case 233:
                c10 = '\"';
                break;
            case 234:
                c10 = '%';
                break;
            case 235:
                c10 = '&';
                break;
            case 236:
                c10 = '\'';
                break;
            case 237:
                c10 = '(';
                break;
            case 238:
                c10 = ')';
                break;
            case 239:
                c10 = '*';
                break;
            case 240:
                c10 = '+';
                break;
            case 241:
                c10 = ',';
                break;
            case 242:
                c10 = '-';
                break;
            case 243:
                c10 = '.';
                break;
            case 244:
                c10 = '/';
                break;
            case 245:
                c10 = ':';
                break;
            case 246:
                c10 = ';';
                break;
            case 247:
                c10 = '<';
                break;
            case 248:
                c10 = '=';
                break;
            case 249:
                c10 = '>';
                break;
            case 250:
                c10 = '?';
                break;
            case 251:
                c10 = '_';
                break;
            case 252:
                c10 = ' ';
                break;
            default:
                throw d9.f.a();
        }
        return new n(i10 + 8, c10);
    }

    private p e(int i10) {
        int i11 = i10 + 7;
        if (i11 > this.f31078a.i()) {
            int f10 = f(i10, 4);
            if (f10 == 0) {
                return new p(this.f31078a.i(), 10, 10);
            }
            return new p(this.f31078a.i(), f10 - 1, 10);
        }
        int f11 = f(i10, 7) - 8;
        return new p(i11, f11 / 11, f11 % 11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(j9.a aVar, int i10, int i11) {
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            if (aVar.c(i10 + i13)) {
                i12 |= 1 << ((i11 - i13) - 1);
            }
        }
        return i12;
    }

    private boolean h(int i10) {
        int i11 = i10 + 3;
        if (i11 > this.f31078a.i()) {
            return false;
        }
        while (i10 < i11) {
            if (this.f31078a.c(i10)) {
                return false;
            }
            i10++;
        }
        return true;
    }

    private boolean i(int i10) {
        int i11;
        if (i10 + 1 > this.f31078a.i()) {
            return false;
        }
        for (int i12 = 0; i12 < 5 && (i11 = i12 + i10) < this.f31078a.i(); i12++) {
            if (i12 == 2) {
                if (!this.f31078a.c(i10 + 2)) {
                    return false;
                }
            } else if (this.f31078a.c(i11)) {
                return false;
            }
        }
        return true;
    }

    private boolean j(int i10) {
        int i11;
        if (i10 + 1 > this.f31078a.i()) {
            return false;
        }
        for (int i12 = 0; i12 < 4 && (i11 = i12 + i10) < this.f31078a.i(); i12++) {
            if (this.f31078a.c(i11)) {
                return false;
            }
        }
        return true;
    }

    private boolean k(int i10) {
        int f10;
        if (i10 + 5 > this.f31078a.i()) {
            return false;
        }
        int f11 = f(i10, 5);
        if (f11 >= 5 && f11 < 16) {
            return true;
        }
        if (i10 + 6 > this.f31078a.i() || (f10 = f(i10, 6)) < 16 || f10 >= 63) {
            return false;
        }
        return true;
    }

    private boolean l(int i10) {
        int f10;
        if (i10 + 5 > this.f31078a.i()) {
            return false;
        }
        int f11 = f(i10, 5);
        if (f11 >= 5 && f11 < 16) {
            return true;
        }
        if (i10 + 7 > this.f31078a.i()) {
            return false;
        }
        int f12 = f(i10, 7);
        if (f12 >= 64 && f12 < 116) {
            return true;
        }
        if (i10 + 8 > this.f31078a.i() || (f10 = f(i10, 8)) < 232 || f10 >= 253) {
            return false;
        }
        return true;
    }

    private boolean m(int i10) {
        if (i10 + 7 > this.f31078a.i()) {
            if (i10 + 4 <= this.f31078a.i()) {
                return true;
            }
            return false;
        }
        int i11 = i10;
        while (true) {
            int i12 = i10 + 3;
            if (i11 < i12) {
                if (this.f31078a.c(i11)) {
                    return true;
                }
                i11++;
            } else {
                return this.f31078a.c(i12);
            }
        }
    }

    private l n() {
        while (k(this.f31079b.a())) {
            n b10 = b(this.f31079b.a());
            this.f31079b.h(b10.a());
            if (b10.c()) {
                return new l(new o(this.f31079b.a(), this.f31080c.toString()), true);
            }
            this.f31080c.append(b10.b());
        }
        if (h(this.f31079b.a())) {
            this.f31079b.b(3);
            this.f31079b.g();
        } else if (i(this.f31079b.a())) {
            if (this.f31079b.a() + 5 < this.f31078a.i()) {
                this.f31079b.b(5);
            } else {
                this.f31079b.h(this.f31078a.i());
            }
            this.f31079b.f();
        }
        return new l();
    }

    private o o() {
        l q10;
        boolean b10;
        boolean z10;
        do {
            int a10 = this.f31079b.a();
            if (this.f31079b.c()) {
                q10 = n();
                b10 = q10.b();
            } else if (this.f31079b.d()) {
                q10 = p();
                b10 = q10.b();
            } else {
                q10 = q();
                b10 = q10.b();
            }
            if (a10 != this.f31079b.a()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10 && !b10) {
                break;
            }
        } while (!b10);
        return q10.a();
    }

    private l p() {
        while (l(this.f31079b.a())) {
            n d10 = d(this.f31079b.a());
            this.f31079b.h(d10.a());
            if (d10.c()) {
                return new l(new o(this.f31079b.a(), this.f31080c.toString()), true);
            }
            this.f31080c.append(d10.b());
        }
        if (h(this.f31079b.a())) {
            this.f31079b.b(3);
            this.f31079b.g();
        } else if (i(this.f31079b.a())) {
            if (this.f31079b.a() + 5 < this.f31078a.i()) {
                this.f31079b.b(5);
            } else {
                this.f31079b.h(this.f31078a.i());
            }
            this.f31079b.e();
        }
        return new l();
    }

    private l q() {
        o oVar;
        while (m(this.f31079b.a())) {
            p e10 = e(this.f31079b.a());
            this.f31079b.h(e10.a());
            if (e10.d()) {
                if (e10.e()) {
                    oVar = new o(this.f31079b.a(), this.f31080c.toString());
                } else {
                    oVar = new o(this.f31079b.a(), this.f31080c.toString(), e10.c());
                }
                return new l(oVar, true);
            }
            this.f31080c.append(e10.b());
            if (e10.e()) {
                return new l(new o(this.f31079b.a(), this.f31080c.toString()), true);
            }
            this.f31080c.append(e10.c());
        }
        if (j(this.f31079b.a())) {
            this.f31079b.e();
            this.f31079b.b(4);
        }
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(StringBuilder sb2, int i10) {
        String str;
        String str2 = null;
        while (true) {
            o c10 = c(i10, str2);
            String a10 = r.a(c10.b());
            if (a10 != null) {
                sb2.append(a10);
            }
            if (c10.d()) {
                str = String.valueOf(c10.c());
            } else {
                str = null;
            }
            if (i10 == c10.a()) {
                return sb2.toString();
            }
            i10 = c10.a();
            str2 = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o c(int i10, String str) {
        this.f31080c.setLength(0);
        if (str != null) {
            this.f31080c.append(str);
        }
        this.f31079b.h(i10);
        o o10 = o();
        if (o10 != null && o10.d()) {
            return new o(this.f31079b.a(), this.f31080c.toString(), o10.c());
        }
        return new o(this.f31079b.a(), this.f31080c.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f(int i10, int i11) {
        return g(this.f31078a, i10, i11);
    }
}
