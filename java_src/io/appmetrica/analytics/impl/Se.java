package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public final class Se implements InterfaceC1120dd {

    /* renamed from: a  reason: collision with root package name */
    public final Context f18933a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18934b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18935c;

    public Se(Context context, String str, String str2) {
        this.f18933a = context;
        this.f18934b = str;
        this.f18935c = str2;
    }

    public final Se a(Context context, String str, String str2) {
        return new Se(context, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Se) {
            Se se2 = (Se) obj;
            return kotlin.jvm.internal.m.a(this.f18933a, se2.f18933a) && kotlin.jvm.internal.m.a(this.f18934b, se2.f18934b) && kotlin.jvm.internal.m.a(this.f18935c, se2.f18935c);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f18934b.hashCode();
        return this.f18935c.hashCode() + ((hashCode + (this.f18933a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "PreferencesBasedModuleEntryPoint(context=" + this.f18933a + ", prefName=" + this.f18934b + ", prefValueName=" + this.f18935c + ')';
    }

    public static Se a(Se se2, Context context, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            context = se2.f18933a;
        }
        if ((i10 & 2) != 0) {
            str = se2.f18934b;
        }
        if ((i10 & 4) != 0) {
            str2 = se2.f18935c;
        }
        se2.getClass();
        return new Se(context, str, str2);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1120dd
    public final String a() {
        String string = this.f18933a.getSharedPreferences(this.f18934b, 0).getString(this.f18935c, "");
        return string == null ? "" : string;
    }
}
