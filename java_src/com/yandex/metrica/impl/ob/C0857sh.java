package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import dc.a;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.sh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0857sh implements a.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f13594a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ File f13595b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Eh f13596c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ C0488di f13597d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ C0905uh f13598e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0857sh(C0905uh c0905uh, String str, File file, Eh eh, C0488di c0488di) {
        this.f13598e = c0905uh;
        this.f13594a = str;
        this.f13595b = file;
        this.f13596c = eh;
        this.f13597d = c0488di;
    }

    @Override // dc.a.c
    public void onWaitFinished() {
        CacheControlHttpsConnectionPerformer cacheControlHttpsConnectionPerformer;
        cacheControlHttpsConnectionPerformer = this.f13598e.f13727d;
        String str = this.f13594a;
        C0905uh c0905uh = this.f13598e;
        File file = this.f13595b;
        Eh eh = this.f13596c;
        C0488di c0488di = this.f13597d;
        c0905uh.getClass();
        cacheControlHttpsConnectionPerformer.a(str, new C0881th(c0905uh, c0488di, file, eh));
    }
}
