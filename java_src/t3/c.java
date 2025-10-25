package t3;

import b3.x1;
import y3.h;
/* loaded from: classes.dex */
public interface c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f29847a = new a();

    /* loaded from: classes.dex */
    class a implements c {
        a() {
        }

        @Override // t3.c
        public b a(x1 x1Var) {
            String str = x1Var.f4514l;
            if (str != null) {
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals("application/vnd.dvb.ait")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals("application/x-icy")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals("application/id3")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals("application/x-emsg")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals("application/x-scte35")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        return new u3.b();
                    case 1:
                        return new x3.a();
                    case 2:
                        return new h();
                    case 3:
                        return new v3.b();
                    case 4:
                        return new a4.c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }

        @Override // t3.c
        public boolean b(x1 x1Var) {
            String str = x1Var.f4514l;
            if (!"application/id3".equals(str) && !"application/x-emsg".equals(str) && !"application/x-scte35".equals(str) && !"application/x-icy".equals(str) && !"application/vnd.dvb.ait".equals(str)) {
                return false;
            }
            return true;
        }
    }

    b a(x1 x1Var);

    boolean b(x1 x1Var);
}
