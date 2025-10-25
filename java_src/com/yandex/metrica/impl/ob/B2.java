package com.yandex.metrica.impl.ob;

import android.app.WallpaperManager;
/* loaded from: classes2.dex */
final class B2<T, R> implements InterfaceC0766om<WallpaperManager, Integer> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f9748a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public B2(int i10) {
        this.f9748a = i10;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0766om
    public Integer a(WallpaperManager wallpaperManager) {
        return Integer.valueOf(wallpaperManager.getWallpaperId(this.f9748a));
    }
}
