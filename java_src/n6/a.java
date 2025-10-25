package n6;
/* loaded from: classes.dex */
final class a extends l {

    /* renamed from: a  reason: collision with root package name */
    static final a f26413a = new a();

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l e() {
        return f26413a;
    }

    @Override // n6.l
    public Object b() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // n6.l
    public boolean c() {
        return false;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return 2040732332;
    }

    public String toString() {
        return "Optional.absent()";
    }
}
