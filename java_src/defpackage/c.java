package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import yc.n;
/* renamed from: c  reason: default package */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    public static final a f4782b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f4783a;

    /* renamed from: c$a */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a(List list) {
            m.e(list, "list");
            return new c((Boolean) list.get(0));
        }
    }

    public c(Boolean bool) {
        this.f4783a = bool;
    }

    public final List a() {
        List b10;
        b10 = n.b(this.f4783a);
        return b10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && m.a(this.f4783a, ((c) obj).f4783a);
    }

    public int hashCode() {
        Boolean bool = this.f4783a;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public String toString() {
        Boolean bool = this.f4783a;
        return "IsEnabledMessage(enabled=" + bool + ")";
    }
}
