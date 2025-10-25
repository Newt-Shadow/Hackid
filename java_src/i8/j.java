package i8;
/* loaded from: classes.dex */
public interface j {

    /* loaded from: classes.dex */
    public enum a {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f17346a;

        a(int i10) {
            this.f17346a = i10;
        }

        public int b() {
            return this.f17346a;
        }
    }

    a b(String str);
}
