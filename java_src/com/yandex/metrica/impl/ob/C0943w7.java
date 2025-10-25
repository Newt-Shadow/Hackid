package com.yandex.metrica.impl.ob;

import android.net.LocalServerSocket;
import android.net.LocalSocket;
import com.yandex.metrica.impl.ac.CrashpadServiceHelper;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.w7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0943w7 {

    /* renamed from: a  reason: collision with root package name */
    private final String f13859a;

    /* renamed from: b  reason: collision with root package name */
    private LocalServerSocket f13860b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f13861c;

    /* renamed from: d  reason: collision with root package name */
    private final B7 f13862d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0716mm<String> f13863e;

    /* renamed from: f  reason: collision with root package name */
    private final String f13864f;

    /* renamed from: g  reason: collision with root package name */
    private List<InterfaceC0716mm<String>> f13865g;

    /* renamed from: h  reason: collision with root package name */
    private final Thread f13866h;

    /* renamed from: com.yandex.metrica.impl.ob.w7$a */
    /* loaded from: classes2.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (C0943w7.this.f13861c) {
                try {
                    LocalSocket accept = C0943w7.this.f13860b.accept();
                    byte[] bArr = new byte[256];
                    int read = accept.getInputStream().read(bArr);
                    accept.close();
                    byte[] bArr2 = new byte[read];
                    System.arraycopy(bArr, 0, bArr2, 0, read);
                    C0943w7.a(C0943w7.this, new String(bArr2));
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.w7$b */
    /* loaded from: classes2.dex */
    class b implements InterfaceC0716mm<String> {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(String str) {
            CrashpadServiceHelper.setUpServiceHelper(str);
        }
    }

    public C0943w7(String str, String str2) {
        this(str, str2, B7.a(), new b());
    }

    C0943w7(String str, String str2, B7 b72, InterfaceC0716mm<String> interfaceC0716mm) {
        this.f13861c = false;
        this.f13865g = new LinkedList();
        this.f13866h = new a();
        this.f13859a = str;
        this.f13864f = str2;
        this.f13862d = b72;
        this.f13863e = interfaceC0716mm;
    }

    public void a(InterfaceC0716mm<String> interfaceC0716mm) {
        synchronized (this) {
            this.f13865g.add(interfaceC0716mm);
        }
        if (this.f13861c || this.f13864f == null) {
            return;
        }
        synchronized (this) {
            if (!this.f13861c) {
                try {
                    if (this.f13862d.b()) {
                        this.f13860b = new LocalServerSocket(this.f13859a);
                        this.f13861c = true;
                        this.f13863e.b(this.f13864f);
                        this.f13866h.start();
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public synchronized void b(InterfaceC0716mm<String> interfaceC0716mm) {
        this.f13865g.remove(interfaceC0716mm);
    }

    static void a(C0943w7 c0943w7, String str) {
        synchronized (c0943w7) {
            for (InterfaceC0716mm<String> interfaceC0716mm : c0943w7.f13865g) {
                interfaceC0716mm.b(str);
            }
        }
    }
}
