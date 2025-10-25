package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.i;
import d0.t;
/* loaded from: classes.dex */
public abstract class g extends Activity implements androidx.lifecycle.m, t.a {
    private final r.i extraDataMap = new r.i(0, 1, null);
    private final androidx.lifecycle.n lifecycleRegistry = new androidx.lifecycle.n(this);

    /* loaded from: classes.dex */
    public static class a {
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0046, code lost:
        if (r4.equals("--list-dumpables") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x004f, code lost:
        if (r4.equals("--dump-dumpable") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0056, code lost:
        if (android.os.Build.VERSION.SDK_INT < 33) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x005a, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:?, code lost:
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean a(java.lang.String[] r4) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            if (r4 == 0) goto Lf
            int r2 = r4.length
            if (r2 != 0) goto L9
            r2 = r0
            goto La
        L9:
            r2 = r1
        La:
            if (r2 == 0) goto Ld
            goto Lf
        Ld:
            r2 = r1
            goto L10
        Lf:
            r2 = r0
        L10:
            if (r2 != 0) goto L6d
            r4 = r4[r1]
            int r2 = r4.hashCode()
            switch(r2) {
                case -645125871: goto L5b;
                case 100470631: goto L49;
                case 472614934: goto L40;
                case 1159329357: goto L2e;
                case 1455016274: goto L1c;
                default: goto L1b;
            }
        L1b:
            goto L6d
        L1c:
            java.lang.String r2 = "--autofill"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L25
            goto L6d
        L25:
            int r4 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r4 < r2) goto L2c
            goto L2d
        L2c:
            r0 = r1
        L2d:
            return r0
        L2e:
            java.lang.String r2 = "--contentcapture"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L37
            goto L6d
        L37:
            int r4 = android.os.Build.VERSION.SDK_INT
            r2 = 29
            if (r4 < r2) goto L3e
            goto L3f
        L3e:
            r0 = r1
        L3f:
            return r0
        L40:
            java.lang.String r2 = "--list-dumpables"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L52
            goto L6d
        L49:
            java.lang.String r2 = "--dump-dumpable"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L52
            goto L6d
        L52:
            int r4 = android.os.Build.VERSION.SDK_INT
            r2 = 33
            if (r4 < r2) goto L59
            goto L5a
        L59:
            r0 = r1
        L5a:
            return r0
        L5b:
            java.lang.String r2 = "--translation"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L64
            goto L6d
        L64:
            int r4 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r4 < r2) goto L6b
            goto L6c
        L6b:
            r0 = r1
        L6c:
            return r0
        L6d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.g.a(java.lang.String[]):boolean");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        kotlin.jvm.internal.m.e(event, "event");
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView, "window.decorView");
        if (d0.t.d(decorView, event)) {
            return true;
        }
        return d0.t.e(this, decorView, this, event);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent event) {
        kotlin.jvm.internal.m.e(event, "event");
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView, "window.decorView");
        if (d0.t.d(decorView, event)) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(event);
    }

    public <T extends a> T getExtraData(Class<T> extraDataClass) {
        kotlin.jvm.internal.m.e(extraDataClass, "extraDataClass");
        android.support.v4.media.session.b.a(this.extraDataMap.get(extraDataClass));
        return null;
    }

    public androidx.lifecycle.i getLifecycle() {
        return this.lifecycleRegistry;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        androidx.lifecycle.x.f3023b.c(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.m.e(outState, "outState");
        this.lifecycleRegistry.m(i.b.CREATED);
        super.onSaveInstanceState(outState);
    }

    public void putExtraData(a extraData) {
        kotlin.jvm.internal.m.e(extraData, "extraData");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean shouldDumpInternalState(String[] strArr) {
        return !a(strArr);
    }

    @Override // d0.t.a
    public boolean superDispatchKeyEvent(KeyEvent event) {
        kotlin.jvm.internal.m.e(event, "event");
        return super.dispatchKeyEvent(event);
    }
}
