package com.yandex.metrica.impl.ob;

import java.util.HashSet;
/* renamed from: com.yandex.metrica.impl.ob.s2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0842s2 {

    /* renamed from: a  reason: collision with root package name */
    private final a f13573a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f13574b;

    /* renamed from: c  reason: collision with root package name */
    private final HashSet<String> f13575c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<String> f13576d = new HashSet<>();

    /* renamed from: com.yandex.metrica.impl.ob.s2$a */
    /* loaded from: classes2.dex */
    public interface a {
    }

    /* renamed from: com.yandex.metrica.impl.ob.s2$b */
    /* loaded from: classes2.dex */
    public static class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final C0504e9 f13577a;

        public b(C0504e9 c0504e9) {
            this.f13577a = c0504e9;
        }

        public void a(boolean z10) {
            this.f13577a.b(z10).d();
        }

        public Boolean a() {
            return this.f13577a.f();
        }
    }

    public C0842s2(a aVar) {
        this.f13573a = aVar;
        this.f13574b = ((b) aVar).a();
    }

    private boolean b() {
        Boolean bool = this.f13574b;
        if (bool == null) {
            if (this.f13575c.isEmpty() && !this.f13576d.isEmpty()) {
                return false;
            }
            return true;
        }
        return bool.booleanValue();
    }

    public synchronized void a(Boolean bool) {
        if (A2.a(bool) || this.f13574b == null) {
            Boolean valueOf = Boolean.valueOf(Boolean.FALSE.equals(bool));
            this.f13574b = valueOf;
            ((b) this.f13573a).a(valueOf.booleanValue());
        }
    }

    public synchronized boolean c() {
        boolean booleanValue;
        Boolean bool = this.f13574b;
        if (bool == null) {
            if (this.f13576d.isEmpty() && this.f13575c.isEmpty()) {
                booleanValue = true;
            } else {
                booleanValue = false;
            }
        } else {
            booleanValue = bool.booleanValue();
        }
        return booleanValue;
    }

    public synchronized boolean d() {
        return b();
    }

    public synchronized boolean e() {
        return b();
    }

    public synchronized void a(String str, Boolean bool) {
        if (A2.a(bool) || (!this.f13576d.contains(str) && !this.f13575c.contains(str))) {
            Boolean bool2 = Boolean.TRUE;
            if (bool == null) {
                bool = bool2;
            }
            if (bool.booleanValue()) {
                this.f13576d.add(str);
                this.f13575c.remove(str);
            } else {
                this.f13575c.add(str);
                this.f13576d.remove(str);
            }
        }
    }

    public synchronized boolean a() {
        Boolean bool;
        bool = this.f13574b;
        return bool == null ? this.f13576d.isEmpty() : bool.booleanValue();
    }
}
