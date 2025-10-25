package g3;

import android.net.Uri;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import q3.h0;
import y4.m0;
/* loaded from: classes.dex */
public final class h implements p {

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f16202o = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};

    /* renamed from: p  reason: collision with root package name */
    private static final a f16203p = new a(new a.InterfaceC0174a() { // from class: g3.f
        @Override // g3.h.a.InterfaceC0174a
        public final Constructor a() {
            Constructor h10;
            h10 = h.h();
            return h10;
        }
    });

    /* renamed from: q  reason: collision with root package name */
    private static final a f16204q = new a(new a.InterfaceC0174a() { // from class: g3.g
        @Override // g3.h.a.InterfaceC0174a
        public final Constructor a() {
            Constructor i10;
            i10 = h.i();
            return i10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private boolean f16205b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16206c;

    /* renamed from: d  reason: collision with root package name */
    private int f16207d;

    /* renamed from: e  reason: collision with root package name */
    private int f16208e;

    /* renamed from: f  reason: collision with root package name */
    private int f16209f;

    /* renamed from: g  reason: collision with root package name */
    private int f16210g;

    /* renamed from: h  reason: collision with root package name */
    private int f16211h;

    /* renamed from: i  reason: collision with root package name */
    private int f16212i;

    /* renamed from: j  reason: collision with root package name */
    private int f16213j;

    /* renamed from: l  reason: collision with root package name */
    private int f16215l;

    /* renamed from: k  reason: collision with root package name */
    private int f16214k = 1;

    /* renamed from: n  reason: collision with root package name */
    private int f16217n = 112800;

    /* renamed from: m  reason: collision with root package name */
    private o6.q f16216m = o6.q.D();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0174a f16218a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f16219b = new AtomicBoolean(false);

        /* renamed from: c  reason: collision with root package name */
        private Constructor f16220c;

        /* renamed from: g3.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0174a {
            Constructor a();
        }

        public a(InterfaceC0174a interfaceC0174a) {
            this.f16218a = interfaceC0174a;
        }

        private Constructor b() {
            synchronized (this.f16219b) {
                if (this.f16219b.get()) {
                    return this.f16220c;
                }
                try {
                    return this.f16218a.a();
                } catch (ClassNotFoundException unused) {
                    this.f16219b.set(true);
                    return this.f16220c;
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating extension", e10);
                }
            }
        }

        public k a(Object... objArr) {
            Constructor b10 = b();
            if (b10 == null) {
                return null;
            }
            try {
                return (k) b10.newInstance(objArr);
            } catch (Exception e10) {
                throw new IllegalStateException("Unexpected error creating extractor", e10);
            }
        }
    }

    private void g(int i10, List list) {
        int i11 = 2;
        switch (i10) {
            case 0:
                list.add(new q3.b());
                return;
            case 1:
                list.add(new q3.e());
                return;
            case 2:
                int i12 = this.f16207d | (this.f16205b ? 1 : 0);
                if (!this.f16206c) {
                    i11 = 0;
                }
                list.add(new q3.h(i11 | i12));
                return;
            case 3:
                int i13 = this.f16208e | (this.f16205b ? 1 : 0);
                if (!this.f16206c) {
                    i11 = 0;
                }
                list.add(new h3.b(i11 | i13));
                return;
            case 4:
                k a10 = f16203p.a(Integer.valueOf(this.f16209f));
                if (a10 != null) {
                    list.add(a10);
                    return;
                } else {
                    list.add(new j3.d(this.f16209f));
                    return;
                }
            case 5:
                list.add(new k3.c());
                return;
            case 6:
                list.add(new m3.e(this.f16210g));
                return;
            case 7:
                int i14 = this.f16213j | (this.f16205b ? 1 : 0);
                if (!this.f16206c) {
                    i11 = 0;
                }
                list.add(new n3.f(i11 | i14));
                return;
            case 8:
                list.add(new o3.g(this.f16212i));
                list.add(new o3.k(this.f16211h));
                return;
            case 9:
                list.add(new p3.d());
                return;
            case 10:
                list.add(new q3.a0());
                return;
            case 11:
                list.add(new h0(this.f16214k, new m0(0L), new q3.j(this.f16215l, this.f16216m), this.f16217n));
                return;
            case 12:
                list.add(new r3.b());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new l3.a());
                return;
            case 15:
                k a11 = f16204q.a(new Object[0]);
                if (a11 != null) {
                    list.add(a11);
                    return;
                }
                return;
            case 16:
                list.add(new i3.b());
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor h() {
        if (!Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
            return null;
        }
        return Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(k.class).getConstructor(Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor i() {
        return Class.forName("com.google.android.exoplayer2.decoder.midi.MidiExtractor").asSubclass(k.class).getConstructor(new Class[0]);
    }

    @Override // g3.p
    public synchronized k[] b() {
        return c(Uri.EMPTY, new HashMap());
    }

    @Override // g3.p
    public synchronized k[] c(Uri uri, Map map) {
        ArrayList arrayList;
        int[] iArr = f16202o;
        arrayList = new ArrayList(iArr.length);
        int b10 = y4.k.b(map);
        if (b10 != -1) {
            g(b10, arrayList);
        }
        int c10 = y4.k.c(uri);
        if (c10 != -1 && c10 != b10) {
            g(c10, arrayList);
        }
        for (int i10 : iArr) {
            if (i10 != b10 && i10 != c10) {
                g(i10, arrayList);
            }
        }
        return (k[]) arrayList.toArray(new k[arrayList.size()]);
    }
}
