package ke;
/* loaded from: classes2.dex */
public abstract class b {
    public static final byte a(char c10) {
        if (c10 < '~') {
            return f.f24911c[c10];
        }
        return (byte) 0;
    }

    public static final char b(int i10) {
        if (i10 < 117) {
            return f.f24910b[i10];
        }
        return (char) 0;
    }

    public static final String c(byte b10) {
        return b10 == 1 ? "quotation mark '\"'" : b10 == 2 ? "string escape sequence '\\'" : b10 == 4 ? "comma ','" : b10 == 5 ? "colon ':'" : b10 == 6 ? "start of the object '{'" : b10 == 7 ? "end of the object '}'" : b10 == 8 ? "start of the array '['" : b10 == 9 ? "end of the array ']'" : b10 == 10 ? "end of the input" : b10 == Byte.MAX_VALUE ? "invalid token" : "valid token";
    }
}
