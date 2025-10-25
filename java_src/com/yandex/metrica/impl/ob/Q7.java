package com.yandex.metrica.impl.ob;

import android.content.Context;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Q7 implements InterfaceC0528f8 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11147a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11148b;

    /* renamed from: c  reason: collision with root package name */
    private final B0 f11149c;

    public Q7(Context context, String str, B0 b02) {
        this.f11147a = context;
        this.f11148b = str;
        this.f11149c = b02;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0528f8
    public void a(String str) {
        Map<String, Object> h10;
        Map<String, Object> c10;
        try {
            File a10 = this.f11149c.a(this.f11147a, this.f11148b);
            if (a10 != null) {
                gd.i.i(a10, str, null, 2, null);
            }
        } catch (FileNotFoundException unused) {
            M0 a11 = C0761oh.a();
            c10 = yc.g0.c(xc.q.a("fileName", this.f11148b));
            ((C0736nh) a11).reportEvent("vital_data_provider_write_file_not_found", c10);
        } catch (Throwable th) {
            M0 a12 = C0761oh.a();
            h10 = yc.h0.h(xc.q.a("fileName", this.f11148b), xc.q.a(Constants.EXCEPTION, kotlin.jvm.internal.d0.b(th.getClass()).b()));
            ((C0736nh) a12).reportEvent("vital_data_provider_write_exception", h10);
            M0 a13 = C0761oh.a();
            ((C0736nh) a13).reportError("Error during writing file with name " + this.f11148b, th);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0528f8
    public String c() {
        Map<String, Object> h10;
        Map<String, Object> c10;
        String g10;
        try {
            File a10 = this.f11149c.a(this.f11147a, this.f11148b);
            if (a10 != null) {
                g10 = gd.i.g(a10, null, 1, null);
                return g10;
            }
            return null;
        } catch (FileNotFoundException unused) {
            M0 a11 = C0761oh.a();
            c10 = yc.g0.c(xc.q.a("fileName", this.f11148b));
            ((C0736nh) a11).reportEvent("vital_data_provider_read_file_not_found", c10);
            return null;
        } catch (Throwable th) {
            M0 a12 = C0761oh.a();
            h10 = yc.h0.h(xc.q.a("fileName", this.f11148b), xc.q.a(Constants.EXCEPTION, kotlin.jvm.internal.d0.b(th.getClass()).b()));
            ((C0736nh) a12).reportEvent("vital_data_provider_read_exception", h10);
            M0 a13 = C0761oh.a();
            ((C0736nh) a13).reportError("Error during reading file with name " + this.f11148b, th);
            return null;
        }
    }
}
