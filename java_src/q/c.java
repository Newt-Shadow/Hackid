package q;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.d;
import androidx.browser.customtabs.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import q.a;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f27930a;

    /* renamed from: c  reason: collision with root package name */
    private List f27932c;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f27933d;

    /* renamed from: b  reason: collision with root package name */
    private final d.C0021d f27931b = new d.C0021d();

    /* renamed from: e  reason: collision with root package name */
    private a f27934e = new a.C0286a();

    /* renamed from: f  reason: collision with root package name */
    private int f27935f = 0;

    public c(Uri uri) {
        this.f27930a = uri;
    }

    public b a(i iVar) {
        if (iVar != null) {
            this.f27931b.i(iVar);
            Intent intent = this.f27931b.b().f1780a;
            intent.setData(this.f27930a);
            intent.putExtra("android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY", true);
            if (this.f27932c != null) {
                intent.putExtra("android.support.customtabs.extra.ADDITIONAL_TRUSTED_ORIGINS", new ArrayList(this.f27932c));
            }
            Bundle bundle = this.f27933d;
            if (bundle != null) {
                intent.putExtra("androidx.browser.trusted.EXTRA_SPLASH_SCREEN_PARAMS", bundle);
            }
            List emptyList = Collections.emptyList();
            intent.putExtra("androidx.browser.trusted.extra.DISPLAY_MODE", this.f27934e.a());
            intent.putExtra("androidx.browser.trusted.extra.SCREEN_ORIENTATION", this.f27935f);
            return new b(intent, emptyList);
        }
        throw new NullPointerException("CustomTabsSession is required for launching a TWA");
    }

    public c b(List list) {
        this.f27932c = list;
        return this;
    }

    public c c(androidx.browser.customtabs.a aVar) {
        this.f27931b.e(aVar);
        return this;
    }

    public c d(a aVar) {
        this.f27934e = aVar;
        return this;
    }

    public c e(int i10) {
        this.f27935f = i10;
        return this;
    }
}
