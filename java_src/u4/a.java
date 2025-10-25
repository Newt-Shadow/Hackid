package u4;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import java.nio.charset.Charset;
import java.util.List;
import kotlin.KotlinVersion;
import m4.b;
import m4.g;
import m4.h;
import m4.j;
import n6.e;
import org.apache.tika.fork.ForkServer;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: o  reason: collision with root package name */
    private final e0 f30806o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f30807p;

    /* renamed from: q  reason: collision with root package name */
    private final int f30808q;

    /* renamed from: r  reason: collision with root package name */
    private final int f30809r;

    /* renamed from: s  reason: collision with root package name */
    private final String f30810s;

    /* renamed from: t  reason: collision with root package name */
    private final float f30811t;

    /* renamed from: u  reason: collision with root package name */
    private final int f30812u;

    public a(List list) {
        super("Tx3gDecoder");
        this.f30806o = new e0();
        if (list.size() == 1 && (((byte[]) list.get(0)).length == 48 || ((byte[]) list.get(0)).length == 53)) {
            byte[] bArr = (byte[]) list.get(0);
            this.f30808q = bArr[24];
            this.f30809r = ((bArr[26] & ForkServer.ERROR) << 24) | ((bArr[27] & ForkServer.ERROR) << 16) | ((bArr[28] & ForkServer.ERROR) << 8) | (bArr[29] & ForkServer.ERROR);
            this.f30810s = "Serif".equals(q0.E(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
            int i10 = bArr[25] * 20;
            this.f30812u = i10;
            boolean z10 = (bArr[0] & 32) != 0;
            this.f30807p = z10;
            if (z10) {
                this.f30811t = q0.p(((bArr[11] & ForkServer.ERROR) | ((bArr[10] & ForkServer.ERROR) << 8)) / i10, 0.0f, 0.95f);
                return;
            } else {
                this.f30811t = 0.85f;
                return;
            }
        }
        this.f30808q = 0;
        this.f30809r = -1;
        this.f30810s = "sans-serif";
        this.f30807p = false;
        this.f30811t = 0.85f;
        this.f30812u = -1;
    }

    private void B(e0 e0Var, SpannableStringBuilder spannableStringBuilder) {
        boolean z10;
        if (e0Var.a() >= 12) {
            z10 = true;
        } else {
            z10 = false;
        }
        C(z10);
        int M = e0Var.M();
        int M2 = e0Var.M();
        e0Var.U(2);
        int G = e0Var.G();
        e0Var.U(1);
        int p10 = e0Var.p();
        if (M2 > spannableStringBuilder.length()) {
            r.i("Tx3gDecoder", "Truncating styl end (" + M2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            M2 = spannableStringBuilder.length();
        }
        if (M >= M2) {
            r.i("Tx3gDecoder", "Ignoring styl with start (" + M + ") >= end (" + M2 + ").");
            return;
        }
        int i10 = M2;
        E(spannableStringBuilder, G, this.f30808q, M, i10, 0);
        D(spannableStringBuilder, p10, this.f30809r, M, i10, 0);
    }

    private static void C(boolean z10) {
        if (z10) {
            return;
        }
        throw new j("Unexpected subtitle format.");
    }

    private static void D(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & KotlinVersion.MAX_COMPONENT_VALUE) << 24)), i12, i13, i14 | 33);
        }
    }

    private static void E(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        boolean z10;
        boolean z11;
        if (i10 != i11) {
            int i15 = i14 | 33;
            boolean z12 = true;
            if ((i10 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ((i10 & 2) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10) {
                if (z11) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i12, i13, i15);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i12, i13, i15);
                }
            } else if (z11) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i12, i13, i15);
            }
            if ((i10 & 4) == 0) {
                z12 = false;
            }
            if (z12) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i12, i13, i15);
            }
            if (!z12 && !z10 && !z11) {
                spannableStringBuilder.setSpan(new StyleSpan(0), i12, i13, i15);
            }
        }
    }

    private static void F(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i10, i11, 16711713);
        }
    }

    private static String G(e0 e0Var) {
        boolean z10;
        if (e0Var.a() >= 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        C(z10);
        int M = e0Var.M();
        if (M == 0) {
            return "";
        }
        int f10 = e0Var.f();
        Charset O = e0Var.O();
        int f11 = M - (e0Var.f() - f10);
        if (O == null) {
            O = e.f26427c;
        }
        return e0Var.E(f11, O);
    }

    @Override // m4.g
    protected h z(byte[] bArr, int i10, boolean z10) {
        this.f30806o.R(bArr, i10);
        String G = G(this.f30806o);
        if (G.isEmpty()) {
            return b.f30813b;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(G);
        E(spannableStringBuilder, this.f30808q, 0, 0, spannableStringBuilder.length(), 16711680);
        D(spannableStringBuilder, this.f30809r, -1, 0, spannableStringBuilder.length(), 16711680);
        F(spannableStringBuilder, this.f30810s, 0, spannableStringBuilder.length());
        float f10 = this.f30811t;
        while (this.f30806o.a() >= 8) {
            int f11 = this.f30806o.f();
            int p10 = this.f30806o.p();
            int p11 = this.f30806o.p();
            boolean z11 = true;
            if (p11 == 1937013100) {
                if (this.f30806o.a() < 2) {
                    z11 = false;
                }
                C(z11);
                int M = this.f30806o.M();
                for (int i11 = 0; i11 < M; i11++) {
                    B(this.f30806o, spannableStringBuilder);
                }
            } else if (p11 == 1952608120 && this.f30807p) {
                if (this.f30806o.a() < 2) {
                    z11 = false;
                }
                C(z11);
                f10 = q0.p(this.f30806o.M() / this.f30812u, 0.0f, 0.95f);
            }
            this.f30806o.T(f11 + p10);
        }
        return new b(new b.C0247b().o(spannableStringBuilder).h(f10, 0).i(0).a());
    }
}
