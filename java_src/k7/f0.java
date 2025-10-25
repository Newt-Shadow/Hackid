package k7;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
final class f0 implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Set f24809a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f24810b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f24811c;

    /* renamed from: d  reason: collision with root package name */
    private final Set f24812d;

    /* renamed from: e  reason: collision with root package name */
    private final Set f24813e;

    /* renamed from: f  reason: collision with root package name */
    private final Set f24814f;

    /* renamed from: g  reason: collision with root package name */
    private final d f24815g;

    /* loaded from: classes.dex */
    private static class a implements h8.c {

        /* renamed from: a  reason: collision with root package name */
        private final Set f24816a;

        /* renamed from: b  reason: collision with root package name */
        private final h8.c f24817b;

        public a(Set set, h8.c cVar) {
            this.f24816a = set;
            this.f24817b = cVar;
        }

        @Override // h8.c
        public void a(h8.a aVar) {
            if (this.f24816a.contains(aVar.b())) {
                this.f24817b.a(aVar);
                return;
            }
            throw new s(String.format("Attempting to publish an undeclared event %s.", aVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(c cVar, d dVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (q qVar : cVar.g()) {
            if (qVar.e()) {
                if (qVar.g()) {
                    hashSet4.add(qVar.c());
                } else {
                    hashSet.add(qVar.c());
                }
            } else if (qVar.d()) {
                hashSet3.add(qVar.c());
            } else if (qVar.g()) {
                hashSet5.add(qVar.c());
            } else {
                hashSet2.add(qVar.c());
            }
        }
        if (!cVar.k().isEmpty()) {
            hashSet.add(e0.b(h8.c.class));
        }
        this.f24809a = Collections.unmodifiableSet(hashSet);
        this.f24810b = Collections.unmodifiableSet(hashSet2);
        this.f24811c = Collections.unmodifiableSet(hashSet3);
        this.f24812d = Collections.unmodifiableSet(hashSet4);
        this.f24813e = Collections.unmodifiableSet(hashSet5);
        this.f24814f = cVar.k();
        this.f24815g = dVar;
    }

    @Override // k7.d
    public k8.b a(Class cls) {
        return e(e0.b(cls));
    }

    @Override // k7.d
    public Object b(e0 e0Var) {
        if (this.f24809a.contains(e0Var)) {
            return this.f24815g.b(e0Var);
        }
        throw new s(String.format("Attempting to request an undeclared dependency %s.", e0Var));
    }

    @Override // k7.d
    public Set c(e0 e0Var) {
        if (this.f24812d.contains(e0Var)) {
            return this.f24815g.c(e0Var);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Set<%s>.", e0Var));
    }

    @Override // k7.d
    public k8.b d(e0 e0Var) {
        if (this.f24813e.contains(e0Var)) {
            return this.f24815g.d(e0Var);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", e0Var));
    }

    @Override // k7.d
    public k8.b e(e0 e0Var) {
        if (this.f24810b.contains(e0Var)) {
            return this.f24815g.e(e0Var);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Provider<%s>.", e0Var));
    }

    @Override // k7.d
    public k8.a g(e0 e0Var) {
        if (this.f24811c.contains(e0Var)) {
            return this.f24815g.g(e0Var);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Deferred<%s>.", e0Var));
    }

    @Override // k7.d
    public Object get(Class cls) {
        if (this.f24809a.contains(e0.b(cls))) {
            Object obj = this.f24815g.get(cls);
            if (!cls.equals(h8.c.class)) {
                return obj;
            }
            return new a(this.f24814f, (h8.c) obj);
        }
        throw new s(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // k7.d
    public k8.a h(Class cls) {
        return g(e0.b(cls));
    }
}
