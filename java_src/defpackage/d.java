package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import yc.n;
/* renamed from: d  reason: default package */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static final a f14270b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f14271a;

    /* renamed from: d$a */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(List list) {
            m.e(list, "list");
            return new d((Boolean) list.get(0));
        }
    }

    public d(Boolean bool) {
        this.f14271a = bool;
    }

    public final Boolean a() {
        return this.f14271a;
    }

    public final List b() {
        List b10;
        b10 = n.b(this.f14271a);
        return b10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && m.a(this.f14271a, ((d) obj).f14271a);
    }

    public int hashCode() {
        Boolean bool = this.f14271a;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public String toString() {
        Boolean bool = this.f14271a;
        return "ToggleMessage(enable=" + bool + ")";
    }
}
