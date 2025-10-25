package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class a0 extends w {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f2556a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f2557b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f2558c;

    /* renamed from: d  reason: collision with root package name */
    private final int f2559d;

    /* renamed from: e  reason: collision with root package name */
    private final i0 f2560e;

    public a0(Activity activity, Context context, Handler handler, int i10) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(handler, "handler");
        this.f2556a = activity;
        this.f2557b = context;
        this.f2558c = handler;
        this.f2559d = i10;
        this.f2560e = new j0();
    }

    public final Activity e() {
        return this.f2556a;
    }

    public final Context f() {
        return this.f2557b;
    }

    public final i0 g() {
        return this.f2560e;
    }

    public final Handler h() {
        return this.f2558c;
    }

    public abstract void i(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract Object j();

    public abstract LayoutInflater k();

    public void l(p fragment, String[] permissions, int i10) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(permissions, "permissions");
    }

    public abstract boolean m(String str);

    public void n(p fragment, Intent intent, int i10, Bundle bundle) {
        boolean z10;
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(intent, "intent");
        if (i10 == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            androidx.core.content.a.n(this.f2557b, intent, bundle);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host".toString());
    }

    public void o(p fragment, IntentSender intent, int i10, Intent intent2, int i11, int i12, int i13, Bundle bundle) {
        boolean z10;
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(intent, "intent");
        if (i10 == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            Activity activity = this.f2556a;
            if (activity != null) {
                androidx.core.app.b.A(activity, intent, i10, intent2, i11, i12, i13, bundle);
                return;
            }
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host".toString());
        }
        throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host".toString());
    }

    public abstract void p();

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a0(u activity) {
        this(activity, activity, new Handler(), 0);
        kotlin.jvm.internal.m.e(activity, "activity");
    }
}
