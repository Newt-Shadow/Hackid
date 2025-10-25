package df;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import java.util.function.IntUnaryOperator;
/* loaded from: classes2.dex */
public abstract class d extends b {

    /* renamed from: j  reason: collision with root package name */
    private static final OpenOption[] f15176j = ef.e.f15537j;

    /* renamed from: b  reason: collision with root package name */
    private int f15177b = 8192;

    /* renamed from: c  reason: collision with root package name */
    private int f15178c = 8192;

    /* renamed from: d  reason: collision with root package name */
    private int f15179d = Integer.MAX_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private Charset f15180e = Charset.defaultCharset();

    /* renamed from: f  reason: collision with root package name */
    private Charset f15181f = Charset.defaultCharset();

    /* renamed from: g  reason: collision with root package name */
    private OpenOption[] f15182g = f15176j;

    /* renamed from: h  reason: collision with root package name */
    private final IntUnaryOperator f15183h;

    /* renamed from: i  reason: collision with root package name */
    private IntUnaryOperator f15184i;

    public d() {
        IntUnaryOperator intUnaryOperator = new IntUnaryOperator() { // from class: df.c
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i10) {
                int j10;
                j10 = d.this.j(i10);
                return j10;
            }
        };
        this.f15183h = intUnaryOperator;
        this.f15184i = intUnaryOperator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int j(int i10) {
        int i11 = this.f15179d;
        if (i10 > i11) {
            return k(i10, i11);
        }
        return i10;
    }

    private int k(int i10, int i11) {
        throw new IllegalArgumentException(String.format("Request %,d exceeds maximum %,d", Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    public int g() {
        return this.f15177b;
    }

    public InputStream h() {
        return b().d(i());
    }

    public OpenOption[] i() {
        return this.f15182g;
    }
}
