package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
/* loaded from: classes2.dex */
public class Eh {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10015a;

    /* renamed from: b  reason: collision with root package name */
    private final Mh f10016b;

    /* renamed from: c  reason: collision with root package name */
    private final C0905uh f10017c;

    /* renamed from: d  reason: collision with root package name */
    private Jh f10018d;

    /* renamed from: e  reason: collision with root package name */
    private Jh f10019e;

    /* renamed from: f  reason: collision with root package name */
    private C0787pi f10020f;

    public Eh(Context context) {
        this(context, new Mh(), new C0905uh(context));
    }

    public synchronized void a(C0787pi c0787pi) {
        this.f10020f = c0787pi;
        Jh jh = this.f10018d;
        if (jh == null) {
            Mh mh = this.f10016b;
            Context context = this.f10015a;
            mh.getClass();
            this.f10018d = new Jh(context, c0787pi, new C0833rh(), new Kh(mh), new C0953wh("open", "http"), new C0953wh("port_already_in_use", "http"), "Http");
        } else {
            jh.a(c0787pi);
        }
        this.f10017c.a(c0787pi, this);
    }

    public synchronized void b() {
        Jh jh = this.f10018d;
        if (jh != null) {
            jh.b();
        }
        Jh jh2 = this.f10019e;
        if (jh2 != null) {
            jh2.b();
        }
    }

    Eh(Context context, Mh mh, C0905uh c0905uh) {
        this.f10015a = context;
        this.f10016b = mh;
        this.f10017c = c0905uh;
    }

    public synchronized void b(C0787pi c0787pi) {
        this.f10020f = c0787pi;
        this.f10017c.a(c0787pi, this);
        Jh jh = this.f10018d;
        if (jh != null) {
            jh.b(c0787pi);
        }
        Jh jh2 = this.f10019e;
        if (jh2 != null) {
            jh2.b(c0787pi);
        }
    }

    public synchronized void a() {
        Jh jh = this.f10018d;
        if (jh != null) {
            jh.a();
        }
        Jh jh2 = this.f10019e;
        if (jh2 != null) {
            jh2.a();
        }
    }

    public synchronized void a(File file) {
        Jh jh = this.f10019e;
        if (jh == null) {
            Mh mh = this.f10016b;
            Context context = this.f10015a;
            C0787pi c0787pi = this.f10020f;
            mh.getClass();
            this.f10019e = new Jh(context, c0787pi, new C0929vh(file), new Lh(mh), new C0953wh("open", "https"), new C0953wh("port_already_in_use", "https"), "Https");
        } else {
            jh.a(this.f10020f);
        }
    }
}
