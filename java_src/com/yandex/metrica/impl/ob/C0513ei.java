package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.Mg;
import java.util.HashMap;
/* renamed from: com.yandex.metrica.impl.ob.ei  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0513ei {

    /* renamed from: a  reason: collision with root package name */
    private final C0838rm<String, InterfaceC0662ki> f12338a = new C0838rm<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, C0834ri> f12339b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private C0787pi f12340c = null;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0762oi f12341d = new a();

    /* renamed from: com.yandex.metrica.impl.ob.ei$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0762oi {
        a() {
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.ei$b */
    /* loaded from: classes2.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final C0513ei f12343a = new C0513ei();
    }

    public static final C0513ei a() {
        return b.f12343a;
    }

    public C0834ri a(Context context, I3 i32, Mg.b bVar) {
        C0834ri c0834ri = this.f12339b.get(i32.b());
        boolean z10 = true;
        if (c0834ri == null) {
            synchronized (this.f12339b) {
                c0834ri = this.f12339b.get(i32.b());
                if (c0834ri == null) {
                    c0834ri = new C0834ri(context, i32.b(), bVar, this.f12341d);
                    this.f12339b.put(i32.b(), c0834ri);
                    z10 = false;
                }
            }
        }
        if (z10) {
            c0834ri.a(bVar);
        }
        return c0834ri;
    }

    public void a(I3 i32, InterfaceC0662ki interfaceC0662ki) {
        synchronized (this.f12339b) {
            this.f12338a.a(i32.b(), interfaceC0662ki);
            C0787pi c0787pi = this.f12340c;
            if (c0787pi != null) {
                interfaceC0662ki.a(c0787pi);
            }
        }
    }
}
