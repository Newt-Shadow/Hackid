package com.google.android.gms.ads.identifier;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes.dex */
final class a extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Map f5779a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdvertisingIdClient advertisingIdClient, Map map) {
        this.f5779a = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        Map map = this.f5779a;
        for (String str : map.keySet()) {
            buildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        g.a(buildUpon.build().toString());
    }
}
