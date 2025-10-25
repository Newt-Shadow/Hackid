package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.j7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0626j7 {

    /* renamed from: a  reason: collision with root package name */
    private String f12664a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f12665b;

    /* renamed from: c  reason: collision with root package name */
    private final List<InterfaceC0651k7> f12666c;

    /* renamed from: d  reason: collision with root package name */
    private final C0427b7 f12667d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f12668e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f12669f;

    /* renamed from: g  reason: collision with root package name */
    private InterfaceC0651k7 f12670g;

    /* renamed from: h  reason: collision with root package name */
    private final B0 f12671h;

    public C0626j7(Context context, A3 a32) {
        this(context, A2.a(21) ? Arrays.asList(new A7(context, a32), new C0751o7()) : Collections.singletonList(new C0751o7()), new B0(), new C0427b7());
    }

    private void a() {
        InterfaceC0651k7 interfaceC0651k7;
        if (!this.f12669f) {
            Iterator<InterfaceC0651k7> it = this.f12666c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    interfaceC0651k7 = null;
                    break;
                }
                interfaceC0651k7 = it.next();
                try {
                    C0427b7 c0427b7 = this.f12667d;
                    String c10 = interfaceC0651k7.c();
                    c0427b7.getClass();
                    System.loadLibrary(c10);
                    break;
                } catch (Throwable unused) {
                }
            }
            this.f12670g = interfaceC0651k7;
            if (interfaceC0651k7 != null) {
                try {
                    interfaceC0651k7.a(false);
                } catch (Throwable unused2) {
                }
                this.f12664a = this.f12671h.b(this.f12665b, this.f12670g.a());
            }
        }
        this.f12669f = true;
    }

    C0626j7(Context context, List<InterfaceC0651k7> list, B0 b02, C0427b7 c0427b7) {
        this.f12665b = context;
        this.f12666c = list;
        this.f12671h = b02;
        this.f12667d = c0427b7;
    }

    public synchronized void a(boolean z10, String str, String str2) {
        String str3;
        if (z10) {
            a();
            synchronized (this) {
                InterfaceC0651k7 interfaceC0651k7 = this.f12670g;
                if ((interfaceC0651k7 != null) && (str3 = this.f12664a) != null && !this.f12668e) {
                    interfaceC0651k7.a(str, str3, str2);
                    this.f12668e = true;
                }
            }
        }
        synchronized (this) {
            synchronized (this) {
                InterfaceC0651k7 interfaceC0651k72 = this.f12670g;
                if ((interfaceC0651k72 != null) && this.f12668e) {
                    interfaceC0651k72.b();
                }
                this.f12668e = false;
            }
        }
    }

    public void a(String str) {
        InterfaceC0651k7 interfaceC0651k7 = this.f12670g;
        if (interfaceC0651k7 != null) {
            interfaceC0651k7.a(str);
        }
    }
}
