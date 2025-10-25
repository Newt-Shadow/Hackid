package j9;

import java.util.List;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f24525a;

    /* renamed from: b  reason: collision with root package name */
    private int f24526b;

    /* renamed from: c  reason: collision with root package name */
    private final String f24527c;

    /* renamed from: d  reason: collision with root package name */
    private final List f24528d;

    /* renamed from: e  reason: collision with root package name */
    private final String f24529e;

    /* renamed from: f  reason: collision with root package name */
    private Integer f24530f;

    /* renamed from: g  reason: collision with root package name */
    private Integer f24531g;

    /* renamed from: h  reason: collision with root package name */
    private Object f24532h;

    /* renamed from: i  reason: collision with root package name */
    private final int f24533i;

    /* renamed from: j  reason: collision with root package name */
    private final int f24534j;

    /* renamed from: k  reason: collision with root package name */
    private final int f24535k;

    public e(byte[] bArr, String str, List list, String str2) {
        this(bArr, str, list, str2, -1, -1, 0);
    }

    public List a() {
        return this.f24528d;
    }

    public String b() {
        return this.f24529e;
    }

    public Integer c() {
        return this.f24531g;
    }

    public Integer d() {
        return this.f24530f;
    }

    public int e() {
        return this.f24526b;
    }

    public Object f() {
        return this.f24532h;
    }

    public byte[] g() {
        return this.f24525a;
    }

    public int h() {
        return this.f24533i;
    }

    public int i() {
        return this.f24534j;
    }

    public int j() {
        return this.f24535k;
    }

    public String k() {
        return this.f24527c;
    }

    public boolean l() {
        if (this.f24533i >= 0 && this.f24534j >= 0) {
            return true;
        }
        return false;
    }

    public void m(Integer num) {
        this.f24531g = num;
    }

    public void n(Integer num) {
        this.f24530f = num;
    }

    public void o(int i10) {
        this.f24526b = i10;
    }

    public void p(Object obj) {
        this.f24532h = obj;
    }

    public e(byte[] bArr, String str, List list, String str2, int i10) {
        this(bArr, str, list, str2, -1, -1, i10);
    }

    public e(byte[] bArr, String str, List list, String str2, int i10, int i11, int i12) {
        this.f24525a = bArr;
        this.f24526b = bArr == null ? 0 : bArr.length * 8;
        this.f24527c = str;
        this.f24528d = list;
        this.f24529e = str2;
        this.f24533i = i11;
        this.f24534j = i10;
        this.f24535k = i12;
    }
}
