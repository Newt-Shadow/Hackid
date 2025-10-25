package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public class g {

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal f2444d = new ThreadLocal();

    /* renamed from: a  reason: collision with root package name */
    private final int f2445a;

    /* renamed from: b  reason: collision with root package name */
    private final l f2446b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f2447c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(l lVar, int i10) {
        this.f2446b = lVar;
        this.f2445a = i10;
    }

    private q0.a g() {
        ThreadLocal threadLocal = f2444d;
        q0.a aVar = (q0.a) threadLocal.get();
        if (aVar == null) {
            aVar = new q0.a();
            threadLocal.set(aVar);
        }
        this.f2446b.d().j(aVar, this.f2445a);
        return aVar;
    }

    public void a(Canvas canvas, float f10, float f11, Paint paint) {
        Typeface g10 = this.f2446b.g();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(g10);
        canvas.drawText(this.f2446b.c(), this.f2445a * 2, 2, f10, f11, paint);
        paint.setTypeface(typeface);
    }

    public int b(int i10) {
        return g().h(i10);
    }

    public int c() {
        return g().i();
    }

    public int d() {
        return this.f2447c;
    }

    public short e() {
        return g().k();
    }

    public int f() {
        return g().l();
    }

    public short h() {
        return g().m();
    }

    public short i() {
        return g().n();
    }

    public boolean j() {
        return g().j();
    }

    public void k(boolean z10) {
        int i10;
        if (z10) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        this.f2447c = i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(", id:");
        sb2.append(Integer.toHexString(f()));
        sb2.append(", codepoints:");
        int c10 = c();
        for (int i10 = 0; i10 < c10; i10++) {
            sb2.append(Integer.toHexString(b(i10)));
            sb2.append(StringUtils.SPACE);
        }
        return sb2.toString();
    }
}
