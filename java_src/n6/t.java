package n6;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes.dex */
public abstract class t {

    /* loaded from: classes.dex */
    static class a implements s, Serializable {

        /* renamed from: a  reason: collision with root package name */
        final s f26453a;

        /* renamed from: b  reason: collision with root package name */
        volatile transient boolean f26454b;

        /* renamed from: c  reason: collision with root package name */
        transient Object f26455c;

        a(s sVar) {
            this.f26453a = (s) m.i(sVar);
        }

        @Override // n6.s
        public Object get() {
            if (!this.f26454b) {
                synchronized (this) {
                    if (!this.f26454b) {
                        Object obj = this.f26453a.get();
                        this.f26455c = obj;
                        this.f26454b = true;
                        return obj;
                    }
                }
            }
            return j.a(this.f26455c);
        }

        public String toString() {
            Object obj;
            if (this.f26454b) {
                String valueOf = String.valueOf(this.f26455c);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 25);
                sb2.append("<supplier that returned ");
                sb2.append(valueOf);
                sb2.append(">");
                obj = sb2.toString();
            } else {
                obj = this.f26453a;
            }
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 19);
            sb3.append("Suppliers.memoize(");
            sb3.append(valueOf2);
            sb3.append(")");
            return sb3.toString();
        }
    }

    /* loaded from: classes.dex */
    static class b implements s {

        /* renamed from: a  reason: collision with root package name */
        volatile s f26456a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f26457b;

        /* renamed from: c  reason: collision with root package name */
        Object f26458c;

        b(s sVar) {
            this.f26456a = (s) m.i(sVar);
        }

        @Override // n6.s
        public Object get() {
            if (!this.f26457b) {
                synchronized (this) {
                    if (!this.f26457b) {
                        s sVar = this.f26456a;
                        Objects.requireNonNull(sVar);
                        Object obj = sVar.get();
                        this.f26458c = obj;
                        this.f26457b = true;
                        this.f26456a = null;
                        return obj;
                    }
                }
            }
            return j.a(this.f26458c);
        }

        public String toString() {
            Object obj = this.f26456a;
            if (obj == null) {
                String valueOf = String.valueOf(this.f26458c);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 25);
                sb2.append("<supplier that returned ");
                sb2.append(valueOf);
                sb2.append(">");
                obj = sb2.toString();
            }
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 19);
            sb3.append("Suppliers.memoize(");
            sb3.append(valueOf2);
            sb3.append(")");
            return sb3.toString();
        }
    }

    /* loaded from: classes.dex */
    private static class c implements s, Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Object f26459a;

        c(Object obj) {
            this.f26459a = obj;
        }

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return k.a(this.f26459a, ((c) obj).f26459a);
            }
            return false;
        }

        @Override // n6.s
        public Object get() {
            return this.f26459a;
        }

        public int hashCode() {
            return k.b(this.f26459a);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f26459a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 22);
            sb2.append("Suppliers.ofInstance(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static s a(s sVar) {
        if (!(sVar instanceof b) && !(sVar instanceof a)) {
            if (sVar instanceof Serializable) {
                return new a(sVar);
            }
            return new b(sVar);
        }
        return sVar;
    }

    public static s b(Object obj) {
        return new c(obj);
    }
}
