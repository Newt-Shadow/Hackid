package f5;

import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import m6.Task;
/* loaded from: classes.dex */
public abstract class b extends e {

    /* renamed from: k  reason: collision with root package name */
    private static final a.g f15835k;

    /* renamed from: l  reason: collision with root package name */
    private static final a.AbstractC0097a f15836l;

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.android.gms.common.api.a f15837m;

    static {
        a.g gVar = new a.g();
        f15835k = gVar;
        c cVar = new c();
        f15836l = cVar;
        f15837m = new com.google.android.gms.common.api.a("SmsRetriever.API", cVar, gVar);
    }

    public b(Context context) {
        super(context, f15837m, a.d.f5879i0, e.a.f5890c);
    }

    public abstract Task A(String str);

    public abstract Task z();
}
