package io.sentry.android.core.util;

import android.content.Context;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f22487a = null;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0192a f22488b;

    /* renamed from: io.sentry.android.core.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0192a {
        Object a(Context context);
    }

    public a(InterfaceC0192a interfaceC0192a) {
        this.f22488b = interfaceC0192a;
    }

    public Object a(Context context) {
        if (this.f22487a == null) {
            synchronized (this) {
                if (this.f22487a == null) {
                    this.f22487a = this.f22488b.a(context);
                }
            }
        }
        return this.f22487a;
    }
}
