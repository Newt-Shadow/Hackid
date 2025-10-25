package o1;

import java.util.Objects;
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private final n[] f26938a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26939b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f26940c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26941d;

    public m(String str, n[] nVarArr) {
        this.f26939b = str;
        this.f26940c = null;
        this.f26938a = nVarArr;
        this.f26941d = 0;
    }

    private void a(int i10) {
        if (i10 == this.f26941d) {
            return;
        }
        throw new IllegalStateException("Wrong data accessor type detected. " + f(this.f26941d) + " expected, but got " + f(i10));
    }

    private String f(int i10) {
        return i10 != 0 ? i10 != 1 ? "Unknown" : "ArrayBuffer" : "String";
    }

    public byte[] b() {
        a(1);
        Objects.requireNonNull(this.f26940c);
        return this.f26940c;
    }

    public String c() {
        a(0);
        return this.f26939b;
    }

    public n[] d() {
        return this.f26938a;
    }

    public int e() {
        return this.f26941d;
    }

    public m(byte[] bArr, n[] nVarArr) {
        Objects.requireNonNull(bArr);
        this.f26940c = bArr;
        this.f26939b = null;
        this.f26938a = nVarArr;
        this.f26941d = 1;
    }
}
