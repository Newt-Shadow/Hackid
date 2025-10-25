package o3;

import b3.e3;
import g3.y;
import java.util.ArrayList;
import java.util.List;
import y4.e0;
import z3.c;
/* loaded from: classes.dex */
final class m {

    /* renamed from: d  reason: collision with root package name */
    private static final n6.q f27268d = n6.q.d(':');

    /* renamed from: e  reason: collision with root package name */
    private static final n6.q f27269e = n6.q.d('*');

    /* renamed from: a  reason: collision with root package name */
    private final List f27270a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f27271b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f27272c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f27273a;

        /* renamed from: b  reason: collision with root package name */
        public final long f27274b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27275c;

        public a(int i10, long j10, int i11) {
            this.f27273a = i10;
            this.f27274b = j10;
            this.f27275c = i11;
        }
    }

    private void a(g3.l lVar, y yVar) {
        e0 e0Var = new e0(8);
        lVar.readFully(e0Var.e(), 0, 8);
        this.f27272c = e0Var.t() + 8;
        if (e0Var.p() != 1397048916) {
            yVar.f16251a = 0L;
            return;
        }
        yVar.f16251a = lVar.c() - (this.f27272c - 12);
        this.f27271b = 2;
    }

    private static int b(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals("SlowMotion_Data")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1332107749:
                if (str.equals("Super_SlowMotion_Edit_Data")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1251387154:
                if (str.equals("Super_SlowMotion_Data")) {
                    c10 = 2;
                    break;
                }
                break;
            case -830665521:
                if (str.equals("Super_SlowMotion_Deflickering_On")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1760745220:
                if (str.equals("Super_SlowMotion_BGM")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2192;
            case 1:
                return 2819;
            case 2:
                return 2816;
            case 3:
                return 2820;
            case 4:
                return 2817;
            default:
                throw e3.a("Invalid SEF name", null);
        }
    }

    private void d(g3.l lVar, y yVar) {
        long b10 = lVar.b();
        int i10 = (this.f27272c - 12) - 8;
        e0 e0Var = new e0(i10);
        lVar.readFully(e0Var.e(), 0, i10);
        for (int i11 = 0; i11 < i10 / 12; i11++) {
            e0Var.U(2);
            short v10 = e0Var.v();
            if (v10 != 2192 && v10 != 2816 && v10 != 2817 && v10 != 2819 && v10 != 2820) {
                e0Var.U(8);
            } else {
                this.f27270a.add(new a(v10, (b10 - this.f27272c) - e0Var.t(), e0Var.t()));
            }
        }
        if (this.f27270a.isEmpty()) {
            yVar.f16251a = 0L;
            return;
        }
        this.f27271b = 3;
        yVar.f16251a = ((a) this.f27270a.get(0)).f27274b;
    }

    private void e(g3.l lVar, List list) {
        long c10 = lVar.c();
        int b10 = (int) ((lVar.b() - lVar.c()) - this.f27272c);
        e0 e0Var = new e0(b10);
        lVar.readFully(e0Var.e(), 0, b10);
        for (int i10 = 0; i10 < this.f27270a.size(); i10++) {
            a aVar = (a) this.f27270a.get(i10);
            e0Var.T((int) (aVar.f27274b - c10));
            e0Var.U(4);
            int t10 = e0Var.t();
            int b11 = b(e0Var.D(t10));
            int i11 = aVar.f27275c - (t10 + 8);
            if (b11 != 2192) {
                if (b11 != 2816 && b11 != 2817 && b11 != 2819 && b11 != 2820) {
                    throw new IllegalStateException();
                }
            } else {
                list.add(f(e0Var, i11));
            }
        }
    }

    private static z3.c f(e0 e0Var, int i10) {
        ArrayList arrayList = new ArrayList();
        List f10 = f27269e.f(e0Var.D(i10));
        for (int i11 = 0; i11 < f10.size(); i11++) {
            List f11 = f27268d.f((CharSequence) f10.get(i11));
            if (f11.size() == 3) {
                try {
                    arrayList.add(new c.b(Long.parseLong((String) f11.get(0)), Long.parseLong((String) f11.get(1)), 1 << (Integer.parseInt((String) f11.get(2)) - 1)));
                } catch (NumberFormatException e10) {
                    throw e3.a(null, e10);
                }
            } else {
                throw e3.a(null, null);
            }
        }
        return new z3.c(arrayList);
    }

    public int c(g3.l lVar, y yVar, List list) {
        int i10 = this.f27271b;
        long j10 = 0;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        e(lVar, list);
                        yVar.f16251a = 0L;
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    d(lVar, yVar);
                }
            } else {
                a(lVar, yVar);
            }
        } else {
            long b10 = lVar.b();
            if (b10 != -1 && b10 >= 8) {
                j10 = b10 - 8;
            }
            yVar.f16251a = j10;
            this.f27271b = 1;
        }
        return 1;
    }

    public void g() {
        this.f27270a.clear();
        this.f27271b = 0;
    }
}
