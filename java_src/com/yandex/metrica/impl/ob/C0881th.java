package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
/* renamed from: com.yandex.metrica.impl.ob.th  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0881th implements CacheControlHttpsConnectionPerformer.Client {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0488di f13647a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ File f13648b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Eh f13649c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ C0905uh f13650d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0881th(C0905uh c0905uh, C0488di c0488di, File file, Eh eh) {
        this.f13650d = c0905uh;
        this.f13647a = c0488di;
        this.f13648b = file;
        this.f13649c = eh;
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public String getOldETag() {
        InterfaceC0786ph interfaceC0786ph;
        interfaceC0786ph = this.f13650d.f13728e;
        return interfaceC0786ph.b();
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onError() {
        C0905uh.a(this.f13650d, this.f13647a.f12252h);
        C0905uh.c(this.f13650d);
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onNotModified() {
        C0905uh.a(this.f13650d, this.f13647a.f12253i);
        C0905uh.c(this.f13650d);
        this.f13649c.a(this.f13648b);
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onResponse(String str, byte[] bArr) {
        InterfaceC0786ph interfaceC0786ph;
        FileOutputStream fileOutputStream;
        C0905uh.a(this.f13650d, this.f13647a.f12253i);
        C0905uh.c(this.f13650d);
        interfaceC0786ph = this.f13650d.f13728e;
        interfaceC0786ph.b(str);
        C0905uh c0905uh = this.f13650d;
        File file = this.f13648b;
        c0905uh.getClass();
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            fileOutputStream = null;
        }
        A2.a((Closeable) fileOutputStream);
        this.f13649c.a(this.f13648b);
    }
}
