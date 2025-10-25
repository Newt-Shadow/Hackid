package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.U1;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
/* renamed from: com.yandex.metrica.impl.ob.n6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0725n6 {

    /* renamed from: a  reason: collision with root package name */
    private final B0 f12969a;

    /* renamed from: b  reason: collision with root package name */
    private final C0700m6 f12970b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f12971c;

    /* renamed from: d  reason: collision with root package name */
    private final C0910um f12972d;

    public C0725n6(Context context) {
        this(context, new B0(), new C0700m6(), C0910um.a(context));
    }

    public void a(U1.f fVar) {
        PrintWriter printWriter;
        File a10 = this.f12969a.a(this.f12971c, "appmetrica_crashes");
        if (this.f12970b.a(a10)) {
            A3 a11 = fVar.a().a();
            String str = a11.g() + "-" + a11.h();
            C0862sm a12 = this.f12972d.a(str);
            try {
                a12.a();
                this.f12969a.getClass();
                printWriter = new PrintWriter(new BufferedOutputStream(new FileOutputStream(new File(a10, str))));
            } catch (Throwable unused) {
                printWriter = null;
            }
            try {
                printWriter.write(new Z6(fVar.b(), fVar.a(), fVar.c()).k());
                A2.a((Closeable) printWriter);
                a12.c();
            } catch (Throwable unused2) {
                A2.a((Closeable) printWriter);
                a12.c();
            }
        }
    }

    C0725n6(Context context, B0 b02, C0700m6 c0700m6, C0910um c0910um) {
        this.f12971c = context;
        this.f12969a = b02;
        this.f12970b = c0700m6;
        this.f12972d = c0910um;
    }
}
