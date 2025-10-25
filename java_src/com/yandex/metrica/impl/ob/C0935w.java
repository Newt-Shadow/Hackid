package com.yandex.metrica.impl.ob;

import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.yandex.metrica.impl.ob.w  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0935w implements InterfaceC0671l2 {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Integer> f13842a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final Set<Integer> f13843b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private volatile a f13844c = a.UNKNOWN;

    /* renamed from: d  reason: collision with root package name */
    private final Set<b> f13845d = new CopyOnWriteArraySet();

    /* renamed from: com.yandex.metrica.impl.ob.w$a */
    /* loaded from: classes2.dex */
    public enum a {
        UNKNOWN(CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE),
        BACKGROUND(io.appmetrica.analytics.impl.H2.f18288g),
        VISIBLE("visible");

        a(String str) {
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.w$b */
    /* loaded from: classes2.dex */
    public interface b {
        void a(a aVar);
    }

    private void d() {
        a aVar = a.UNKNOWN;
        if (!this.f13842a.isEmpty()) {
            aVar = a.VISIBLE;
        } else if (!this.f13843b.isEmpty()) {
            aVar = a.BACKGROUND;
        }
        if (this.f13844c != aVar) {
            this.f13844c = aVar;
            for (b bVar : this.f13845d) {
                bVar.a(this.f13844c);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public void a() {
        d();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public void b() {
        if (this.f13844c == a.VISIBLE) {
            this.f13844c = a.BACKGROUND;
        }
    }

    public a c() {
        return this.f13844c;
    }

    public a a(b bVar) {
        this.f13845d.add(bVar);
        return this.f13844c;
    }

    public void c(int i10) {
        this.f13842a.add(Integer.valueOf(i10));
        this.f13843b.remove(Integer.valueOf(i10));
        d();
    }

    public void b(int i10) {
        this.f13843b.add(Integer.valueOf(i10));
        this.f13842a.remove(Integer.valueOf(i10));
        d();
    }

    public void a(int i10) {
        this.f13842a.remove(Integer.valueOf(i10));
        d();
    }
}
