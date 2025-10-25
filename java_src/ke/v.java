package ke;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class v implements l {

    /* renamed from: a  reason: collision with root package name */
    private char[] f24927a = d.f24898c.d();

    /* renamed from: b  reason: collision with root package name */
    private int f24928b;

    private final void e(int i10, int i11, String str) {
        int i12;
        int length = str.length();
        while (i10 < length) {
            int g10 = g(i11, 2);
            char charAt = str.charAt(i10);
            if (charAt < c0.a().length) {
                byte b10 = c0.a()[charAt];
                if (b10 == 0) {
                    i12 = g10 + 1;
                    this.f24927a[g10] = charAt;
                } else {
                    if (b10 == 1) {
                        String str2 = c0.b()[charAt];
                        kotlin.jvm.internal.m.b(str2);
                        int g11 = g(g10, str2.length());
                        str2.getChars(0, str2.length(), this.f24927a, g11);
                        i11 = g11 + str2.length();
                        this.f24928b = i11;
                    } else {
                        char[] cArr = this.f24927a;
                        cArr[g10] = '\\';
                        cArr[g10 + 1] = (char) b10;
                        i11 = g10 + 2;
                        this.f24928b = i11;
                    }
                    i10++;
                }
            } else {
                i12 = g10 + 1;
                this.f24927a[g10] = charAt;
            }
            i11 = i12;
            i10++;
        }
        int g12 = g(i11, 1);
        this.f24927a[g12] = '\"';
        this.f24928b = g12 + 1;
    }

    private final void f(int i10) {
        g(this.f24928b, i10);
    }

    private final int g(int i10, int i11) {
        int b10;
        int i12 = i11 + i10;
        char[] cArr = this.f24927a;
        if (cArr.length <= i12) {
            b10 = od.i.b(i12, i10 * 2);
            char[] copyOf = Arrays.copyOf(cArr, b10);
            kotlin.jvm.internal.m.d(copyOf, "copyOf(...)");
            this.f24927a = copyOf;
        }
        return i10;
    }

    @Override // ke.l
    public void a(char c10) {
        f(1);
        char[] cArr = this.f24927a;
        int i10 = this.f24928b;
        this.f24928b = i10 + 1;
        cArr[i10] = c10;
    }

    @Override // ke.l
    public void b(String text) {
        kotlin.jvm.internal.m.e(text, "text");
        f(text.length() + 2);
        char[] cArr = this.f24927a;
        int i10 = this.f24928b;
        int i11 = i10 + 1;
        cArr[i10] = '\"';
        int length = text.length();
        text.getChars(0, length, cArr, i11);
        int i12 = length + i11;
        for (int i13 = i11; i13 < i12; i13++) {
            char c10 = cArr[i13];
            if (c10 < c0.a().length && c0.a()[c10] != 0) {
                e(i13 - i11, i13, text);
                return;
            }
        }
        cArr[i12] = '\"';
        this.f24928b = i12 + 1;
    }

    @Override // ke.l
    public void c(long j10) {
        d(String.valueOf(j10));
    }

    @Override // ke.l
    public void d(String text) {
        kotlin.jvm.internal.m.e(text, "text");
        int length = text.length();
        if (length == 0) {
            return;
        }
        f(length);
        text.getChars(0, text.length(), this.f24927a, this.f24928b);
        this.f24928b += length;
    }

    public void h() {
        d.f24898c.c(this.f24927a);
    }

    public String toString() {
        return new String(this.f24927a, 0, this.f24928b);
    }
}
